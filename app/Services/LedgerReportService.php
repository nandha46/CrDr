<?php

namespace App\services;

use App\Models\v1\Acchead;
use App\Models\v1\Daybook;
use Illuminate\Support\Facades\DB;

class LedgerReportService {

    /**
     * Prepares ledger using given parameters
     * 
     * @param int $companyId
     * @param int $some
     * @return mixed Ledger
     */
    public static function prepareLedger ($cid, $accheads, $reportOrder, $fromDate, $toDate, $cutoff, $transactedOnly) {
        
        $ledger = Acchead::getLedger($cid, $accheads, $reportOrder, $fromDate, $toDate, $cutoff, $transactedOnly);

        $accs = Acchead::where('companyId', $cid)->where('accCode', '!=', 0)->get();

        $accs->map(function ($acc) use ($cid, $fromDate, $toDate) {
           $daybooks = Daybook::where('companyId', $cid)
                    ->where('acccode', $acc->accCode)
                    ->whereBetween('tDate', [$fromDate, $toDate])
                    ->orderBy('sno')
                    ->get();
            $daybooks->map(function ($daybook, $index) use ($acc) {
                if ($acc->drAmt == 0 && $acc->crAmt == 0){
                    $sum = 0.0 + ($daybook->crAmt - $daybook->drAmt);
                } elseif ($acc->drAmt == 0 && $acc->crAmt != 0) {
                    $sum = $acc->crAmt + $daybook->crAmt - $daybook->drAmt;
                } else {
                    $sum = $daybook->crAmt - $daybook->drAmt + $acc->drAmt;
                }

                return $daybook;
            });

            return $acc;

        });
        
        return $ledger;
    }
}