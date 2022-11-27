<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;

class Document extends Model{

    protected $table = 'documents';
    
    protected $fillable =['docId ', 'topic_id', 'docTitle', 'docDescription', 'doc_type', 'docResource','docIsStatus','imgHash', 'created_at', 'updated_at'];
   
    protected function getDocumentById($id = ''){
        
        if($id != ''){       

            $document = $this->where('docId',$id)->first();

            if($document) return $document;
        }
        return false;       
    }   
    
    protected function insertDocument($type, $topicid = '',$title = '', $description = '', $resource = '', $hash = ''){

        $document = $this->create([
            'topic_id' => $topicid,
            'docTitle' =>  $title,
            'docDescription' =>  $description,
            'doc_type' =>  $type,
            'docResource' =>  $resource,
            'imgHash' => $hash
        ]);

        return $document->id;
    }

    protected function insertAnnouncementDocument($announcement_id = '',$title = '', $description = '', $type, $resource = '', $hash = ''){

        $document = $this->create([
            'announcement_id' => $announcement_id,
            'docTitle' =>  $title,
            'docDescription' =>  $description,
            'doc_type' =>  $type,
            'docResource' =>  $resource,
            'imgHash' => $hash
        ]);

        return $document->id;
    }

    protected function updateDocument($editId, $title = '', $description = '', $resource = ''){

        $upAray = [
            'docTitle' =>  $title,
            'docDescription' =>  $description,
           // 'docDocument' =>  $file,
            'docResource' =>  $resource,
        ];
        
        $this->where('docId', $editId)->update($upAray);
    }

    protected function updateFilepath($editId,$fileName = ''){

        $this->where('docId', $editId)->update(['docDocument' =>  $fileName]);
        
    }
    
    protected function updateFilehash($editId,$sha1file=''){

        $this->where('docId', $editId)->update(['imgHash' =>  $sha1file]);
        
    }

    protected function checkHashValue($sha1file){

        $hash = $this->get('imgHash',$sha1file)->first();
        
        if($hash){ 
            if($hash->imgHash==$sha1file) return true;
        }
        return false;   
        
        
    }

    protected function updateStatus($id = ''){

       if($id != ''){

            $document = $this->where('docId',$id)->first();

            if($document){

                $status = 0;
                if($document->docIsStatus == 0) $status = 1;
                $this->where('docId',$id)->update(['docIsStatus' => $status]);
                return $status;
            }
        }
        return 'FALSE';
    }

    protected function getDocument(){
        
        $document =  $this->all();

        return $document;
    }

    protected function getLessonsByStd($stdid){
        
        $lessons =   $this->where('lnClsMasterId', $stdid)->get();
        
        return $lessons;
    }

    protected function getLessonsBySyls($mediumid, $stdid, $subid, $syid){

        $lessons =   $this->where('lnMedMasterId', $mediumid)->where('lnClsMasterId', $stdid)
        ->where('lnSubMasterId', $subid)->where('lnSyMasterId', $syid)->get();
        
        return $lessons;
    }

    protected function getDocumentsByTopic($topicid){
        
        $document =  $this->where('topic_id', $topicid)->get();

        return $document;
    }
    
}
