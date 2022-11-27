<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Orgstudent extends Model{

    protected $table = 'orgstudents';
    
    protected $fillable = ['orstId', 'orstOrgMasterId', 'orstStuMasterId', 'orstIsStatus'];

    protected function getOrgStuDetails($orgId = ''){
        // Changed to ordered by "orstStuMasterId" to fix duplicate username creation when Adding student
        // return $this->where('orstOrgMasterId', $orgId)->orderby('orstStuMasterId', 'DESC')->get();
        return $this->orderby('orstStuMasterId', 'DESC')->get();
    }

    protected function insertOrgStudent($organization = '', $student = ''){

        $OrgStu =   $this->create([
            'orstOrgMasterId' => $organization,
            'orstStuMasterId' => $student
        ]);
        return $OrgStu->id;
    }

    protected function updateOrgStudent($organization = '', $student){

        $upAray = [
            'orstOrgMasterId' => $organization
        ];

        $this->where('orstStuMasterId', $student)->update($upAray);
        
        $record = Orgstudent::getOrgStudentByStuId($student);

        return $record->orstId;
    }

    protected function getOrgStudentByStuId($id){

        return $this->where('orstStuMasterId', $id)->first();
    
    }

    protected function getUserid($stu_ids){
        return $this->whereIn('orstStuMasterId', $stu_ids)->select('orstId');
    }

}