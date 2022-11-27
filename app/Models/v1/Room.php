<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Room extends Model{

    protected $table = 'rooms';
    
    protected $fillable = ['branch_id', 'room_name', 'room_type','seating_type','bench_capacity','no_of_seats', 'max_capacity', 'available_capacity', 'status'];

    protected function getRooms(){

        $room =  $this->all();

        return $room;
    }
    protected function getRoomById($id){

        $room =  $this->where('id', $id)->first();
        return $room;
    }
    
    protected function getRoomsByBranch($branchId){

        $room =  $this->where('branch_id', $branchId)->get();

        return $room;
    }
    
    protected function getActiveRoomsByBranch($branchId){

        $room =  $this->where('status', 1)->where('branch_id', $branchId)->get();

        return $room;
    }
    
    protected function getSeatByRoom($room_name){
        
        return $this->where('room_name', $room_name)->first();
    }

    protected function insertRoom($inAry){

        $room = $this->create($inAry);

        return $room;

    }

    protected function updateRoom($editid, $inAry){

        $exam = $this->where('id', $editid)->update($inAry);

        return $this->getRoomById($editid);

    }

    protected function updateStatus($id = ''){

        if($id != ''){
 
             $result = $this->where('id',$id)->first();
 
             if($result){
 
                 $status = 0;
                 if($result->status == 0) $status = 1;
                 $this->where('id',$id)->update(['status' => $status]);
                 return $status;
             }
         }
         return 'FALSE';
     }

}