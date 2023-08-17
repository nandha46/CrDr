<?php

namespace App\Models\v1;

use Barryvdh\Debugbar\Facades\Debugbar;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Daybook extends Model
{
    use HasFactory;

    protected $table = 'daybooks';

    protected $fillable = [];

    /**
     * 
     * Returns daybooks between two given dates and company id
     * @param string $fromDate
     * @param string $todate 
     * @param int $companyId
     * 
     */
    protected static function getDaybookReport ($fromDate, $toDate, $companyId) {
        return Daybook::where('companyId', $companyId)->whereBetween('tDate', [$fromDate, $toDate])->orderBy('tDate')->orderBy('sno')->get();
    }

    public function acchead(){
        return $this->belongsTo(Acchead::class, 'acccode', 'accCode')->withDefault([
            'shortName' => ''
        ]);
    }

    protected function getTotalBalByAccHead ($cid, $fromDate, $toDate) {
        $total = Acchead::where('daybooks.companyId', '=', $cid)
                    ->where('acchead.companyId', '=', $cid)
                    ->whereBetween('daybooks.tDate', [$fromDate, $toDate])
                    ->leftJoin('daybooks', 'daybooks.acccode', '=', 'acchead.accCode')
                    ->select('daybooks.companyId', 'daybooks.tDate', 'daybooks.acccode', 
                        DB::raw('sum(daybooks.crAmt) as crTotal'), DB::raw('sum(daybooks.drAmt) as drTotal'), 
                        'acchead.accName', 'acchead.sno', 'acchead.level1', 'acchead.orderCode', 'acchead.crAmt', 'acchead.drAmt')
                    ->groupBy('daybooks.acccode')
                    ->orderBy('acchead.sno');

        $acchead = Acchead::where('companyId', '=', $cid)->where('accCode', '=', 0)
                    ->union($total)
                    ->select(DB::raw('0 as companyId'), DB::raw('null as tDate'), 'accCode as acccode', DB::raw('null as crTotal'), 
                    DB::raw('null as drTotal'), 'accName', 'sno', 'level1', 'orderCode', 'crAmt', 'drAmt')
                    ->orderBy('sno')                   
                    ->get();

        return $acchead;
    }

    /**
     * Get Trial Balance report
     * 
     * @param Int $cid
     * @param DateTime $fromDate From date of the company Year 
     * @param DateTime $toDate To date of the company Year
     * @return Collection $trialBalance Returns the complte collection of trial balance  
     */
    protected function getTrialBalances ($cid, $fromDate, $toDate) {
        $accheads = Acchead::where('companyId', '=', $cid)
                    ->where('acCcode', '!=', 0)
                    ->orderBy('sno')
                    ->get();

        $accheads->each(function($acc){
           $total = Daybook::where('acccode', $acc->accCode)
                    ->where('companyId', $acc->companyId)
                    ->select(DB::raw('sum(daybooks.crAmt) as crTotal'), DB::raw('sum(daybooks.drAmt) as drTotal'))
                    ->groupBy('acccode')
                    ->first();
            if ($total == null){
                if ($acc->drAmt == 0 && $acc->crAmt == 0){
                    
                }
                $acc->crTotal = 0.0;
                $acc->drTotal = 0.0;
            } else {
                $acc->crTotal = $total->crTotal;
                $acc->drTotal = $total->drTotal;
            }
            // Debugbar::info($total->toArray());
        });

        Debugbar::info($accheads->toArray());
    }
}
