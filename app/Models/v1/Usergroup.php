<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;
use Barryvdh\Debugbar\Facades\Debugbar;

class Usergroup extends Model{

    protected $table = 'users';
    
    protected $fillable =['username','password','usertype', 'userOrgId', 'status', 'created_at', 'updated_at'];

    protected function getUsers(){

        return View::getUsers('Customer');
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

    protected function insertUser($userType = '', $username = '', $password = '', $organization = '1'){

        $password = md5($password);

        $user = $this->create([
            'username' =>  $username,
            'password' =>  $password,
            'usertype' =>  $userType,
            'userOrgId' => $organization,
            'userOrgSubId' => 1,
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

    protected function getProfileData($id = ''){
        if($id != ''){

            $user = $this->where('id',$id)->first();

            if($user){
                if ($user->id_picture != null ){
                    return $user->id_picture;
                } else {
                    if ($user->usertype == 1 || $user->usertype == 2){
                        return 'uploads/userData/admin.png';
                    } else if ($user->usertype == 3){
                        return 'uploads/StudentData/default_boy.png';
                    } else {
                        return 'uploads/teacherData/teacher_default.png';
                    }
                }
            }
        }
        return 'FALSE';
    }

    protected function getUsersView(){
        $users = Usergroup::whereIn('users.usertype', [1,2,3,4])->leftJoin('user_details', 'users.id','=', 'user_details.userid')
                    ->select('users.*', 'user_details.*', 'users.status as userstatus')
                    ->get();

        return $users;
    }
}
