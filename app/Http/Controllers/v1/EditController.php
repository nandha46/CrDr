<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Models\v1\Event;
use App\Models\v1\Pressrelease;
use App\Models\v1\View;
use Illuminate\Support\Facades\Storage;

class EditController extends Controller {

    public function getEditJson (){
        $data['success'] = false;

        $type = request()->type;
        $primaryKey = request()->id;

        switch($type) {
            case 'user':
               $user = View::getUserViewById($primaryKey);
               $data['jData'] = $user;
               break;
            case 'event':
                $event = Event::getEventById($primaryKey);
                if(!Storage::exists($event->formUrl)) $event->formUrl = null;
                $data['jData'] = $event;
                break;
            case 'pressRelease':
                $data['jData'] = Pressrelease::getPressReleaseById($primaryKey);
                break;
            default:
                $data['jData'] = null;

            }

        $data['success'] = true;

        return response()->json($data);
    }
}