<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Standard extends Model{

    protected $table = 'classes';
    
    protected $fillable = ['branchId', 'clssName', 'clssIsStatus', 'created_at', 'updated_at'];

    protected function getStandard(){

        $standard =  $this->all();

        return $standard;
    }

    protected function getActiveStandard(){

        $standard =  $this->where('clssIsStatus', 1)->get();

        return $standard;
    }

    protected function getOrgStandard($subOrg){

        $standard =  $this->where('branchId',$subOrg)->get();

        return $standard;
    }

    protected function insertStandard($standard = ''){

        $standard = $this->create([
            'clssName' =>  $standard,
            'clssIsStatus' => 1
        ]);

        return $standard->id;
    }

    protected function updateStandard($editId, $standard = ''){

        $upAray = [
            'clssName' =>  $standard,
        ];
        
        return  $this->where('clssId', $editId)->update($upAray);
    }

    protected function updateStatus($id = ''){

        if($id != ''){
 
             $standard = $this->where('clssId',$id)->first();
 
             if($standard){
 
                 $status = 0;
                 if($standard->clssIsStatus == 0) $status = 1;
                 $this->where('clssId',$id)->update(['clssIsStatus' => $status]);
                 return $status;
             }
         }
         return 'FALSE';
     }

}