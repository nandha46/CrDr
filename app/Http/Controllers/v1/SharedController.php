<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\Storage;
use App\Models\v1\Usergroup;
use App\Models\v1\Appdefault;
use App\Models\v1\Menu;
use App\Models\v1\State;
use Barryvdh\Debugbar\Facades\Debugbar;
use Illuminate\Support\Facades\DB;

class SharedController extends Controller{

    static function getAppDefaults(){

        return Appdefault::getDetails();
    }

    public function updateStatus(){

        $Status = false; $sts = '';
        $type 	= request()->input('type');
        $id 	= request()->input('id');

        if($type == ''  || $id == '' ){

            $data['Status'] = $Status;
            $data['Msg'] 	= 'INVALID';
            return response()->json($data);
        }

        if($type == 'users') {
			$sts = Usergroup::updateStatus($id);
		}

		
        $data['Status'] = true;
        $data['StatusVl'] = $sts;

        return response()->json($data);
    }

	public function checkDuplicate () {
		$status = false;

		$fname = request()->fname;

		$students = DB::table('view_students')->where('firstname','like', '%'.$fname.'%')
							->get();
		if($students->count() == 0) {
			$data['status'] = $status;
			return response()->json($data);	
		}

		$status = true;
		$data['students'] = $students;
		$data['status'] = $status;
		return response()->json($data);

	}

	static function privilgesResponse($auth) {

		if(count($auth) == 0){

			$res['Msg'] 	= 'Please Login';
			$res['Status'] 	= false;
			return $res;
	 	}else{

			if($auth[1] == ''){

				$res['Msg'] 	= 'You may be disabled or no privilges to access. Contact your administrator';
				$res['Status'] 	= false;
				return $res;
			}else{

				$urlExist = 'FALSE';
				$currentURL = url()->current();
				$newUrls = [];

				foreach($auth[2] as $key => $sepUrls){

					$finalUrl = self::convertSpecialCharacters($sepUrls);
					$newUrls[] = $key.':'.$finalUrl;

					if(strpos($currentURL, $sepUrls) !== false) $urlExist = 'TRUE';
				}

				$encode = implode('&&', $newUrls);

				if($urlExist == 'FALSE'){

					$res['Msg'] 	= 'Access-denied';
					$res['Status'] 	= false;
					$res['urls'] 	= $encode;

					return $res;
				}
			}
		}

		$res['Status'] 	= true;
		return $res;
	}

	static function getStates(){

		return State::getAllStates();
	}

	static function getCities(){
		
		$storage = Storage::disk('countries')->get('cities.json');
		return json_decode($storage);
	}

    // Get Countries

	static function getCountries(){

		$storage = Storage::disk('countries')->get('countries_new.json'); 
		return json_decode($storage);
	}

    // Menu Handling

	static function checkAuthenticated(){

		Debugbar::startMeasure('auth', 'Time taken to Auth');

		$menuHTML = '';

		if(request()->session()->has('LoggedUsr')){

			$loggedUsr 	= request()->session()->get('LoggedUsr');

			$authUsr 	= Usergroup::getAuthenticated($loggedUsr);

			$mainMenu = $subMenu = $urls = [];

			if($authUsr->usertyperesult !== 'Admin') $menus = Menu::getPrivilegedMenus($authUsr->id);
			else $menus = Menu::getMenus();
			
			if(count($menus) == 0){

				return [$authUsr, '', $urls];
			}else{

				foreach($menus as $sepMenus){

					if($sepMenus->ismain == 1 && $sepMenus->isstatus == 1) $mainMenu[] = $sepMenus;
					if($sepMenus->ismain == 0 && $sepMenus->isstatus == 1) $subMenu[] = $sepMenus;
				}
	
				foreach($mainMenu as $sepMenu){
	
					$menuName = ucfirst($sepMenu->menuname);
	
					$menuHTML .= '<li>';
	
					$heredoc = <<<sideMenu
					<a href="javascript: void(0);"> <i data-feather="{$sepMenu->icons}" class="align-self-center menu-icon"></i><span>{$menuName}</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a><ul class="nav-second-level" aria-expanded="false">
	
					sideMenu;
					$menuHTML .= $heredoc;
	
					foreach($subMenu as $sepSubMenu){
	
						$subName = ucfirst($sepSubMenu->menuname);

						$url = $sepSubMenu->menuurls;

						if($sepMenu->id === $sepSubMenu->mainid && $sepSubMenu->ismain == 0){

							$urls[] = $url;
							$url =  config('app.url').'insight/'.$url;
			
							$hereDocSub = <<<sideSubMenu
							<li class="nav-item"><a class="nav-link" href="{$url}"><i class="ti-control-record"></i>{$subName}</a></li>
	
							sideSubMenu;
	
							$menuHTML .= $hereDocSub;						
						}
					}
					$menuHTML .= '</ul></li>';
	
					if($menuName == 'Settings' || $menuName == 'Components' ) $menuHTML .= '<hr class="hr-dashed hr-menu">';
				}

				if($authUsr->usertyperesult === 'Admin'){
					$urls[] = 'vehicles/action';
					$urls[] = 'packages/action';
					$urls[] = 'users/action';
					$urls[] = 'vehicles/delete';
				}
				$urls[] = 'view-questions';
				$urls[] = 'set-questions';
				$urls[] = 'seat-arrangements';
				$urls[] = 'profile';
				$urls[] = 'analytics';
				$urls[] = 'upload-test';
				
			}
			Debugbar::stopMeasure('auth');
			return [$authUsr, $menuHTML, $urls];
		}

		return [];
	}

	static function convertSpecialCharacters($url = ''){

        $finalUrl = str_replace('/', '%2F', $url);

		return urlencode($finalUrl);
	}

	static function getUserBranch($userid){
		$user = User::where('id',$userid)->first();
        return $user->userOrgSubId;
	}

	static function getLoggedStudent(){
		
	}
}