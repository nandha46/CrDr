<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;

class Vehicle extends Model{
    
    protected $connection = 'db4';

    protected $table = 'vehicles';

    protected $fillable = ['packageid', 'state', 'only_for', 'city', 'imagepath', 'vehiclemode', 'ownerid', 'amount', 'kmcharge', 'kmperlitre', 'tripamount', 'noofdays', 'isapproved', 'isstatus', 'roundtripamount', 'created_at', 'updated_at'];

    protected function getVehicleTypes(){

        return View::getVehicleTypes();
    }

    protected function getVehicleTypesByCity($cityId = ''){

        return View::getVehicleTypesByCityId($cityId);
    }

    protected function insertVehicleTypes($city = '', $package = '', $oneway = '', $roundtrip = ''){

        $pkg = $this->create([
            'city'              => $city, 
            'packageid'         => $package, 
            'amount'            => $oneway,
            'roundtripamount'   => $roundtrip
        ]);

        return $pkg->id;
    }

    protected function updateVehicleTypes($editId, $city = '', $oneway = '', $roundtrip = ''){
        
        $this->where('id', $editId)->update([
            'city'              => $city, 
            'amount'            => $oneway,
            'roundtripamount'   => $roundtrip
        ]);
    }

    protected function getVehicleTypeById($id = ''){

        $pkg = View::getVehicleTypesById($id);

        if($pkg) return $pkg;
        return false;
    }

    protected function updateStatus($id = ''){

        if($id != ''){
 
             $user = $this->where('id',$id)->first();
 
             if($user){
 
                $status = 0;
                if($user->isstatus == 0) $status = 1;
                $this->where('id',$id)->update(['isstatus' => $status]);
                return $status;
             }
         }
 
        return 'FALSE';
    }

    protected function deleteVehicle($vehicleId = ''){

        $this->where('id', $vehicleId)->delete();

        return true;
    }
}