<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class CloseBl extends Model
{
    use HasFactory;

    protected $table = 'closeBl';
    protected $fillable = [];

    protected function getDaybookCloseBalUnion ($fromDate, $toDate, $companyId) {
        $daybooks = Daybook::where('daybooks.companyId', $companyId)->whereBetween('daybooks.tDate', [$fromDate, $toDate])
                        ->leftJoin('acchead', 'daybooks.acccode', 'acchead.accCode')
                        ->select('daybooks.sno', 'daybooks.tDate', 'daybooks.narration', 'daybooks.crAmt', 'daybooks.drAmt', 'daybooks.stkValue','acchead.shortName', DB::raw('null as closeBal'));

        $maxDateCloseBal = Daybook::where('companyId', $companyId)->max('tDate');
        
        $closeBals = Closebl::where('companyId', $companyId)->whereBetween('cDate', [$fromDate, $maxDateCloseBal])
                        ->select(DB::raw('null as sno'), 'closeBl.cDate as tDate', DB::raw('null as narration'), 'closeBl.crTot as crAmt', 'closeBl.drTot as drAmt', DB::raw('null as stkValue'), DB::raw('null as shortName'), 'closeBal')
                        ->union($daybooks)
                        ->orderBy('tDate')->orderBy('sno')
                        ->get();

        // $union = $daybooks->union($daybooks);

        return $closeBals;
    }
}
