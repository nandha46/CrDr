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
        $total = Daybook::where('companyId', '=', $cid)->whereBetween('tDate', [$fromDate, $toDate])->groupBy('acccode')
                    ->select('sno', 'companyId', 'tDate', 'acccode', DB::raw('sum(crAmt) as crTotal'), DB::raw('sum(drAmt) as drTotal'))
                    ->get();

        return $total;
    }
}
