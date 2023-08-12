<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;
use Barryvdh\Debugbar\Facades\Debugbar;

class Usergroup extends Model{

    protected $table = 'users';
    
    protected $fillable =['admin_id', 'username','password','usertype', 'companyId', 'status'];

    protected function getUsers(){

        return View::getUsers('Customer');
    }

    public function userDetails () {
        return $this->hasOne(UserDetails::class, 'userid', 'id');
    }

    protected function checkUser($mobile){
        
        if($mobile){

            $prvl = $this->where('username', $mobile)->first();

            if(!$prvl) return true;
        }

        return false;
    }

    protected function updateUserPassword($userid, $password){
        return $this->where('id', $userid)->update(['password' => md5($password)]);
    }

    protected function getAuthenticated($id){

        $prvl = View::getUser($id);

        if($prvl) return $prvl;
        return [];
    }

    protected function checkLogin($usr = '', $pwd = ''){

        $pwd = md5($pwd);
        $usr = $this->where('username', $usr)->where('password', $pwd)->first();
        if($usr) return $usr;
        return false;
    }
    
    protected function getUsergroupById($id = ''){
        
        if($id != ''){       

            $user = $this->where('id',$id)->first();

            if($user) return $user;
        }
        return false;       
    }    

    protected function insertUser($userType = '', $username = '', $password = '', $adminId = null){

        $password = md5($password);

        $user = $this->create([
            'username' =>  $username,
            'password' =>  $password,
            'usertype' =>  $userType,
            'admin_id' => $adminId,
        ]);

        return $user->id;
    }

    protected function insertFile($id_picture, $userid){

        $inAry = [
            'id_picture'=>$id_picture,
        ];

        $user = $this->where('id', $userid)->update($inAry);
        return $user;
    }

    protected function UpdateUser($userId, $userType = '', $password = ''){

        $upAray = [
            'usertype' => $userType
        ];

        if($password !== 'null' && $password !== '') $upAray['password'] = md5($password);
        
        $this->where('id', $userId)->update($upAray);
    }

    protected function updateStatus($id = ''){

       if($id != ''){

            $user = $this->where('id',$id)->first();

            if($user){

                $status = 0;
                if($user->status == 0) $status = 1;
                $this->where('id',$id)->update(['status' => $status]);
                return $status;
            }
        }
        return 'FALSE';
    }

    protected function getAllUsersView (){
        $users = Usergroup::where('users.usertype', 2)
                    ->leftJoin('user_details', 'users.id','=', 'user_details.userid')
                    ->select('users.*', 'user_details.*', 'users.status as userstatus', 'users.id as id')
                    ->get();

        return $users;
    }

    protected function getUsersView($uid){
        $users = Usergroup::where('users.usertype', 3)
                    ->where('users.admin_id', $uid)
                    ->leftJoin('user_details', 'users.id','=', 'user_details.userid')
                    ->select('users.*', 'user_details.*', 'users.status as userstatus', 'users.id as id')
                    ->get();

        return $users;
    }
}