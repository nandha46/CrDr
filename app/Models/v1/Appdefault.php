<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Appdefault extends Model{
    
    use HasFactory;

    protected $fillable = ['defName', 'defVersion', 'defBaseUrl' ,'defAdminUrl'];

    protected function getDetails(){

    	return $this->first();
    }
}
