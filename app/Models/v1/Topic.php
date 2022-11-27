<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Topic extends Model{

    protected $table = 'topics';
    
    protected $fillable = ['name', 'description', 'videoid', 'otherlinks', 'onlinetestid', 'imageurl', 'mediumid', 'standardid', 'subjectid', 'syllabusid',	'lessonid',	'status', 'created_at', 'updated_at'];

    protected function getTopic(){

        $topic =  $this->all();

        return $topic;
    }

    protected function getTopicById($id){

        return DB::table('view_topics')->where('id', $id)->first();
    }

    protected function getTopicsView(){
        
       $topics = DB::table('view_topics')->get();

       if($topics){
            return $topics;
       }

       return false;
    }

    protected function InsertTopic($inAry){
        
        $topic = $this->create($inAry);

        return $this->getTopicById($topic->id);

    }

    protected function UpdateTopic($editid, $inAry){

        $topic = $this->where('id', $editid)->update($inAry);

        return $this->getTopicById($editid);

    }
    
    protected function getTopicBySubStandard($subjId, $standardId, $mediumId) {
        
        return $this->where('mediumid', $mediumId)
                    ->where('standardid', $standardId)
                    ->where('subjectid', $subjId)
                    ->where('status', 1)
                    ->get();
    }

    protected function getTopicByLesson($lessonId) {
        
        return $this->where('lessonid', $lessonId)->get();
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