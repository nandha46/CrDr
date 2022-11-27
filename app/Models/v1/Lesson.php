<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;

class Lesson extends Model{

    protected $table = 'lessons';
    
    protected $fillable =['lnId ', 'lnClsMasterId', 'lnSubMasterId', 'lnMedMasterId', 'lnSyMasterId', 'lnLessonName', 'lnLessonOrder', 'lnIsStatus', 'created_at', 'updated_at'];
   
    protected function getLessonById($id = ''){
        
        if($id != ''){       

            $lesson = $this->where('lnId',$id)->first();

            if($lesson) return $lesson;
        }
        return false;       
    }   
    
    protected function insertLesson($syllabus = '', $medium = '', $standard = '', $subjectNm = '', $lessonname = '', $lessonOrder = ''){

        $lesson = $this->create([
            'lnClsMasterId' =>  $standard,
            'lnSubMasterId' =>  $subjectNm,
            'lnMedMasterId' =>  $medium,
            'lnSyMasterId' =>  $syllabus,
            'lnLessonName' =>  $lessonname,
            'lnLessonOrder' =>  $lessonOrder
        ]);

        return $lesson->id;
    }

    protected function UpdateLesson($lessonId, $syllabus = '', $medium = '', $standard = '', $subjectNm = '', $lessonname = '', $lessonOrder = ''){

        $upAray = [
            'lnClsMasterId' =>  $standard,
            'lnSubMasterId' =>  $subjectNm,
            'lnMedMasterId' =>  $medium,
            'lnSyMasterId' =>  $syllabus,
            'lnLessonName' =>  $lessonname,
            'lnLessonOrder' =>  $lessonOrder
        ];
        
        $this->where('lnId', $lessonId)->update($upAray);
        return $lessonId;
    }

    protected function updateStatus($id = ''){

       if($id != ''){

            $lesson = $this->where('lnId',$id)->first();

            if($lesson){

                $status = 0;
                if($lesson->lnIsStatus == 0) $status = 1;
                $this->where('lnId',$id)->update(['lnIsStatus' => $status]);
                return $status;
            }
        }
        return 'FALSE';
    }

    protected function getAllLessons(){
        
        $lessons =  $this->get();
        
        if($lessons){
            return $lessons; 
        }
        return false; 
    }

    protected function getLessonsByStd($stdid){
        
        $lessons =   $this->where('lnClsMasterId', $stdid)->get();
        
        return $lessons;
    }
    
}
