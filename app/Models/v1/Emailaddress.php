<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Emailaddress extends Model{

    protected $table = 'emailaddresses';

    protected $fillable =['emlOfficialAddress','emlPersonalAddress', 'emlIsstatus', 'created_at', 'updated_at'];

    protected function insertEmail($email = ''){

        if ($email == 'null'){
            $email = null;
        }

        $email =   $this->create(['emlOfficialAddress' => $email]);

        return $email->id;
    }

    protected function updateEmail($id, $email = ''){

        if ($email == 'null'){
            $email = null;
        }

        $upAray = [
            'emlOfficialAddress' => $email
        ];

       $this->where('emlId', $id)->update($upAray);
       
       return $id;
    }
}
