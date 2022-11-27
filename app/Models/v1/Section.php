<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Section extends Model{

    protected $table = 'sections';
    
    protected $fillable = ['olid', 'olOrgId', 'olSubOrgId', 'olName', 'olAddressId', 'olContactId', 'olEmailId', 'olOrgClassType', 'created_at', 'updated_at'];

    protected function getSection(){

        $section =  $this->all();

        return $section;
    }

}