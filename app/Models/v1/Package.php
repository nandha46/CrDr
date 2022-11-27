<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;

class Package extends Model{
    
    protected $table = 'packages';

    protected $fillable = ['name', 'isac', 'seatrange','seatrangeend', 'isstatus', 'created_at', 'updated_at'];

    protected function getPackages($active = false){

        if($active) return $this->where('isstatus', 1)->get();

        return $this->all();
    }

    protected function getDeSelectedPackages($cityId = ''){

        if($cityId != '' && $cityId != 'null') return View::deSelectedPackages($cityId);
        return [];
    }

    protected function insertPackages($pkgName, $seatRangeStart = '', $seatRangeEnd = '', $pMode = ''){
        
        $pkg = $this->create([
            'name'          => $pkgName, 
            'seatrange'     => $seatRangeStart, 
            'seatrangeend'  => $seatRangeEnd, 
            'isac'          => $pMode,
            'isstatus'      => 1
        ]);

        return $pkg->id;
    }

    protected function updatePackages($editId, $pkgName, $seatRangeStart = '', $seatRangeEnd = '', $pMode){

        $this->where('id', $editId)->update([
            'name'          => $pkgName, 
            'seatrange'     => $seatRangeStart, 
            'seatrangeend'  => $seatRangeEnd, 
            'isac'          => $pMode
        ]);
    }

    protected function getPackageById($id = ''){
        
        $pkg = $this->where('id', $id)->first();

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
}