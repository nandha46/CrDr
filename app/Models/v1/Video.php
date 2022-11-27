<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;

class Video extends Model{

    protected $table = 'videos';
    
    protected $fillable =['vdId ', 'vdTitle', 'vdDescription', 'vdLink', 'vdOtherLink', 'vdIsStatus', 'created_at', 'updated_at'];
   
    protected function getVideo(){

        $video =  $this->all();

        return $video;
    }

    protected function getVideoById($id = ''){
        
        if($id != ''){       

            $video = $this->where('vdId',$id)->first();

            if($video) return $video;
        }
        return false;       
    }

    protected function insertVideo($title = '', $description = '', $videoLink = '', $otherLink = ''){

        $video = $this->create([
            'vdTitle' =>  $title,
            'vdDescription' =>  $description,
            'vdLink' =>  $videoLink,
            'vdOtherLink' =>  $otherLink,
            'vdIsStatus' =>  1
        ]);

        return $video->id;
    }

    protected function updateVideo($videoId, $title = '', $description = '', $videoLink = '', $otherLink = ''){

        $upAray = [
            'vdTitle' =>  $title,
            'vdDescription' =>  $description,
            'vdLink' =>  $videoLink,
            'vdOtherLink' =>  $otherLink
        ];
        
        $this->where('vdId', $videoId)->update($upAray);
    }

    protected function updateStatus($id = ''){

       if($id != ''){

            $student = $this->where('vdId',$id)->first();

            if($student){

                $status = 0;
                if($student->vdIsStatus == 0) $status = 1;
                $this->where('vdId',$id)->update(['vdIsStatus' => $status]);
                return $status;
            }
        }
        return 'FALSE';
    }


}
