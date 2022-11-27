<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;

class Student extends Model{

    protected $table = 'students';
    
    protected $fillable =['stuUserId', 'stuFirstName', 'stuLastName', 'stuGender', 'stuDOB', 'stuUserName', 'stuPassword', 'stuIsStatus', 'created_at', 'updated_at'];
   
    protected function getStudentById($id = ''){
        
        if($id != ''){       

            $student = $this->where('stuId',$id)->first();

            if($student) return $student;
        }
        return false;       
    }
    
    protected function getStudentByUsrId($id = ''){
        
        if($id != ''){       

            $student = $this->where('stuUserId',$id)->first();

            if($student) return $student;
        }
        return false;       
    }
    
    protected function getUseridByStuId($stuId = ''){
        
        if($stuId != ''){       

            $student = $this->where('stuId',$stuId)->first();

            if($student) return $student->stuUserId;
        }
        return false;       
    }
    
    protected function insertStudent($user = '', $firstname = '', $lastname = '', $gender = '', $dob = '', $username = '', $password = ''){

        $password = md5($password);

        $student = $this->create([
            'stuFirstName' =>  $firstname,
            'stuLastName' =>  $lastname,
            'stuGender' =>  $gender,
            'stuDOB' =>  date('Y-m-d', strtotime($dob)),
            'stuUserId' =>  $user
        ]);

        return $student->id;
    }

    protected function UpdateStudent($studentId, $firstname = '', $lastname = '', $gender = '', $dob = ''){

        $upAray = [
            'stuFirstName' =>  $firstname,
            'stuLastName' =>  $lastname,
            'stuGender' =>  $gender,
            'stuDOB' =>  date('Y-m-d', strtotime($dob))
        ];
        
        $this->where('stuId', $studentId)->update($upAray);
        return $studentId;
    }

    protected function updateStatus($id = ''){

       if($id != ''){

            $student = $this->where('stuId',$id)->first();

            if($student){

                $status = 0;
                if($student->stuIsStatus == 0) $status = 1;
                $this->where('stuId',$id)->update(['stuIsStatus' => $status]);
                return $status;
            }
        }
        return 'FALSE';
    }
}
