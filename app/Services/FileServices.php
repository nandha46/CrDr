<?php

namespace App\Services;

use App\Models\v1\Document;
use Barryvdh\Debugbar\Facades\Debugbar;

class FileServices {


    static function storeFiles($request, $topicid){

        $totalFiles = $request->totalFiles;

        for($i =0; $i < $totalFiles; $i++){
            $currentFile = 'files_'.$i;
            $ext = $request->$currentFile->extension();
            $md5hash = md5_file($request->$currentFile);
            $originalName = $request->$currentFile->getClientOriginalName();
            $name = $md5hash.'_'.$originalName;
            if ($ext == 'pdf'){
                $path = $request->$currentFile->storeAs('uploads/topics/pdf',$name);
                Document::insertDocument('PDF', $topicid, $originalName, '', $path, $md5hash);
            } else {
                $path = $request->$currentFile->storeAs('uploads/topics/image',$name);
                Document::insertDocument('IMAGE', $topicid, $originalName, '', $path, $md5hash);
            }
        }

        return true;
    }

    static function storeAnnouncementFiles($request, $announcement_id){

        $totalFiles = $request->totalFiles;

        for($i =0; $i < $totalFiles; $i++){
            $currentFile = 'files_'.$i;
            $ext = $request->$currentFile->extension();
            $md5hash = md5_file($request->$currentFile);
            $originalName = $request->$currentFile->getClientOriginalName();
            $name = $md5hash.'_'.$originalName;
            if ($ext == 'pdf'){
                $path = $request->$currentFile->storeAs('uploads/announcements/pdf',$name);
                Document::insertAnnouncementDocument($announcement_id, $originalName, '', 'PDF', $path, $md5hash);
            } else {
                $path = $request->$currentFile->storeAs('uploads/announcements/image',$name);
                Document::insertAnnouncementDocument($announcement_id, $originalName, '', 'IMAGE', $path, $md5hash);
            }
        }

        return true;
    }

}