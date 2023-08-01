<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Http\Controllers\v1\SharedController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\v1\Usergroup;
use App\Services\AnalyticServices;
use Illuminate\Support\Facades\Storage;

class AuthController extends Controller{

    public function getLogin(Request $request){

    	$auth = SharedController::checkAuthenticated();

        
        $text = mt_rand(100000,999999); 
        $height = 25; 
        $width = 65;   
        $image_p = imagecreate($width, $height); 
        $black = imagecolorallocate($image_p, 0, 0, 0); 
        $white = imagecolorallocate($image_p, 255, 255, 255); 
        $font_size = 14; 
        imagestring($image_p, $font_size, 5, 5, $text, $white);
        $captcha = "./storage/app/public/captcha.jpg"; 
        $catchaGenStatus = imagejpeg($image_p ,$captcha, 80);

        $data['captcha'] = Storage::url('app/public/captcha.jpg');
        $request->session()->put('secret', $text);

        if($auth) return redirect()->route('get-reports-analytics'); 
        return view('v1.Auth.Login')->with($data);

    }

    public function postLogin(){

    	$auth = SharedController::checkAuthenticated();

        if(!$auth){

    		$username = request()->input('username');
            $password = request()->input('password');
            $captcha = request()->input('captcha');
            $secret = request()->session()->get('secret');

            if($username == '' || $password == '' || $captcha == '') return back()->with('Msg', 'Please fill the form details');
            
            if($captcha != $secret) return back()->with('Msg', 'Invalid Captcha');

            $check    = Usergroup::checkLogin($username, $password);

    		if($check){

                if($check->status){

                    request()->session()->put('LoggedUsr', $check->id);
                    $profile = Usergroup::getProfileData($check->id);

                    if (Storage::exists($profile)){
                        request()->session()->put('profile_pic', '/storage/'.$profile);
                    } else {
                            $profile = 'uploads/userData/admin.png';
                            request()->session()->put('profile_pic', '/storage/'.$profile);
                    }
                    // request()->session()->put('LoggedStuUsr',11);
                    AnalyticServices::logAnalytics($username);

                    $newAuth = SharedController::checkAuthenticated();
                    
                    if(count($newAuth) > 0){

                        if($newAuth[2] > 0){

                            foreach($newAuth[2] as $redirect){
                                return redirect()->to($redirect);
                            }  
                        }
                        return back()->with('Msg', 'Access denied');
                    }

                    self::getLogout();
                    return back()->with('Msg', 'You have no privilges to access. Contact your administrator');
                }

                return back()->with('Msg', 'Your account is disabled. Contact your administrator');  			
    		}
    		return back()->with('Msg', 'Invalid credentials');
    	}
    }

    static function getLogout($value = ''){

        $auth = SharedController::checkAuthenticated();

        if(!$auth) return redirect()->route('get-login')->with('Msg', 'Invalid actions');
        request()->session()->forget('LoggedUsr');

        if($value == 1) return 'SESSION_REMOVED';
    	return redirect()->route('get-login')->with('SMsg', 'Logout Successfully');
    }


    public function getProfile(){

        if(Auth::user()){           

            $data['authUser'] = Auth::user();
            return view('v1.Auth.Profile')->with($data);
            
        }
    }

    public function postProfile(){

        if(Auth::user()){

            $name       = request()->input('name');
            $password   = request()->input('password');            

            Usergroup::updateUser(Auth::user()->id, $name, $password);            
            return redirect()->back()->with('SMsg', 'Updated Successfully');                    
        }
    }

    public function getAccessDenied($urls = '', $mode = 1){

        if($urls != ''){

            $data['urls'] = $urls;
            $data['assesurl'] = url()->asset('');

            if($mode == 0){

                $data['Status'] = true;
                return response()->json($data);
            }

            return view('v1.Errors.AccessDenied')->with($data);
        }

        self::getLogout(1);

        if($mode == 0){

            $data['Status'] = false;
            $data['Logout'] = false;
            return response()->json($data);
        }
        return redirect()->route('get-login')->with('SMsg', 'Logout Successfully');
    }
}
