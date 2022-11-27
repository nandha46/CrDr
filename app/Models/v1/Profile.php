<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model{
    
    protected $fillable =['userid','firstname', 'lastname', 'gender', 'email', 'emailverified', 'photo', 'dob', 'status', 'created_at', 'updated_at'];

    protected function insertProfile($user = '', $firstName = '', $lastName = '', $gender = '', $email = '', $dateOfBirth = ''){

        $profile = $this->create([
            'userid'        =>  $user,
            'firstname'     =>  $firstName,
            'lastname'      =>  $lastName,
            'gender'        =>  $gender,
            'email'         =>  $email,
            'dob'           =>  $dateOfBirth
        ]);

        return $profile->id;
    }

    protected function deleteProfileById($userId){

        $this->where('userid', $userId)->delete();
    }

}