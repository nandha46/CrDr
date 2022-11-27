<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;

class Analytics extends Model{

    protected $table = 'useragent_analytics';
    
    protected $fillable = [ 'ua_id', 'username',	'user_agent', 'ip', 'ip2', 'status', 'created_at', 'updated_at'];

    protected function getAnalytics(){

        $analytics =  $this->all();

        return $analytics;
    }

    protected function getAnalyticsById($id){
        
        return $this->where('ua_id', $id)->first();
    }

    protected function insertAnalytics($inAry){
          
        $analytics = $this->create($inAry);

        return $this->getAnalyticsById($analytics->ua_id);

    }

    protected function updateAnalytics($editid, $inAry){        
        
        $result = $this->where('ua_id', $editid)->update($inAry);

        return $this->getAnalyticsById($editid);

    }

}