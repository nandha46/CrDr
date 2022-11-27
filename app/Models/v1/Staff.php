<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;

class Staff extends Model{

    protected $table = 'staffs';
    
    protected $fillable =['stffId', 'stffOrgnId', 'stffUserId', 'stffFirstName', 'stffLastName', 'stffGender', 'stffDOB', 'stffPlaceOfBirth','stffOfficalEmailId','stffAddressId','stffPersonalContactId', 'stffIsStatus', 'created_at', 'updated_at'];
   

    protected function getAllStaffs(){
        return $this->all();
    }

    protected function getStaffById($id = ''){
        
        if($id != ''){       

            $staff = $this->where('stffId',$id)->first();

            if($staff) return $staff;
        }
        return false;       
    }   
    
    protected function insertStaff($inStfAry){

        $staff = $this->create($inStfAry);

        return $staff;
    }

    protected function UpdateStaff($staffId, $firstname = '', $lastname = '', $gender = '', $dob = '', $username = '', $password = ''){

        $upAray = [
            'stffFirstName' =>  $firstname,
            'stffLastName' =>  $lastname,
            'stffGender' =>  $gender,
            'stffDOB' =>  date('Y-m-d', strtotime($dob))
        ];

        if($password !== 'null' && $password !== '') $upAray['password'] = md5($password);
        
        $this->where('stffId', $staffId)->update($upAray);

        return Staff::getStaffById($staffId);
    }

    protected function updateStatus($id = ''){

       if($id != ''){

            $staff = $this->where('stffId',$id)->first();

            if($staff){

                $status = 0;
                if($staff->stffIsStatus == 0) $status = 1;
                $this->where('stffId',$id)->update(['stffIsStatus' => $status]);
                return $status;
            }
        }
        return 'FALSE';
    }
}
