<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;

class Family extends Model{

    protected $table = 'family';

    protected $fillable =['userid',	'father_name', 'mother_name', 'guardian_name','contact_id', 'address_id', 'email_id','status'];

    protected function getFamilyByUserId($userid = ''){
       
        return $this->where('userid', $userid)->first();
    }

    protected function insertFamily($uid, $fatherName, $motherName, $guardianName, $contactId, $addressId, $emailId){

        if($guardianName == 'null'){
            $guardianName = null;
        }

        $family =   $this->create([
            'userid' => $uid,
            'father_name' => $fatherName,
            'mother_name' => $motherName,
            'guardian_name' => $guardianName,
            'contact_id' => $contactId,
            'address_id' => $addressId,
            'email_id' => $emailId,
        ]);

        return $family->id;
    }

    protected function updateFamily($uid, $fatherName, $motherName, $guardianName ){

        if($guardianName == 'null' || $guardianName == ''){
            $guardianName = null;
        }

        $upAray = [
            'father_name' => $fatherName,
            'mother_name' => $motherName,
            'guardian_name' => $guardianName,
        ];

       $family = $this->where('userid', $uid)->update($upAray);
       return $family;
    }
}
