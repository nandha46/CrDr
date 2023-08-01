<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Acchead extends Model
{
    use HasFactory;

    protected $table = 'acchead';

    protected $fillable = [];

    public function daybooks () {
        return $this->hasMany(Daybook::class, 'acccode', 'id');
    }

    protected function getAccHeades($cid){
        $accheads = Acchead::where('companyId', $cid)->orderBy('sno')->get();

        return $accheads;
    }
    
    protected function getTradingPnlAccs($cid){
        $accheads = Acchead::where('companyId', $cid)->whereIn('orderCode', [3,4,5,6])->orderBy('sno')->get();
        return $accheads;
    }
    
    protected function getBalanceSheetAccs($cid){
        $accheads = Acchead::where('companyId', $cid)->whereIn('orderCode', [1,2])->orderBy('sno')->get();
        return $accheads;
    }

    protected function getLedger($cid, $accheads, $reportOrder, $fromDate, $toDate, $cutoff, $transactedOnly){
        
        $accs = Acchead::where('companyId', $cid)->where('accCode', '!=', 0)
                    ->select(DB::raw('null as tDate'), 'accName', 'drAmt', 'crAmt', 'sno as asno', DB::raw('0 as sno'), 'acccode');

        $daybooks = Daybook::where('companyId', $cid)->whereBetween('tDate', [$fromDate, $toDate])
                    ->select('tDate','narration as accName', 'drAmt', 'crAmt', DB::raw('99999 as asno'), 'sno', 'accCode as acccode')
                    ->union($accs)
                    ->orderBy('acccode')
                    ->orderBy('sno')
                    // ->orderBy('asno')
                    ->get();

        return $daybooks;

    }

    protected function getTrialAccHeads ($cid, $reportOrder, $toDate, $level, $transactedOnly) {
        $accs = Acchead::where('companyId', $cid)->where('accCode', '!=', 0)
                    ->get();

        return $accs;
    }

    
}
