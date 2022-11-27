<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Announcement extends Model{

    protected $table = 'announcements';
    
    protected $fillable = [ 'typeid', 'title', 'message', 'fileurl', 'status', 'created_at', 'updated_at'];

    protected function getAnnouncements(){

        $topic =  $this->all();

        return $topic;
    }

    protected function getAnnouncementById($id){

        return $this->where('id', $id)->first();        
    }

    protected function getAnnouncementsView(){
        
       $topics = DB::table('view_announcements')->get();

       if($topics){
            return $topics;
       }

       return false;
    }

    protected function InsertAnnouncement($inAry){
        
        $location = $this->create($inAry);

        return $this->getAnnouncementById($location->id);

    }

    protected function UpdateAnnouncement($editid, $inAry){

        $result = $this->where('id', $editid)->update($inAry);
        
        return $this->getAnnouncementById($editid);

    }

    protected function updateStatus($id = ''){

        if($id != ''){
 
             $document = $this->where('id',$id)->first();
 
             if($document){
 
                 $status = 0;
                 if($document->status == 0) $status = 1;
                 $this->where('id',$id)->update(['status' => $status]);
                 return $status;
             }
         }
         return 'FALSE';
     }

}