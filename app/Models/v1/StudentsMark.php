<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentsMark extends Model
{
    use HasFactory;

    protected $table = 'studentsmarks';

    protected $fillable = ['student_user_id', 'exam_id','correct_answers','total_marks', 'marks', 'attempt'];
    
    protected $attributes = [
        'status' => true,
    ];

    protected function getStudentsMarkByExam($exam_id){
        return $this->where('exam_id', $exam_id)->get();
    }

    protected function getAllExamsByStudent($student_user_id){
        return $this->where('student_user_id', $student_user_id)->get();
    }

    protected function insertExamResult($inArray){
        $student_mark = $this->create($inArray);

        return $student_mark;
    }

    protected function getAttempt($testid, $loggedUsr){

       $studentmarks = $this->where('exam_id', $testid)->where('student_user_id', $loggedUsr)->orderByDesc('attempt')->first();

       if ($studentmarks){
        return $studentmarks->attempt+1;
       }

       return 1;
    }

}
