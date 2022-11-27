<?php

namespace App\Models\v1;


use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;

class City extends Model{

    protected $table = 'cities';

    protected $fillable = ['cityname', 'stateid', 'status', 'created_at', 'updated_at'];

    protected function getAllcities(){

        return View::getCities();
    }

    protected function getServingcities($stateId = ''){
       
        return $city = $this->where('stateid', $stateId)->get();
    }

    protected function getCityid($id = ''){

        $city = View::getCityById($id);

        if($city) return $city;  
        return false;   
    }

    protected function insertCity($name = '', $stateId = ''){

        $inAry['cityname']  = $name;
        $inAry['stateid']   = $stateId;

        $city = $this->create($inAry);
        return $city->id;
    }

    protected function updateCity($id, $name = '', $stateId = ''){

        $upAry['cityname']  = $name;
        $upAry['stateid']   = $stateId;

        $city = $this->where('id', $id)->update($upAry);
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

?>