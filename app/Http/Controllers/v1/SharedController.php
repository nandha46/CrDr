<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\v1\Usergroup;
use App\Models\v1\Appdefault;
use App\Models\v1\Menu;
use App\Models\v1\View;
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

				$res['Msg'] 	= 'You may be disabled or no privilges to access[14]. Contact your administrator';
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

    // Menu Handling

	static function checkAuthenticated(){

		Debugbar::startMeasure('auth', 'Time taken to Auth');

		$menuHTML = '';

		if(request()->session()->has('LoggedUsr')){

			$loggedUsr 	= request()->session()->get('LoggedUsr');

			$authUsr 	= Usergroup::getAuthenticated($loggedUsr);
			$user = User::where('id', $authUsr->id)->first(); 

			$mainMenu = $subMenu = $urls = [];

			if($authUsr->usertyperesult === 'Super-Admin') {
				$menus = Menu::getMenus();
				$menus = $menus->except([27,52,53,54,55,56]);
				Debugbar::info('super-admin');
		} else if($authUsr->usertyperesult === 'Admin'){
			Debugbar::info('admin');
			$menus = Menu::getMenus();
			if($user->companyId === null){
				$menus = $menus->except([27,52,53,54,55,56]);
				Debugbar::info('Company not selected');
			}
		} else {
				Debugbar::info('staff');
				$menus = Menu::getPrivilegedMenus($authUsr->id);
				if($user->companyId === null){
					Debugbar::info('Company not selected');
					$menus = View::getPrivilegedMenusExceptReports($authUsr->id);
				}
			}


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
							$url =  config('app.url').$url;
			
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
					$urls[] = 'users/action';
				}
				$urls[] = 'profile';
				$urls[] = 'analytics';
				$urls[] = 'select-company';
				$urls[] = 'close-company';
				
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

	static function getLoggedStudent(){
		
	}
}