<?php

namespace App\services;

use App\Models\v1\Acchead;
use App\Models\v1\Company;
use App\Models\v1\Daybook;
use Barryvdh\Debugbar\Facades\Debugbar;
use DebugBar\DebugBarException;
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
        
        $accs = Acchead::where('companyId', $cid)->where('accCode', '!=', 0)->get();

        $accs->map(function ($acc) use ($cid, $fromDate, $toDate) {
        
           $openingBalance = Self::calculateOpeningBalance($cid, $acc->accCode, $fromDate, $acc->crAmt, $acc->drAmt);
           $acc->openingBalance = $openingBalance;
           $daybooks = Daybook::where('companyId', $cid)
                    ->where('acccode', $acc->accCode)
                    ->whereBetween('tDate', [$fromDate, $toDate])
                    ->orderBy('sno')
                    ->get();
            $balance = 0.0;
            $daybooks->map(function ($daybook, $index) use ($acc, &$balance) {
                if ($index == 0){
                    $balance = $acc->openingBalance;
                } 
                $balance = $balance + $daybook->drAmt - $daybook->crAmt;
                $daybook->total = $balance;
                return $daybook;
            });
            $acc->books = $daybooks;

            return $acc;

        });

        Debugbar::info($accs->toArray());
        
        return $accs;
    }

    public static function calculateOpeningBalance ($cid, $accCode, $fromDate, $drAmt, $crAmt) {
        $startDate = Company::find($cid)->fromDate;

        if ($startDate == $fromDate){
            if($drAmt == 0.0){
                return -1*$crAmt;
            } 
            return $drAmt;
        } else {
           $balance = Daybook::where('companyId', $cid)->whereBetween('tDate', [$startDate, $fromDate])
                    ->select(DB::raw('sum(crAmt)-sum(drAmt) as balance'))->first()->balance;
            
            $balance+$drAmt-$crAmt;
            return $balance;
        }

    }
}