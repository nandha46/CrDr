<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class View extends Model{
    

    protected function getUser($id){

        $prvl = DB::table('view_users')->where('id', $id)->first();
        
        if(!$prvl) return false; 

        return $prvl;
    }

    // protected function getUsers($usertype, $orderBy = 'ASC', $ordrVal = 'id'){

    //     return DB::table('view_users')->where('usertyperesult', '<>', $usertype)->orderBy($ordrVal, $orderBy)->get();
    // }

    protected function getUsers($usertype, $orderBy = 'ASC', $ordrVal = 'id'){

        return DB::table('view_users')->where('usertyperesult', '<>', $usertype)->orderBy($ordrVal, $orderBy)->get();
    }

    protected function getUsersById($userId = ''){

        $user = DB::table('view_users')->where('id', $userId)->first();
    
        if($user) return $user;
        return false;
    }

    protected function getPrivilegedMenus($userId = ''){
        
        return DB::table('view_privileges')->where('userid', $userId)->get();
    }

    protected function getUserViewById($userid){
        $users = DB::table('users')->where('users.id', $userid)
                    ->leftJoin('user_details', 'users.id','=', 'user_details.userid')
                    ->select('users.usertype', 'user_details.firstname', 'user_details.lastname', 'user_details.primary_mobile', 'user_details.secondary_mobile', 'user_details.email', 'users.status as userstatus')
                    ->first();

        if ($users) return $users;

        return false;
    }

}