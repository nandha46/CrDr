<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;

use App\Models\v1\Usergroup;
use App\Models\v1\Contactdetail;
use App\Models\v1\Emailaddress;
use App\Models\v1\Studentsclass;
use App\Models\v1\Orgstudent;
use App\Models\v1\StaffDetail;
use App\Models\v1\Orgclassstaff;
use App\Models\v1\Address;
use App\Models\v1\Student;
use App\Models\v1\Staff;
use App\Http\Controllers\v1\SharedController;
use App\Models\v1\Family;
use App\Models\v1\Privilege;

class UploadController extends Controller{

	public function __construct(){

		$this->default = SharedController::getAppDefaults();
	}

	public function uploadStudents(){

		$Status = false;

		$firstName 		= request()->firstName;
		$lastName 		= request()->lastName;
		$gender 		= request()->gender;
		$dateOfBirth 	= request()->dateOfBirth;
		$fathername 	= request()->fathername;
		$mothername 	= request()->mothername;
		$guardianname 	= request()->guardianname;
		$pMobile 		= request()->pMobile;
		$sMobile 		= request()->sMobile;
		$email 			= request()->email;
		$addressin 		= request()->address;
		$city 			= request()->city;
		$state 			= request()->state;
		$pincode 		= request()->pincode;
		$organization 	= request()->organization;
		$standard 		= request()->standard;
		$section 		= request()->section;
		$academicYear   = request()->academicYear;

		 $password = '123456';

		$StudentUserName = Orgstudent::getOrgStuDetails($organization);
           
			if(count($StudentUserName) > 0){
				$username = 'hf-stu-000'.$StudentUserName[0]['orstStuMasterId']+1;
			} else {
				$username = 'hf-stu-0001';
			}

			$usertype = '3';

			$user = Usergroup::insertUser($usertype, $username, $password, $organization);

			$student = Student::insertStudent($user, $firstName, $lastName, $gender, $dateOfBirth);
			$address = Address::insertaddress($addressin, $city, $state, $pincode);
			$contact = Contactdetail::insertContact($pMobile, $sMobile);
			$emailDet = Emailaddress::insertEmail($email);
			Family::insertFamily($user, $fathername, $mothername, $guardianname, $contact, $address, $emailDet);
			$orgStudent = Orgstudent::insertOrgStudent($organization, $student);
			$studentClass = Studentsclass::insertStudentClass($orgStudent, $standard, $section, $academicYear);
		
			$Status = true;
		
	 	$res['Status'] 		= $Status;
		return response()->json($res);
		
	}

	public function uploadteachers(){

		$Status = false;
		
		$firstName 		= request()->firstName;
		$lastName 		= request()->lastName;
		$gender 		= request()->gender;
		$dateOfBirth 	= request()->dateOfBirth;
		$fathername 	= request()->fathername;
		$mothername 	= request()->mothername;
		$guardianname 	= request()->guardianname;
		$pMobile 		= request()->pMobile;
		$sMobile 		= request()->sMobile;
		$email 			= request()->email;
		$address 		= request()->address;
		$city 			= request()->city;
		$state 			= request()->state;
		$pincode 		= request()->pincode;
		$organization 	= request()->organization;
		$yrOfExp 		= request()->yrOfExp;
		$password 		= request()->password;
		$editId 		= request()->editId;

		$prvlAdd = '["5-4-false-add","9-8-false-add","36-8-false-add","37-18-false-add","38-18-false-add","30-27-false-add","33-27-false-add"]';
		$prvlView = '["5-4-false-edit","9-8-false-edit","36-8-false-edit","37-18-false-edit","38-18-false-edit","30-27-false-edit","33-27-false-edit"]';
		$designation = request()->designation;

			if($password == 'null') $password = $pMobile;

			$StaffUserName = StaffDetail::getOrgStaffDetails($organization);
           
			if(count($StaffUserName) > 0){
				$username = 'hf-stf-000'.$StaffUserName[0]['staff_id']+1;
			} else {
				$username = 'hf-stf-0001';	
			}
			$usertype = '4';
			$userid = Usergroup::insertUser($usertype, $username, $password, $organization);
			$address = Address::insertaddress($address, $city, $state, $pincode);
			$contact = Contactdetail::insertContact($pMobile, $sMobile);
			$emailDet = Emailaddress::insertEmail($email);
		
			Usergroup::insertFile(null, $userid);

			$inStfAry = [
				'stffUserId'=> $userid,
				'stffFirstName'=> $firstName,
				'stffLastName'=> $lastName,
				'stffGender' => $gender,
				'stffDOB' => $dateOfBirth,
				'stffOfficalEmailId' => $emailDet,
				'stffAddressId' => $address,
				'stffPersonalContactId' => $contact,
			];
			$staff = Staff::insertStaff($inStfAry);
			$staff = $staff->id;

			$orgStfAry = [
				'org_id'=> $organization,
				'staff_id'=> $staff,
				'yearsOfExp' => $yrOfExp,
				'staffType'=> 1,
				'designation'=> $designation,
			];
			$staffDetails = StaffDetail::insertOrgStaff($orgStfAry);
			
			Family::insertFamily($userid, $fathername, $mothername, $guardianname, $contact, $address, $emailDet);

			$assignedClassArr = null;
			$assignedsubjectsArr = null;
			$staffClass = Orgclassstaff::insertOrgClassStaff($staff, null, null);
		
			$this->ModifyPrivilages($userid, $prvlAdd, $prvlView);
        
			$Status = true;

	 	$res['Status'] 		= $Status;
		return response()->json($res);
	}

	public function uploadLessons(){

		$Status = false;

		$firstName 		= request()->firstName;
		$lastName 		= request()->lastName;
		$gender 		= request()->gender;
		$dateOfBirth 	= request()->dateOfBirth;
		$fathername 	= request()->fathername;
		$mothername 	= request()->mothername;
		$guardianname 	= request()->guardianname;
		$pMobile 		= request()->pMobile;
		$sMobile 		= request()->sMobile;
		$email 			= request()->email;
		$addressin 		= request()->address;
		$city 			= request()->city;
		$state 			= request()->state;
		$pincode 		= request()->pincode;
		$organization 	= request()->organization;
		$standard 		= request()->standard;
		$section 		= request()->section;
		$academicYear   = request()->academicYear;

		 $password = '123456';

		$StudentUserName = Orgstudent::getOrgStuDetails($organization);
           
			if(count($StudentUserName) > 0){
				$username = 'hf-stu-000'.$StudentUserName[0]['orstStuMasterId']+1;
			} else {
				$username = 'hf-stu-0001';
			}

			$usertype = '3';

			$user = Usergroup::insertUser($usertype, $username, $password, $organization);

			$student = Student::insertStudent($user, $firstName, $lastName, $gender, $dateOfBirth);
			$address = Address::insertaddress($addressin, $city, $state, $pincode);
			$contact = Contactdetail::insertContact($pMobile, $sMobile);
			$emailDet = Emailaddress::insertEmail($email);
			Family::insertFamily($user, $fathername, $mothername, $guardianname, $contact, $address, $emailDet);
			$orgStudent = Orgstudent::insertOrgStudent($organization, $student);
			$studentClass = Studentsclass::insertStudentClass($orgStudent, $standard, $section, $academicYear);
		
			$Status = true;
		
	 	$res['Status'] 		= $Status;
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

}