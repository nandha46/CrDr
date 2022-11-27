<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class StaffDetail extends Model{

    protected $table = 'staff_details';
    
    protected $fillable = ['org_id', 'staff_id', 'dateOfHiring','yearsOfExp', 'staffType', 'designation', 'speciality','reporting_to', 'idCardNo', 'status', 'created_at', 'updated_at'];

    protected function getOrgStaffDetails($orgId = ''){
        return $this->where('org_id', $orgId)->orderby('staff_id', 'DESC')->get();
    }

    protected function insertOrgStaff($orgStfAry){

        $OrgStu = $this->create($orgStfAry);
        return $OrgStu->id;
    }

    protected function updateOrgStaff($staffid ,$orgStfAry){

        $OrgStu = $this->where('staff_id', $staffid)->update($orgStfAry);
        return $staffid;
    }

}