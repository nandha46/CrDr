<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;

class Privilege extends Model{
   
    protected $fillable =['menuid','isedit','isview', 'userid', 'isstatus', 'created_at', 'updated_at'];

    protected function insertPrivilge($userid = '', $menuid = '', $isedit = 0, $isview = 0){

        $prvl = $this->create([
            'menuid'     =>  $menuid,
            'isedit'     =>  $isedit ? 1 : '0',
            'isview'     =>  $isview ? 1 : '0',
            'userid'     =>  $userid
        ]);

        return $prvl->id;
    }
    
    protected function deletePrivileges($userId){

        $this->where('userid', $userId)->delete();
    }
}
