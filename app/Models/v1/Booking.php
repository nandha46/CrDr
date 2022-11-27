<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;

date_default_timezone_set("Asia/Kolkata");   //India time (GMT+5:30)

class Booking extends Model{
    
    protected $table = 'bookings';

    protected $fillable = ['noofseats','bookingstatus','journeydate','callbackdate','journeyfromid','journeytoid'];

    protected function getBookingid($id =''){
        
        $booking = View::getBookedServiceById($id);
        if($booking) return $booking;
        return false;       
    }

    protected function createBooking($customerNumber = '', $fromL = '', $toL = '', $noOfseats = '', $journeyDate = '', $callBackdate = '',$createdAt = ''){
        
    }

    protected function getBookingServices($status = 1){

        return View::getBookedServices($status);
    }

    protected function updateStatus($bServiceId = '', $status = 2){
        
        return $this->where('id',$bServiceId)->update(['bookingstatus' => $status]);
    }
}