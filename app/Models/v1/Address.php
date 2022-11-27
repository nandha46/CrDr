<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Address extends Model{

    protected $table = 'addresses';
    
    protected $fillable = ['address', 'city', 'state', 'pincode', 'country', 'addressmode', 'isstatus', 'created_at', 'updated_at'];

    protected function insertAddress($address = '', $city = '', $state = '', $pincode = '', $country = ''){

        $address = $this->create([
            'address'       =>  $address,
            'city'                  =>  $city,
            'state'                 =>  $state,
            'pincode'               =>  $pincode,
            'country'               =>  $country,
            'addressmode'           =>  '1'
        ]);

        return $address->id;
    }

    protected function updateAddress($id, $address = '', $city = '', $state = '', $pincode = '',  $country = ''){

        $upAray = [
            'address'       =>  $address,
            'city'                  =>  $city,
            'state'                 =>  $state,
            'pincode'               =>  $pincode,
            'country'               =>  $country,
        ];

        $this->where('id', $id)->update($upAray);
        return $id;
    }

    protected function deleteAddressById($userId){

        $this->where('userid', $userId)->delete();
    }

}