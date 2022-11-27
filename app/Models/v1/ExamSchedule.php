<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class ExamSchedule extends Model{

    protected $table = 'exam_schedules';
    
    protected $fillable = ['examid','no_of_questions','medium_id','standard_id', 'subject_id', 'question_ids', 'status', 'created_at', 'updated_at'];

    protected function getSetQuestions($branchId){

        $q_sets =  $this->where('subOrgId', $branchId)->get();

        return $q_sets;
    }

    protected function getSetQuestionsById($id){

        return $this->where('id', $id)->first();
    }

    protected function getSetQuestionsByExamId($examid){

        return $this->where('examid', $examid)->first();
    }

    protected function insertSetQuestions($massInArr){
        
        $q_sets = $this->create($massInArr);

        return $this->getSetQuestionsById($q_sets->id);

    }

    protected function UpdateSetQuestions($editid, $inAry){

        $q_sets = $this->where('id', $editid)->update($inAry);

        return $this->getSetQuestionsById($editid);

    }

}