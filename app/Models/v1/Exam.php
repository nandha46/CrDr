<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Exam extends Model{

    protected $table = 'exams';
    
    protected $fillable = ['subOrgId', 'exam_type', 'name', 'date', 'start_time', 'end_time', 'passing_marks', 'isCompleted', 'status', 'created_at', 'updated_at'];

    protected function getExams($branchId){

        $exam =  $this->where('subOrgId', $branchId)->get();

        return $exam;
    }

    protected function getExamsById($id){

        return $this->where('id', $id)->first();
    }

    protected function getOfflineExams($branchId) {
        return $this->where('subOrgId', $branchId)->where('exam_type', 2)->where('status', 1)->get();
    }

    protected function insertExam($inAry){

        $inAry['status'] = 0;
        
        $exam = $this->create($inAry);

        return $this->getExamsById($exam->id);

    }

    protected function updateExam($editid, $inAry){

        $exam = $this->where('id', $editid)->update($inAry);

        return $this->getExamsById($editid);

    }

    protected function getTimeByExam($exam){
        
        return $this->where('id', $exam)->first();
    }

    protected function updateStatus($id = ''){

        if($id != ''){
 
             $student = $this->where('id',$id)->first();
 
             if($student){
 
                 $status = 0;
                 if($student->status == 0) $status = 1;
                 $this->where('id',$id)->update(['status' => $status]);
                 return $status;
             }
         }
         return 'FALSE';
     }

}