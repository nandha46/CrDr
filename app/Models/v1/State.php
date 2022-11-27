<?php

namespace App\Models\v1;


use Illuminate\Database\Eloquent\Model;

class State extends Model{

    protected $table = 'states';

    protected $fillable = ['name', 'statename', 'status', 'created_at', 'updated_at'];

    protected function getAllStates(){

        return $this->all();
    }

    protected function getStateById($stateId = ''){
       
        return $city = $this->where('id', $stateId)->first();
    }

    protected function insertState($name = '', $stateid = ''){

        $inAry['cityname']  = $name;
        $inAry['stateid']    = $stateid;
        $city = $this->create($inAry);
        return $this->getCityid($city->id);
    }


    protected function updateStatus($cityId =''){

        if($cityId != ''){

            $cat = $this->where('id',$cityId)->first();

            if($cat){

                $status = 1;
                if($cat->status == 1) $status = 0;
                $this->where('id',$cityId)->update(['status' => $status]);
                return true;
            }
        }

        return false;

    }
    
    protected function checkCity($cityPresent = ''){

       return  $city = $this->where('name', $cityPresent)->get();

    }
}