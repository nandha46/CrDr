<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Orgdetail extends Model{

    protected $table = 'orgdetails';
    
    protected $fillable = ['olid', 'olOrgId', 'olSubOrgId', 'olName', 'olAddressId', 'olContactId', 'olEmailId', 'olOrgClassType', 'created_at', 'updated_at'];

    protected function getOrgDetails(){

        $OrgDetails =  $this->all();

        return $OrgDetails;
    }

    protected function getOrgDetailsById($orgId){

        if($orgId != ''){       

            $orgDetails = $this->where('olid',$orgId)->first();

            if($orgDetails) return $orgDetails;
        }
        return false;
    }

}