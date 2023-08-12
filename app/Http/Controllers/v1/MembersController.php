<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;

use App\Models\v1\Usergroup;
use App\Models\v1\Menu;
use App\Models\v1\Privilege;
use App\Models\v1\View;
use App\Http\Controllers\v1\AuthController;
use App\Http\Controllers\v1\SharedController;
use App\Models\User;
use App\Models\v1\UserDetails;
use Barryvdh\Debugbar\Facades\Debugbar;
use Illuminate\Support\Arr;

class MembersController extends Controller{


	public function getUsers(){

    	$data['pageRootTitle'] 		= 'Members';
    	$data['pageSubTitle'] 		= 'Users';
    	$data['pageSubTitleNext']	= '';

		$auth = SharedController::checkAuthenticated();

	 	if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
		else{

            if($auth[1] == ''){

                AuthController::getLogout(1);
                return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access[4]. Contact your administrator');
			}else{

                $urlExist = 'FALSE';
                $currentURL = url()->current();
                $newUrls = [];

                foreach($auth[2] as $key => $sepUrls){

                    $finalUrl = SharedController::convertSpecialCharacters($sepUrls);
					$newUrls[] = $key.':'.$finalUrl;

					if(strpos($currentURL, $sepUrls) !== false) $urlExist = 'TRUE';
                }
				// TO-DO remove last 4 urls from access denied page
				// $modifiedUrls = array_splice($newUrls, 0, -4);
				// $encode = implode('&&', $modifiedUrls);
				$encode = implode('&&', $newUrls);
				if($urlExist == 'FALSE') return redirect()->route('get-access-denied', ['urls' => $encode]);
			}
        }

	 	$data['authUsr'] 	= $auth[0];
	 	$data['html'] 		= $auth[1];
		$menus = Menu::getMenus();
		$data['menu'] 		= $menus->except([4,7]);
		
		$uid = request()->session()->get('LoggedUsr');
		$usertype = User::where('id', $uid)->first()->usertype;
		$data['usertype'] = $usertype;
		if ($usertype == 1){
			$users = Usergroup::getAllUsersView();
		} else if ($usertype == 2){
			$users = Usergroup::getUsersView($uid);
		}

		$data['users'] 		= $users;
		
		$data['companySelected'] = Usergroup::getUsergroupById($uid)->companyId;

	 	return view('v1.Members.Users')->with($data);
	}

	public function postAddEditUsers(){

		$Status = false;

		$auth = SharedController::checkAuthenticated();
	 	$stateOut = SharedController::privilgesResponse($auth);

		if(!$stateOut['Status']) return $stateOut;

		$userType 		= request()->userType;
		$firstName 		= request()->firstName;
		$lastName 		= request()->lastName;
		$pMobile 		= request()->pMobile;
		$sMobile 		= request()->sMobile;
		$email 			= request()->email;
		$password 		= request()->password;
		$editId 		= request()->editId;
		$prvlAdd 		= request()->prvlAdd;
		$prvlView 		= request()->prvlView;

			$checkUser = Usergroup::checkUser($pMobile);

			if(!$checkUser && $editId == 'null'){

				$res['Status'] 		= false;
				$res['Msg'] 		= 'USER_EXIST';
				return response()->json($res);
			}

			if($editId == 'null'){		

				$uid = request()->session()->get('LoggedUsr');
				$usertype = User::where('id', $uid)->first()->usertype;
				$adminId = null;
				if ($usertype == 2){
					$adminId = $uid;
				}

				if($password == 'null') $password = $pMobile;
				$user = Usergroup::insertUser($userType, $pMobile, $password, $adminId);

			$userDetailsAry = [
				'userid'        =>  $user,
				'firstname'     =>  $firstName,
				'lastname'      =>  $lastName,
				'primary_mobile' 	=> $pMobile,
				'secondary_mobile' 	=> $sMobile, 
				'email' 		=> $email, 
			];

			if ($sMobile == 'null'){
				$userDetailsAry = Arr::except($userDetailsAry, ['secondary_mobile']);
			}
	
			$userDetailsId = UserDetails::insertUserDetails($userDetailsAry);

			// Set custom privileges for staff
			if($userType == 3){
				Privilege::deletePrivileges($user);
				$this->ModifyPrivilages($user, $prvlAdd, $prvlView);
			}
	 	
			$res['Msg'] 		= 'User Added Successfully';
				
			} else {
				
				$user = Usergroup::updateUser($editId, $userType, $password);
				$user = $editId;
				
				$userDetails = UserDetails::getUserDetailsByUID($user);

				$userDetailsAry = [
					'firstname'     =>  $firstName,
					'lastname'      =>  $lastName,
				];
		
				$userDetailsId = UserDetails::updateUserDetails($user, $userDetailsAry);
			 	$res['Msg'] 		= 'User Updated Successfully';

			}
        
	 	$res['Status'] 		= true;
		$res['results'] 	= View::getUserViewById($user);
		return response()->json($res);
	}

	public function deleteUser ($uid = null) {
		
		$auth = SharedController::checkAuthenticated();
	
			 if(count($auth) == 0) {
				return redirect()->route('get-login')->with('Msg', 'Please Login');
			 } else {
	
				if($auth[1] == ''){
	
					AuthController::getLogout(1);
					return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access[2]. Contact your administrator');
				}else{
	
					$urlExist = 'FALSE';
					$currentURL = url()->current();
					$newUrls = [];
	
					foreach($auth[2] as $key => $sepUrls){
	
						$finalUrl = SharedController::convertSpecialCharacters($sepUrls);
						$newUrls[] = $key.':'.$finalUrl;
	
						if(strpos($currentURL, $sepUrls) !== false) $urlExist = 'TRUE';
					}
	
					$encode = implode('&&', $newUrls);
					if($urlExist == 'FALSE') return redirect()->route('get-access-denied', ['urls' => $encode]);
				}
			}

			if ($uid == null) {
				return redirect()->back()->with('Msg', 'User Id not present');
			}

			$deletionStatus = User::destroy($uid);

			if ($deletionStatus) {
				return redirect()->back()->with('SMsg', 'User deleted successfully');
			} else {
				return redirect()->back()->with('Msg', 'Error deleting User.');
			}
			
	}

	protected function ModifyPrivilages($user, $prvlAdd, $prvlView){
		
		$prvl = $mainMenu = [];

			if($prvlAdd != 'null' || $prvlView != 'null'){

				if($prvlAdd != 'null'){
					
					foreach(json_decode($prvlAdd) as $sepPrvlAdd){

						unset($sepV);
						$sepV = explode('-',$sepPrvlAdd);
						$prvl[$sepV[0]] = ['add'];
						$mainMenu[] = $sepV[1];
					}
				}

				if($prvlView != 'null'){
					
					foreach(json_decode($prvlView) as $sepPrvlView){

						unset($sepV);
						$sepV = explode('-',$sepPrvlView);

						if(array_key_exists($sepV[0], $prvl)) array_push($prvl[$sepV[0]],'view');
						else $prvl[$sepV[0]] = ['view'];

						$mainMenu[] = $sepV[1];
					}
				}	
			}

			$mMenu = array_unique($mainMenu);
			
			foreach($mMenu as $sepmMenu){

				Privilege::insertPrivilge($user,$sepmMenu);
			}

			if(count($prvl) > 0){

				foreach($prvl as $key => $sepPrvl){

					$add = 0; $view = 0;

					if(in_array('add', $sepPrvl)) $add = 1;
					if(in_array('view', $sepPrvl)) $view = 1;

					Privilege::insertPrivilge($user,$key, $add, $view);
				}
			}
	}

public function getDashboardProfile (){

		
    	$data['pageRootTitle'] 		= 'Members';
    	$data['pageSubTitle'] 		= 'Students';
    	$data['pageSubTitleNext']	= '';

	 	$auth = SharedController::checkAuthenticated();
		
	 	if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
		else{

            if($auth[1] == ''){

                AuthController::getLogout(1);
                return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access[5]. Contact your administrator');
			}else{

                $urlExist = 'FALSE';
                $currentURL = url()->current();
                $newUrls = [];

                foreach($auth[2] as $key => $sepUrls){

                    $finalUrl = SharedController::convertSpecialCharacters($sepUrls);
					$newUrls[] = $key.':'.$finalUrl;

					if(strpos($currentURL, $sepUrls) !== false) $urlExist = 'TRUE';
                }
				
				$encode = implode('&&', $newUrls);
				if($urlExist == 'FALSE') return redirect()->route('get-access-denied', ['urls' => $encode]);
			}
        }

	 	$data['authUsr'] 		= $auth[0];
	 	$data['html'] 			= $auth[1];

		$userid 	= request()->session()->get('LoggedUsr');
		$user = Usergroup::getUsergroupById($userid);
		
		return view('v1.Members.DashboardProfile')->with($data);

}

public function getChangePassword (){

	$data['pageRootTitle'] 		= 'Users';
	$data['pageSubTitle'] 		= 'Change Password';
	$data['pageSubTitleNext']	= '';

	$auth = SharedController::checkAuthenticated();

	 if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
	else{

		if($auth[1] == ''){

			AuthController::getLogout(1);
			return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access[4]. Contact your administrator');
		}else{

			$urlExist = 'FALSE';
			$currentURL = url()->current();
			$newUrls = [];

			foreach($auth[2] as $key => $sepUrls){

				$finalUrl = SharedController::convertSpecialCharacters($sepUrls);
				$newUrls[] = $key.':'.$finalUrl;

				if(strpos($currentURL, $sepUrls) !== false) $urlExist = 'TRUE';
			}
			// TO-DO remove last 4 urls from access denied page
			// $modifiedUrls = array_splice($newUrls, 0, -4);
			// $encode = implode('&&', $modifiedUrls);
			$encode = implode('&&', $newUrls);
			if($urlExist == 'FALSE') return redirect()->route('get-access-denied', ['urls' => $encode]);
		}
	}

	 $data['authUsr'] 	= $auth[0];
	 $data['html'] 		= $auth[1];

	 return view('v1.Members.ChangePassword')->with($data);
}

public function postChangePassword(){

	$Status = false;

	$auth = SharedController::checkAuthenticated();
	 $stateOut = SharedController::privilgesResponse($auth);

	if(!$stateOut['Status']) return $stateOut;

	$userType 		= request()->userType;
	$firstName 		= request()->firstName;
	$lastName 		= request()->lastName;
	$pMobile 		= request()->pMobile;
	$sMobile 		= request()->sMobile;
	$email 			= request()->email;
	$password 		= request()->password;
	$editId 		= request()->editId;
	$prvlAdd 		= request()->prvlAdd;
	$prvlView 		= request()->prvlView;

		$checkUser = Usergroup::checkUser($pMobile);

		if(!$checkUser && $editId == 'null'){

			$res['Status'] 		= false;
			$res['Msg'] 		= 'USER_EXIST';
			return response()->json($res);
		}

		if($editId == 'null'){		

			$uid = request()->session()->get('LoggedUsr');
			$usertype = User::where('id', $uid)->first()->usertype;
			$adminId = null;
			if ($usertype == 2){
				$adminId = $uid;
			}

			if($password == 'null') $password = $pMobile;
			$user = Usergroup::insertUser($userType, $pMobile, $password, $adminId);

		$userDetailsAry = [
			'userid'        =>  $user,
			'firstname'     =>  $firstName,
			'lastname'      =>  $lastName,
			'primary_mobile' 	=> $pMobile,
			'secondary_mobile' 	=> $sMobile, 
			'email' 		=> $email, 
		];

		if ($sMobile == 'null'){
			$userDetailsAry = Arr::except($userDetailsAry, ['secondary_mobile']);
		}

		$userDetailsId = UserDetails::insertUserDetails($userDetailsAry);

		// Set custom privileges for staff
		if($userType == 3){
			Privilege::deletePrivileges($user);
			$this->ModifyPrivilages($user, $prvlAdd, $prvlView);
		}
	 
		$res['Msg'] 		= 'User Added Successfully';
			
		} else {
			
			$user = Usergroup::updateUser($editId, $userType, $password);
			$user = $editId;
			
			$userDetails = UserDetails::getUserDetailsByUID($user);

			$userDetailsAry = [
				'firstname'     =>  $firstName,
				'lastname'      =>  $lastName,
			];
	
			$userDetailsId = UserDetails::updateUserDetails($user, $userDetailsAry);
			 $res['Msg'] 		= 'User Updated Successfully';

		}
	
	 $res['Status'] 		= true;
	$res['results'] 	= View::getUserViewById($user);
	return response()->json($res);
}
}