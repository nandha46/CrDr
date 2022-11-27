<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Question extends Model{

    protected $table = 'onlinetests';
    
    protected $fillable = ['question', 'topicid', 'questiontype', 'choice',	'answer', 'marks','difficulty', 'status', 'created_at', 'updated_at'];

    protected function getQuestions(){

        $questions =  $this->all();

        return $questions;
    }

    protected function getAllQuestionsView(){

        $questions =  DB::table('view_onlinetests')->get();

        return $questions;
    }

    protected function getAllQuestionsPagedView(){

        $questions =  DB::table('view_onlinetests')->paginate(5);

        return $questions;
    }

    protected function InsertQuestion($inAry){
        
        $topic = $this->create($inAry);

        return $this->getQuestionById($topic->id);

    }

    protected function getQuestionById($id){

        return DB::table('view_onlinetests')->where('id', $id)->first();
    }

    protected function UpdateQuestion($editid, $inAry){

        $topic = $this->where('id', $editid)->update($inAry);

        return $this->getQuestionById($editid);

    }

    protected function getQuestionCountByTopic($topicid){
        $result = DB::table('view_onlinetests')->select(DB::raw('topicid, topicname, difficulty, count(topicid) as count'))
                        ->where('topicid',$topicid)->groupBy('topicname')->groupBy('difficulty')->get();

            return $result;
    }

    protected function paginateQuestionsByTopic($topicid){
        
       return DB::table('view_onlinetests')->where('topicid',$topicid)->paginate(5);
    
    }

    protected function paginateQuestionsByTopicOf10($topicid){

        return DB::table('view_onlinetests')->where('topicid',$topicid)->paginate(8);

    }

    protected function allQuestionsByTopic($topicid){
        
        return DB::table('view_onlinetests')->where('topicid',$topicid)->get();
     
     }

     protected function getQuestionsByExamPaged($quesArray){

        $questions = $this->whereIn('id', $quesArray)->paginate(5);
     
        return $questions;
    }

    protected function getQuestionsByExam($quesArray){

        return $this->whereIn('id', $quesArray)->get();
     
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