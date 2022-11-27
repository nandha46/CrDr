<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;
use Barryvdh\Debugbar\Facades\Debugbar;

class StaffEducation extends Model{

    protected $table = 'staffseducations';
    
    protected $fillable =['staff_id', 'qualification', 'status', 'created_at', 'updated_at'];

    protected function insertStaffEducation($inAry){
        $staffEdu =  $this->create($inAry);

        return $staffEdu->id;
    }

    protected function updateStaffEducation($staffEduId, $upAry){
        
        $staffEdu =  $this->where('id', $staffEduId)->update($upAry);

        return $staffEdu == 0??$staffEduId;
    }

    protected function getStaffEducationId ($staffid){
       $staffEdu = $this->where('staff_id', $staffid)->select('id')->get();
        Debugbar::info($staffEdu);
        return count($staffEdu)==0?array():$staffEdu; 
    }

    protected function deleteStaffEducation ($staffid){
       return $this->where('staff_id', $staffid)->delete();
    }
   
}
