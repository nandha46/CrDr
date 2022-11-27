<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Subject extends Model{

    protected $table = 'subjects';
    
    protected $fillable =['subjId ', 'subjName', 'standardid','subject_order', 'subject_logo', 'subjIsStatus'];
   
    protected function getSubject(){

        $subject =  $this->all();

        return $subject;
    }
    
    protected function getActiveSubjects(){

        $subject =  $this->where('subjIsStatus', 1)->get();

        return $subject;
    }
    
    protected function getSubjectsByStd($stdid){

        return $this->where('standardid', $stdid)->orderBy('subject_order')->get();
    
    }

    protected function getSubjectById($id = ''){
        
        if($id != ''){       

            $subject = $this->where('subjId',$id)->first();

            if($subject) return $subject;
        }
        return false;       
    }   

    protected function insertSubject($medium = '', $subjectNm = ''){

        $subject = $this->create([
            
            'subjName' =>  $subjectNm,
            'subjMediumId' =>  $medium,
            'subjIsStatus' => 1
        ]);

        return $subject->id;
    }

    protected function updateSubject($editId, $medium = '', $subjectNm = ''){

        $upAray = [
            'subjName' =>  $subjectNm,
            'subjMediumId' =>  $medium,
        ];
        
        return  $this->where('subjId', $editId)->update($upAray);
    }

    protected function getOnlinetestById($id){

        return DB::table('view_subjects')->where('id', $id)->first();
    }

    protected function updateStatus($id = ''){

        if($id != ''){
 
             $student = $this->where('subjId',$id)->first();
 
             if($student){
 
                 $status = 0;
                 if($student->subjIsStatus == 0) $status = 1;
                 $this->where('subjId',$id)->update(['subjIsStatus' => $status]);
                 return $status;
             }
         }
         return 'FALSE';
     }

}
