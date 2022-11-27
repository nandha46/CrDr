<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;

class StaffEducationDetails extends Model{

    protected $table = 'staffseduclgdetails';
    
    protected $fillable =['staff_edu_id', 'collegeName', 'passedYear', 'percentage', 'degree_class', 'status'];

    protected function insertStaffEduDetails($inStuEduDetailAry){
       
        $stfEduDetails = $this->create($inStuEduDetailAry);

        return $stfEduDetails->id;
    }

    protected function updateStaffEduDetails($stfEduId, $upStuEduDetailAry){
       
        $stfEduDetails = $this->where('staff_edu_id', $stfEduId)->update($upStuEduDetailAry);

        return $stfEduDetails->id;
    }

    protected function deleteStaffEduDetails ($stfEduDetailAry) {
        return $this->whereIn('staff_edu_id', $stfEduDetailAry)->delete();
    }
   
}
