<?php

namespace App\Models\v1;

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
}
