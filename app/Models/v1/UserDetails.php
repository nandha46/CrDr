<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;

class UserDetails extends Model{

    protected $table = 'user_details';
    
    protected $fillable =['userid','firstname', 'lastname', 'gender','years_of_exp','contact_id','address_id', 'email_id', 'date_of_hiring', 'dob','proof_type', 'proof_no', 'proof_expiry', 'proof_file'];

    protected function getUserDetailsByUID($userid){

        return $this->where('userid', $userid)->first();
    }
    
    protected function insertUserDetails($inAry){

        $userdetail = $this->create($inAry);

        return $userdetail->id;
    }

    protected function updateUserDetails($userid, $upAry){

        $userdetail = $this->where('userid', $userid)->update($upAry);

        return $userdetail;
    }

    protected function deleteUserDetailById($userId){

       return $this->where('userid', $userId)->delete();
    }

    protected function updateUserproof($userid, $file){
       return $this->where('userid', $userid)->update(['proof_file' => $file]);
    }

}