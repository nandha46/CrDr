<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Contactdetail extends Model{

    protected $table = 'contactdetails';

    protected $fillable =['condOfficialNumber','condPersonalNumber', 'condIsstatus', 'created_at', 'updated_at'];

    protected function insertContact($pMobile = '', $sMobile = ''){

        if ($sMobile == 'null'){
            $sMobile = null;
        }

        $contact =   $this->create(['condOfficialNumber' => $pMobile, 'condPersonalNumber' =>  $sMobile]);

        return $contact->id;
    }

    protected function updateContact($id, $pMobile = '', $sMobile = ''){

        if ($sMobile == 'null'){
            $sMobile = null;
        }

        $upAray = [
            'condOfficialNumber' => $pMobile, 
            'condPersonalNumber' =>  $sMobile
        ];

        $this->where('condId', $id)->update($upAray);
       return $id;
    }


    protected function deleteContactById($userId){

        $this->where('userid', $userId)->delete();
    }
}