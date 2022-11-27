<?php

namespace App\Services;

use App\Models\v1\Analytics;
use Exception;
use Illuminate\Support\Facades\Log;

class AnalyticServices {

     
    static function logAnalytics($username ){

        try { 
            if(isset($_SERVER['HTTP_X_FORWARDED_FOR'])){
                $ip2 = $_SERVER['HTTP_X_FORWARDED_FOR'];
            } else {
                $ip2 = 'No HTTP_X_FORWARDED_FOR Set'; 
       }
       $inArray = [
           'username' =>$username,
           'user_agent' => $_SERVER['HTTP_USER_AGENT'],
           'ip' => $_SERVER['REMOTE_ADDR'],
           'ip2' =>$ip2,
           'status' =>1,
        ];
        Analytics::insertAnalytics($inArray); 
    } catch (Exception $e){
        Log::error($e);
    }
}

    static function getAnalytics()
    {

        $log = Analytics::all();

        return response()->json($log);
    }
    
}