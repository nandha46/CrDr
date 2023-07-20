<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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

    
}
