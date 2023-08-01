<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Daystock extends Model
{
    use HasFactory;

    protected $table = 'daystock';
    protected $fillable = [];

    protected function getDayStocks ($companyId, $fromDate, $toDate) {

        $daystocks = Daystock::where('companyId', $companyId)->whereBetween('cDate', [$fromDate, $toDate])->get();

        return $daystocks;
    }
}
