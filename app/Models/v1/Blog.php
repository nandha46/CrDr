<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Blog extends Model{

    protected $table = 'blogs';
    
    protected $fillable = [ 'categoryid', 'title', 'description', 'message', 'fileurl', 'status', 'created_at', 'updated_at'];

    protected function getBlogs(){

        $topic =  $this->all();

        return $topic;
    }

    protected function getBlogById($id){
        
        return $this->where('id', $id)->first();
    }

    protected function getBlogsView(){
        
       $topics = DB::table('view_blogs')->get();

       if($topics){
            return $topics;
       }

       return false;
    }

    protected function InsertBlog($inAry){
          
        $location = $this->create($inAry);

        return $this->getBlogById($location->id);

    }

    protected function UpdateBlog($editid, $inAry){        
        
        $result = $this->where('id', $editid)->update($inAry);

        return $this->getBlogById($editid);

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