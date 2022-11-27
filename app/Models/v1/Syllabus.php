<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Syllabus extends Model{

    protected $table = 'syllabuses';
    
    protected $fillable = ['syId', 'syName', 'syIsStatus', 'created_at', 'updated_at'];

    protected function getSyllabus(){

        $syllabus =  $this->all();

        return $syllabus;
    }

}