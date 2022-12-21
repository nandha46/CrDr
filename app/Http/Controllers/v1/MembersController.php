<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;

use App\Models\v1\Usergroup;
use App\Models\v1\Menu;
use App\Models\v1\Privilege;
use App\Models\v1\Contactdetail;
use App\Models\v1\Emailaddress;
use App\Models\v1\Studentsclass;
use App\Models\v1\Orgdetail;
use App\Models\v1\Orgstudent;
use App\Models\v1\StaffDetail;
use App\Models\v1\Orgclassstaff;
use App\Models\v1\Standard;
use App\Models\v1\Section;
use App\Models\v1\Subject;
use App\Models\v1\Address;
use App\Models\v1\Student;
use App\Models\v1\Staff;
use App\Models\v1\View;
use App\Http\Controllers\v1\AuthController;
use App\Http\Controllers\v1\SharedController;
use App\Models\v1\Family;
use App\Models\v1\StaffEducation;
use App\Models\v1\StaffEducationDetails;
use App\Models\v1\StudentsMark;
use App\Models\v1\UserDetails;
use Barryvdh\Debugbar\Facades\Debugbar;

class MembersController extends Controller{

	public function __construct(){

		$this->default = SharedController::getAppDefaults();
	}

	public function getUsers(){

		$data['appVersion'] 		= $this->default->defVersion;
		$data['adminUrl'] 			= $this->default->defAdminUrl;
		$data['baseUrl'] 			= $this->default->defBaseUrl;
		$data['prefix'] 			= $this->default->prefix;
    	$data['pageRootTitle'] 		= 'Members';
    	$data['pageSubTitle'] 		= 'Users';
    	$data['pageSubTitleNext']	= '';

		$data['country'] = SharedController::getCountries();
		$data['states'] = SharedController::getStates();

		$auth = SharedController::checkAuthenticated();

	 	if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
		else{

            if($auth[1] == ''){

                AuthController::getLogout(1);
                return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access. Contact your administrator');
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

	 	$data['authUsr'] 	= $auth[0];
	 	$data['html'] 		= $auth[1];
		$data['menu'] 		= Menu::getMenus();
		$data['users'] 		= View::getUsersView();
		$data['organization'] 		= [];

		Debugbar::info(View::getUsersView());

	 	return view($this->default->defVersion.'.Members.Users')->with($data);
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
		$gender 		= request()->gender;
		$address 		= request()->address;
		$city 			= request()->city;
		$state 			= request()->state;
		$pincode 		= request()->pincode;
		$dateOfBirth 	= request()->dateOfBirth;
		$doh 			= request()->dateOfHiring;
		$yrOfExp 		= request()->yrOfExp;
		$proofType 		= request()->proofType;
		$proofNo 		= request()->proofNo;
		$expiryDate 	= request()->expiryDate;
		$password 		= request()->password;
		$editId 		= request()->editId;
		$prvlAdd 		= request()->prvlAdd;
		$prvlView 		= request()->prvlView;
		$organization 	= request()->organization;

			$checkUser = Usergroup::checkUser($pMobile);

			if(!$checkUser && $editId == 'null'){

				$res['Status'] 		= false;
				$res['Msg'] 		= 'USER_EXIST';
				return response()->json($res);
			}

			if($editId == 'null'){		

				if($password == 'null') $password = $pMobile;
				$user = Usergroup::insertUser($userType, $pMobile, $password, $organization);
				Usergroup::insertFile('uploads/userData/admin.png', $user);

			$address = Address::insertaddress($address, $city, $state, $pincode);
			$contact = Contactdetail::insertContact($pMobile, $sMobile);
			$emailDet = Emailaddress::insertEmail($email);

			$userDetailsAry = [
				'userid'        =>  $user,
				'firstname'     =>  $firstName,
				'lastname'      =>  $lastName,
				'gender'        =>  $gender,
				'dob'           =>  date('Y-m-d', strtotime($dateOfBirth)),
				'years_of_exp'	=>  $yrOfExp,
				'contact_id' 	=> $contact,
				'address_id' 	=> $address, 
				'email_id' 		=> $emailDet, 
				'date_of_hiring'=> date('Y-m-d', strtotime($doh)),
				'proof_type' 	=> $proofType,
				'proof_no'		=> $proofNo,
				'proof_expiry'  => date('Y-m-d', strtotime($expiryDate)),
			];
	
			$userDetailsId = UserDetails::insertUserDetails($userDetailsAry);

			if($userType == 2){
				// set custom privilages for Admin
			} else if ($userType == 5) {
				Privilege::deletePrivileges($user);
				$this->ModifyPrivilages($user, $prvlAdd, $prvlView);
			} else {
				Privilege::deletePrivileges($user);
				$this->ModifyPrivilages($user, $prvlAdd, $prvlView);
			}
	 	
			$res['Msg'] 		= 'User Added Successfully';
				
			} else {
				
				$user = Usergroup::updateUser($editId, $userType, $password);
				$user = $editId;
				
				$userDetails = UserDetails::getUserDetailsByUID($user);
				
				$address = Address::updateAddress($userDetails->address_id, $address, $city, $state, $pincode);
				$contact = Contactdetail::updateContact($userDetails->contact_id, $pMobile, $sMobile);
				$emailDet = Emailaddress::updateEmail($userDetails->email_id, $email);

				$userDetailsAry = [
					'firstname'     =>  $firstName,
					'lastname'      =>  $lastName,
					'gender'        =>  $gender,
					'dob'           =>  date('Y-m-d', strtotime($dateOfBirth)),
					'years_of_exp'	=>  $yrOfExp,
					'date_of_hiring'=> date('Y-m-d', strtotime($doh)),
					'proof_type' 	=> $proofType,
					'proof_no'		=> $proofNo,
					'proof_expiry'  => date('Y-m-d', strtotime($expiryDate)),
				];
		
				$userDetailsId = UserDetails::updateUserDetails($user, $userDetailsAry);
			 	$res['Msg'] 		= 'User Updated Successfully';

			}

			$totalFiles = request()->totalFiles;
			if($totalFiles != 0) {
				$ext = request()->files_0->extension();
				$name = $firstName.'_'.$editId.'.'.$ext;
				$id_photo = request()->files_0->storeAs('uploads/userData/proofs',$name);
				UserDetails::updateUserproof($editId, $id_photo);
			}
        
	 	$res['Status'] 		= true;
		$res['results'] 	= View::getUserViewById($user);
		return response()->json($res);
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

	$data['appVersion'] 		= $this->default->defVersion;
    	$data['adminUrl'] 			= $this->default->defAdminUrl;
		$data['baseUrl'] 			= $this->default->defBaseUrl;
		$data['prefix'] 			= $this->default->prefix;
    	$data['pageRootTitle'] 		= 'Members';
    	$data['pageSubTitle'] 		= 'Students';
    	$data['pageSubTitleNext']	= '';
		$data['states'] 			= SharedController::getStates();

	 	$auth = SharedController::checkAuthenticated();
		
	 	if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
		else{

            if($auth[1] == ''){

                AuthController::getLogout(1);
                return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access. Contact your administrator');
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
		$usertype = $user->usertype;
				$detail = View::getUserViewById($userid);				
				$profile['type'] = 2;
				$profile['name'] = $detail->firstname.' '.$detail->lastname;
				$profile['designation'] = 'Admin';
				$profile['classLabel'] = 'Placeholder';
				$profile['class'] = 'Placeholder';
				$profile['parentsLabel'] = 'Placeholder2';
				$profile['parents'] = 'Place2';
				$profile['email'] = $detail->emlOfficialAddress;
				$profile['age'] = 10;
				$profile['phone'] = $detail->condOfficialNumber;
				$profile['birthday'] = $detail->dob;
				$profile['address'] = $detail->address;
				$profile['city'] = $detail->city;
				$profile['username'] = $detail->username;
			
		$data['profile'] = $profile;

		Debugbar::info($profile);

		return view($this->default->defVersion.'.Members.DashboardProfile')->with($data);

}
}