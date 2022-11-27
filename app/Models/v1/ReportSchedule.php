<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class ReportSchedule extends Model{

    protected $table = 'reportschedules';

    protected $fillable =['name','reportid','toaddress','cc_address', 'bcc_address', 'sendmode', 'status', 'created_at', 'updated_at'];

    protected function getSchedules(){
        
        $emails =  $this->all();

        return $emails;
    }

    protected function getSchedulesById($editId){

        return $this->where('id', $editId)->first();

    }

    protected function insertSchedule($inAry){

        return $this->create($inAry);
    }

    protected function updateSchedule($editid, $inAry){

        $this->where('id', $editid)->update($inAry);

        return $this->getSchedulesById($editid);
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
