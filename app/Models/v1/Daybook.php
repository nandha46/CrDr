<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
}
