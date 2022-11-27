<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Pressrelease extends Model{

    protected $table = 'pressreleases';
    
    protected $fillable = [ 'title', 'lead', 'message',	'publishing', 'fileurl', 'status', 'created_at', 'updated_at'];

    protected function getPressreleases(){

        $topic =  $this->all();

        return $topic;
    }

    protected function getPressReleaseById($id){

        return $this->where('id', $id)->first();

    }

    protected function getPressreleasesView(){
        
       $topics = DB::table('view_pressreleases')->get();

       if($topics){
            return $topics;
       }

       return false;
    }

    protected function InsertPressrelease($inAry){
    
        $location = $this->create($inAry);

        return $this->getPressReleaseById($location->id);

    }

    protected function UpdatePressrelease($editid, $inAry){

        $result = $this->where('id', $editid)->update($inAry);
        
        return $this->getPressReleaseById($editid);

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