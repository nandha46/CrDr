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

	public function getStudents(){

	 	$data['appVersion'] 		= $this->default->defVersion;
    	$data['adminUrl'] 			= $this->default->defAdminUrl;
		// No need for base url anymore. Injected to JS via asset() value from ASSET_URL .env file
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

		$organization = Orgdetail::getOrgDetails();
		$standard = Standard::getActiveStandard();
		$section = Section::getSection();

	 	$data['authUsr'] 		= $auth[0];
	 	$data['html'] 			= $auth[1];
	 	$data['organization'] 	= $organization;
	 	$data['standard'] 		= $standard;
	 	$data['section'] 		= $section;
		Debugbar::startMeasure('get view', 'Time taken to fetch view');
		$students = View::getAllStudents();
		Debugbar::stopMeasure('get view');
		
		$data['students'] 		= $students;
		$data['profilePic'] = request()->session()->get('profile_pic');
		
	 	return view($this->default->defVersion.'.Members.Students')->with($data);
	}

	public function postAddEditStudents(){

		$Status = false;

		$auth = SharedController::checkAuthenticated();
	 	$stateOut = SharedController::privilgesResponse($auth);

		if(!$stateOut['Status']) return $stateOut;

		$firstName 		= request()->firstName;
		$lastName 		= request()->lastName;
		$gender 		= request()->gender;
		$dateOfBirth 	= request()->dateOfBirth;
		$parent_guardian= request()->parent_guardian;
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
		$password 		= request()->password;
		$editId 		= request()->editId;

		if($editId == 'null'){		

			if($password == 'null') $password = '123456';

			$StudentUserName = Orgstudent::getOrgStuDetails($organization);
           
			if(count($StudentUserName) > 0){
				$username = 'hf-stu-000'.$StudentUserName[0]['orstStuMasterId']+1;
			} else {
				$username = 'hf-stu-0001';
			}
			$usertype = '3';

			$user = Usergroup::insertUser($usertype, $username, $password, $organization);

			$totalFiles = request()->totalFiles;
			if($totalFiles != 0){
				$ext = request()->files_0->extension();
				$name = $firstName.'_'.$user.'.'.$ext;
				$id_photo = request()->files_0->storeAs('uploads/StudentData/Id_cards',$name);
			} else {
				if($gender == 1){
					$id_photo = 'uploads/StudentData/default_boy.png';
				} else {
					$id_photo = 'uploads/StudentData/default_girl.png';
				}
			}
			Usergroup::insertFile($id_photo, $user);
			$student = Student::insertStudent($user, $firstName, $lastName, $gender, $dateOfBirth);
			$address = Address::insertaddress($addressin, $city, $state, $pincode);
			$contact = Contactdetail::insertContact($pMobile, $sMobile);
			$emailDet = Emailaddress::insertEmail($email);
			Family::insertFamily($user, $fathername, $mothername, $guardianname, $contact, $address, $emailDet);
			$orgStudent = Orgstudent::insertOrgStudent($organization, $student);
			$studentClass = Studentsclass::insertStudentClass($orgStudent, $standard, $section, $academicYear);
			$Status = true;
			$res['Msg'] 		= 'Student Added Successfully';
		} else {

			$totalFiles = request()->totalFiles;
			
			$student = Student::UpdateStudent($editId, $firstName, $lastName, $gender, $dateOfBirth);
			$userid = Student::getStudentById($editId)->stuUserId;
			if($totalFiles != 0){
				$ext = request()->files_0->extension();
				$name = $firstName.'_'.$userid.'.'.$ext;
				$id_photo = request()->files_0->storeAs('uploads/studentData/Id_cards',$name);
				Usergroup::insertFile($id_photo, $userid);
			}
			if($password != 'null') {
				Usergroup::updateUserPassword($userid, $password);
			}
			$family = Family::getFamilyByUserId($userid);
			if ($family == null){
				$address = Address::insertaddress($addressin, $city, $state, $pincode);
				$contact = Contactdetail::insertContact($pMobile, $sMobile);
				$emailDet = Emailaddress::insertEmail($email);
				Family::insertFamily($userid, $fathername, $mothername, $guardianname, $contact, $address, $emailDet);
			} else {
				$address = Address::updateAddress($family->address_id, $addressin, $city, $state, $pincode);
				$contact = Contactdetail::updateContact($family->contact_id, $pMobile, $sMobile);
				$emailDet = Emailaddress::updateEmail($family->email_id, $email);
				Family::updateFamily($userid, $fathername, $mothername, $guardianname);
			}
			
			$orgStudent = Orgstudent::updateOrgStudent($organization, $student);
			$studentClass = Studentsclass::updateStudentClass($orgStudent, $standard, $section, $academicYear);
			$student = $editId;
			$Status = true;
			$res['Msg'] 		= 'Student Updated Successfully';
		}
        
	 	$res['Status'] 		= $Status;
		$resultant_student = View::getOneStudents($student);

		$res['results'] = $resultant_student;
		return response()->json($res);
		
	}

	public function deleteStudent($stuId){

		$data['stuid'] = $stuId;
		$data['status'] = false;
		
		$student = Student::where('stuId', $stuId)->first();
		if($student){
			$userid = $student->stuUserId;
			$family = Family::where('userid', $userid)->first();
			if ($family){
				$addressid = $family->address_id;
				$contactid = $family->contact_id;
				$emailid = $family->email_id;
				$data['family'] = Family::where('userid', $userid)->delete();
				$data['address'] = Address::where('id', $addressid)->delete();
				$data['contact'] = Contactdetail::where('condId', $contactid)->delete();
				$data['email'] = Emailaddress::where('emlId', $emailid)->delete();
			}
			$data['student'] = Student::where('stuId', $stuId)->delete();
			if($userid){
				$data['user'] = Usergroup::where('id',$userid)->delete();		
				$data['student marks'] = StudentsMark::where('student_user_id', $userid)->delete();
			}
		}
		$orgStu = Orgstudent::where('orstStuMasterId', $stuId)->first();
		if($orgStu){
			$orstId = $orgStu->orstId;

			$data['student class'] = Studentsclass::where('stuclOrgStuMasterId', $orstId)->delete();
			$data['org student'] = Orgstudent::where('orstStuMasterId', $stuId)->delete();
		}

		$data['status'] = true;

		return response()->json($data, 200);
	}

	public function getTeachers(){

		$data['appVersion'] 		= $this->default->defVersion;
		$data['adminUrl'] 			= $this->default->defAdminUrl;
		$data['baseUrl'] 			= $this->default->defBaseUrl;
		$data['prefix'] 			= $this->default->prefix;
		$data['pageRootTitle'] 		= 'Members';
		$data['pageSubTitle'] 		= 'Teachers';
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
			   $organization = Orgdetail::getOrgDetails();
			   $standard = Standard::getActiveStandard();
			   $subject = Subject::getActiveSubjects();
			   $encode = implode('&&', $newUrls);
			   if($urlExist == 'FALSE') return redirect()->route('get-access-denied', ['urls' => $encode]);
		   }
	   }

		$data['authUsr'] 	= $auth[0];
		$data['html'] 		= $auth[1];
		$data['organization'] 	= $organization;
	 	$data['standard'] 		= $standard;
	 	$data['subject'] 		= $subject;
		$teachers = View::getAllStaffView();

		$teachers = $teachers->each(function($teacher){
			$teacher->date_of_birth = date('d F Y', strtotime($teacher->stffDOB));
			$teacher->fullName = $teacher->stffFirstName.' '.$teacher->stffLastName;
			if ($teacher->stffGender == 1){
				$teacher->gender = 'Male';	
			} else if($teacher->stffGender == 2) {
				$teacher->gender = 'Female';	
			} else {
				$teacher->gender = 'Others';
			}
			return $teacher;
		});
		$data['teachers'] 	= $teachers;

		return view($this->default->defVersion.'.Members.Teachers')->with($data);
    }

	public function postAddEditTeachers(){

		$Status = false;

		$auth = SharedController::checkAuthenticated();
	 	$stateOut = SharedController::privilgesResponse($auth);

		if(!$stateOut['Status']) return $stateOut;

		$firstName 		= request()->firstName;
		$lastName 		= request()->lastName;
		$gender 		= request()->gender;
		$dateOfBirth 	= request()->dateOfBirth;
		$parent_guardian= request()->parent_guardian;
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
		$assignedClass 		= request()->assignedClass;
		$assignedSubjects 		= request()->assignedSubjects;
		$reportingTo 		= request()->reportingTo;
		$degreeCount 		= request()->degreeCount;
		$eduQualification 		= request()->degree0;
		$graduationyear 		= request()->graduationYear0;
		$class 		= request()->rankClass0;
		$percentage 		= request()->percentage0;
		$password 		= request()->password;
		$editId 		= request()->editId;

		$prvlAdd = '["5-4-false-add","9-8-false-add","36-8-false-add","37-18-false-add","38-18-false-add","30-27-false-add","33-27-false-add"]';
		$prvlView = '["5-4-false-edit","9-8-false-edit","36-8-false-edit","37-18-false-edit","38-18-false-edit","30-27-false-edit","33-27-false-edit"]';
		// $dateOfHiring = request()->date_of_hiring;
		//  $staffType = request()->staff_type;
		$designation = request()->designation;
		//  $idCardNo = request()->idCardNo;

		if($editId == 'null'){		

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
		
			$totalFiles = request()->totalFiles;
			if($totalFiles != 0){
				$ext = request()->files_0->extension();
				$name = $firstName.'_'.$userid.'.'.$ext;
				$id_photo = request()->files_0->storeAs('uploads/teacherData/Id_cards',$name);
			}else {
				if($gender == 1){
					$id_photo = 'uploads/teacherData/teacher_default_male.png';
				} else {
					$id_photo = 'uploads/teacherData/teacher_default.png';
				}
			}
			Usergroup::insertFile($id_photo, $userid);

			$inStfAry = [
				'stffUserId'=> $userid,
				'stffFirstName'=> $firstName,
				'stffLastName'=> $lastName,
				'stffGender' => $gender,
				'stffDOB' => date('Y-m-d', strtotime($dateOfBirth)),
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
				// 'dateOfHiring'=> $dateOfHiring,
				'reporting_to' => $reportingTo,
				// 'idCardNo'=> $idCardNo,
			];
			$staffDetails = StaffDetail::insertOrgStaff($orgStfAry);
			
			Family::insertFamily($userid, $fathername, $mothername, $guardianname, $contact, $address, $emailDet);

			$staffEduAry = [
				'staff_id' => $staff,
				'qualification'=> $eduQualification,
			];

			$staff_edu = StaffEducation::insertStaffEducation($staffEduAry);
			
			$inStuEduDetailAry = [
				'staff_edu_id'=>$staff_edu,
				'passedYear'=> $graduationyear,
				'percentage'=> $percentage,
				'degree_class'=> $class,
			];
			$staff_edu_details = StaffEducationDetails::insertStaffEduDetails($inStuEduDetailAry);
			
			for ($i = 1; $i<$degreeCount; $i++) {
				$eduQualification 		= request()->input('degree'.$i);
				$staffEduAry = [
					'staff_id' => $staff,
					'qualification'=> $eduQualification,
				];
				$staff_edu = StaffEducation::insertStaffEducation($staffEduAry);
				$graduationyear 		= request()->input('graduationYear'.$i);
				$class 		= request()->input('rankClass'.$i);
				$percentage 		= request()->input('percentage'.$i);
				$inStuEduDetailAry = [
					'staff_edu_id'=>$staff_edu,
					'passedYear'=> $graduationyear,
					'percentage'=> $percentage,
					'degree_class'=> $class,
				];
				$staff_edu_details = StaffEducationDetails::insertStaffEduDetails($inStuEduDetailAry);
			}
			
			$assignedClassArr = explode(',',$assignedClass);
			$assignedsubjectsArr = explode(',',$assignedSubjects);
			$staffClass = Orgclassstaff::insertOrgClassStaff($staff, json_encode($assignedClassArr), json_encode($assignedsubjectsArr));
		
			$this->ModifyPrivilages($userid, $prvlAdd, $prvlView);
			$res['Msg'] 		= 'Teacher Added Successfully';

		} else {

			$staff = Staff::UpdateStaff($editId, $firstName, $lastName, $gender, $dateOfBirth, $password);
			$userid = $staff->stffUserId;
			Address::updateaddress($staff->stffAddressId, $address, $city, $state, $pincode);
			Emailaddress::updateEmail($staff->stffOfficalEmailId, $email);
			Contactdetail::updateContact($staff->stffPersonalContactId, $pMobile, $sMobile);
			StaffDetail::updateOrgStaff($staff->stffId,['yearsOfExp' => $yrOfExp, 'designation'=> $designation, 'reporting_to' => $reportingTo,]);
			
			Family::updateFamily($userid, $fathername, $mothername, $guardianname);

			$stfEduIds = StaffEducation::getStaffEducationId($staff->stffId);
			StaffEducation::deleteStaffEducation($staff->stffId);
			StaffEducationDetails::deleteStaffEduDetails($stfEduIds);

				$staffEduAry = [
					'staff_id' => $staff->stffId,
					'qualification'=> $eduQualification,
				];
				
				$staff_edu = StaffEducation::insertStaffEducation($staffEduAry);
				
				$inStuEduDetailAry = [
					'staff_edu_id'=>$staff_edu,
					// 'collegeName'=> $collegeName,
					'passedYear'=> $graduationyear,
					'percentage'=> $percentage,
					'degree_class'=> $class,
				];

				$staff_edu_details = StaffEducationDetails::insertStaffEduDetails($inStuEduDetailAry);

				for ($i = 1; $i<$degreeCount; $i++) {

					$eduQualification 		= request()->input('degree'.$i);
					Debugbar::info($eduQualification);
					$staffEduAry = [
						'staff_id' => $staff->stffId,
						'qualification'=> $eduQualification,
					];
					$staff_edu = StaffEducation::insertStaffEducation($staffEduAry);
					$graduationyear 		= request()->input('graduationYear'.$i);
					Debugbar::info($graduationyear);
					$class 		= request()->input('rankClass'.$i);
					$percentage 		= request()->input('percentage'.$i);
					$inStuEduDetailAry = [
						'staff_edu_id'=>$staff_edu,
						'passedYear'=> $graduationyear,
						'percentage'=> $percentage,
						'degree_class'=> $class,
					];
					$staff_edu_details = StaffEducationDetails::insertStaffEduDetails($inStuEduDetailAry);
				}
				
			$totalFiles = request()->totalFiles;
			if($totalFiles != 0){
				$ext = request()->files_0->extension();
				$name = $firstName.'_'.$userid.'.'.$ext;
				$id_photo = request()->files_0->storeAs('uploads/teacherData/Id_cards',$name);
				Usergroup::insertFile($id_photo, $userid);
			}

			$assignedClassArr = explode(',',$assignedClass);
			$assignedsubjectsArr = explode(',',$assignedSubjects);
			$staffClass = Orgclassstaff::updateOrgClassStaff($staff->stffId, json_encode($assignedClassArr), json_encode($assignedsubjectsArr));
			
			$staff = $editId;
			$res['Msg'] 		= 'Teacher Updated Successfully';
		}

		$teacher = View::getStaffView($staff);
			$teacher->date_of_birth = date('d F Y', strtotime($teacher->stffDOB));
			$teacher->fullName = $teacher->stffFirstName.' '.$teacher->stffLastName;
			if ($teacher->stffGender == 1){
				$teacher->gender = 'Male';	
			} else if($teacher->stffGender == 2) {
				$teacher->gender = 'Female';	
			} else {
				$teacher->gender = 'Others';
			}
        
	 	$res['Status'] 		= true;
		$res['results'] 	= $teacher;
		return response()->json($res);

	}

   // Users

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
		$data['organization'] 		= Orgdetail::getOrgDetails();

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

	public function promoteStudents(){

		$data['appVersion'] 		= $this->default->defVersion;
		$data['adminUrl'] 			= $this->default->defAdminUrl;
		$data['baseUrl'] 			= $this->default->defBaseUrl;
		$data['prefix'] 			= $this->default->prefix;
    	$data['pageRootTitle'] 		= 'Promotions';
    	$data['pageSubTitle'] 		= 'Students';
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
		$data['standards'] 		= Standard::getActiveStandard();
		$data['sections'] 		= Section::getSection();
		$students = View::getStudents();
		$data['students'] 		= $students;
		$data['transferClass'] 		= 1;
	   
		return view($this->default->defVersion.'.Members.Promote')->with($data);
   }

   public function postAddEditPromotions(){

	$Status = false;

	$auth = SharedController::checkAuthenticated();
	 $stateOut = SharedController::privilgesResponse($auth);

	if(!$stateOut['Status']) return $stateOut;

	$passed 		= request()->passed;
	$failed 		= request()->failed;
	$transferred 		= request()->transferred;

	$passed = json_decode($passed);
	$failed = json_decode($failed);
	$transferred = json_decode($transferred);

	$passed_uid = Orgstudent::getUserid($passed);
	$failed_uid = Orgstudent::getUserid($failed);
	$transferred_uid = Orgstudent::getUserid($transferred);

	Debugbar::debug($passed);

	$currentAcademicYear = '2023-2024';
	$class = 2;

	$result1 = Studentsclass::promoteStudents($passed_uid, $currentAcademicYear, $class);
	$result2 = Studentsclass::failStudents($failed_uid, $currentAcademicYear);
	$result3 = Studentsclass::transferStudents($transferred_uid);

	$data['promoted'] = $result1;
	$data['failed'] = $result2;
	$data['transferred'] = $result3;
	
	$Status = true;
	
	$res['Status'] 		= $Status;
	$res['results'] 	= $data;
	return response()->json($res);
	
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
		switch ($usertype) {
			case 4:
				$staffid = Staff::where('stffUserId', $userid)->first()->stffId;
				$detail = View::getStaffView($staffid);
				$profile['type'] = 'Teacher';
				$profile['name'] = $detail->stffFirstName.' '.$detail->stffLastName;
				$profile['designation'] = $detail->designation;
				$profile['classLabel'] = 'Class';
				$profile['class'] = $detail->ogcstffClsMasterId;
				$profile['email'] = $detail->emlOfficialAddress;
				$profile['age'] = $detail->stffFirstName;
				$profile['phone'] = $detail->condOfficialNumber;
				$profile['parentsLabel'] = 'Parents';
				$profile['parents'] = $detail->father_name.' '.$detail->mother_name;
				$profile['birthday'] = $detail->stffDOB;
				$profile['address'] = $detail->address;
				$profile['city'] = $detail->city;
				$profile['username'] = $detail->username;
				break;
			case 2:
				Debugbar::info('Case 2 Admin');
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
				break;
			default:
				Debugbar::info('Case default Admin');
				$detail = View::getUserViewById($userid);				
				$profile['type'] = 6;
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
		}

		$data['profile'] = $profile;

		Debugbar::info($profile);

		return view($this->default->defVersion.'.Members.DashboardProfile')->with($data);

}
}