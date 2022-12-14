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

    private $appRelease;

    public function __construct(){

		$this->default = SharedController::getAppDefaults();

        $this->appRelease = env('APP_RELEASE') == 0 ? $this->default->defDevRelease :  $this->default->defRelease;
	}

    public function getLogin(){

    	$data['appRelease'] = $this->appRelease;
    	$data['appVersion'] = $this->default->defVersion;
    	$data['adminUrl'] 	= $this->default->defAdminUrl;
        $data['baseUrl'] 	= $this->default->defBaseUrl;
        $data['prefix'] 	= $this->default->prefix;
        $data['poweredBy'] 	= $this->default->poweredBy;

    	$auth = SharedController::checkAuthenticated();

        if($auth) return redirect()->route('get-reports-analytics'); 
    	return view($this->default->defVersion.'.Auth.Login')->with($data);
    }

    public function postLogin(){

    	$auth = SharedController::checkAuthenticated();

        if(!$auth){

    		$username = request()->input('username');
            $password = request()->input('password');

            if($username == '' || $password == '') return back()->with('Msg', 'Please fill the form details');
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
                                return redirect()->to($this->default->prefix.'/'.$redirect);
                            }  
                        }
                        return back()->with('Msg', 'Access denied');
                    }

                    self::getLogout();
                    return back()->with('Msg', 'You may be disabled or no privilges to access. Contact your administrator');
                }

                return back()->with('Msg', 'You may be disabled or no privilges to access. Contact your administrator');  			
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

        $data['appVersion'] = $this->default->defVersion;
        $data['appDefault'] = $this->default;
        $data['adminUrl'] 	= $this->default->defAdminUrl;
        $data['baseUrl'] 	= $this->default->defBaseUrl;
        $data['prefix']     = $this->default->prefix;

        if(Auth::user()){           

            $data['authUser'] = Auth::user();
            return view($this->default->defVersion.'.Auth.Profile')->with($data);
            
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

            $data['appVersion'] = $this->default->defVersion;
            $data['appDefault'] = $this->default;
            $data['urls'] = $urls;
            $data['assesurl'] = url()->asset('');

            if($mode == 0){

                $data['Status'] = true;
                return response()->json($data);
            }

            return view($this->default->defVersion.'.Errors.AccessDenied')->with($data);
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
