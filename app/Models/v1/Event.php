<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Event extends Model{

    protected $table = 'events';
    
    protected $fillable = [ 'evntOrgMasterId', 'evntType', 'evntName',	'evntDescription', 'chiefguest','evntPlace', 'evntSponseredBy', 'evntOrganisedBy', 'evntDate', 'evntStartTime', 'evntEndTime','registrationFrom','formUrl', 'evntIsStatus', 'created_at', 'updated_at'];

    protected function getEvents(){

        $events =  $this->all();

        return $events;
    }

    protected function getEventById($editId){

        return $this->where('id', $editId)->first();

    }

    protected function InsertEvent($inAry){

        $events = $this->create($inAry);

        return $this->getEventById($events->id);

    }

    protected function UpdateEvent($editid, $inAry){
        
        $result = $this->where('id', $editid)->update($inAry);
        
        return $this->getEventById($editid);

    }

}