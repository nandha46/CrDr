<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Medium extends Model{

    protected $table = 'mediums';
    
    protected $fillable = ['mmId', 'mmName', 'mmIsStatus', 'created_at', 'updated_at'];

    protected function getMedium(){

        $medium =  $this->all();

        return $medium;
    }

}