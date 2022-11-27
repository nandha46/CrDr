<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use App\Models\v1\View;


class HallSeat extends Model{

    protected $table = 'hallseats';
    
    protected $fillable =['hId', 'hExam','hRoomNo','hTotalSeat','hClasses','hArrange','hSplitOption','hTime','hSeatMode','hStudentSeatCount','hStatus', 'created_at', 'updated_at'];

protected function getHallSeat(){

        $hallseat =  $this->all();

        return $hallseat;
    }

protected function getHallSeatById($id = ''){
        
        if($id != ''){       

            $hallseat = $this->where('hId',$id)->first();

            if($hallseat) return $hallseat;
        }
        return false;       
    }

protected function insertHallSeat($exam,$rooms,$seats, $classes,$arrangement,$splitoption,$time,$seatmode,$studentseatcount){

$Hallseat = $this->create([
    'hExam' =>  $exam,
    'hRoomNo' =>  $rooms,
    'hTotalSeat' =>  $seats,
    'hClasses' =>  $classes,
    'hArrange' =>  $arrangement,
    'hSplitOption' =>  $splitoption,
    'hTime' =>  $time,
    'hSeatMode' =>  $seatmode,
    'hStudentSeatCount' =>  $studentseatcount,
    
    'hStatus' =>  1,
]);

return $Hallseat->id;
}

protected function updateHallSeat($editId,$exam, $time, $classes, $strength1,$strength2,$strength3,$rooms,$seats,$arrangement,$invididual,$Left,$Right,$Center,$Remaining1,$Remaining2,$Remaining3){

$upAray = [
    'hExam' =>  $exam,
    'hTime' =>  $time,
    'hClasses' =>  $classes,
    'hClass1' =>  $strength1,
    'hClass2' =>  $strength2,
    'hClass3' =>  $strength3,
    'hRoomNo' =>  $rooms,
    'hTotalSeat' =>  $seats,
    'hArrange' =>  $arrangement,
    'hInvididual' =>  $invididual,
    'hLeft' =>  $Left,
    'hRight' =>  $Right,
    'hCenter' =>  $Center,
    'hRemaining1' =>  $Remaining1,
    'hRemaining2' =>  $Remaining2,
    'hRemaining3' =>  $Remaining3,
];

return $this->where('hId', $editId)->update($upAray);
}



}