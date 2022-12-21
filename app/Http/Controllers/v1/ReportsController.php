<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\v1\AuthController;
use App\Http\Controllers\v1\SharedController;
use App\Models\v1\Document;
use App\Models\v1\Event;
use App\Models\v1\Pressrelease;
use App\Models\v1\Section;
use App\Models\v1\Standard;
use Barryvdh\Debugbar\Facades\Debugbar;
use Illuminate\Support\Facades\DB;

class ReportsController extends Controller{

    public function __construct(){

		$this->default = SharedController::getAppDefaults();
	}

	public function getAnalyticReports(){

        $data['appVersion'] 		= $this->default->defVersion;
        $data['adminUrl'] 			= $this->default->defAdminUrl;
        $data['baseUrl'] 			= $this->default->defBaseUrl;
        $data['prefix'] 			= $this->default->prefix;
        $data['pageRootTitle'] 		= 'Dashboard';
        $data['pageSubTitle'] 		= 'Analytics';
        $data['pageSubTitleNext']	= '';

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
       
        $data['authUsr'] = $auth[0];
        $data['html'] = $auth[1];

        // $data['students'] = View::getStudents()->count();
        $data['students'] = 100;
        // $data['teachers'] = View::getAllStaffView()->count();
        $data['teachers'] = 15;
        $data['staffs'] = 8;
        $data['events'] = 6;
        $data['press_releases'] = 12;
        $data['docs'] = 15;
        $data['videos'] = 0;

        return view($this->default->defVersion.'.Reports.Analytics')->with($data);
   }

    public function getUploadTSV(){

        $data['appVersion'] 		= $this->default->defVersion;
        $data['adminUrl'] 			= $this->default->defAdminUrl;
        $data['baseUrl'] 			= $this->default->defBaseUrl;
        $data['prefix'] 			= $this->default->prefix;
        $data['pageRootTitle'] 		= 'Dashboard';
        $data['pageSubTitle'] 		= 'Uploads';
        $data['pageSubTitleNext']	= '';

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
       
        $data['authUsr'] = $auth[0];
        $data['html'] = $auth[1];

        return view($this->default->defVersion.'.Reports.Uploads')->with($data);
   }

   public function getStudentReports(Request $request){

    $data['appVersion'] 		= $this->default->defVersion;
        $data['adminUrl'] 			= $this->default->defAdminUrl;
        $data['baseUrl'] 			= $this->default->defBaseUrl;
        $data['prefix'] 			= $this->default->prefix;
        $data['pageRootTitle'] 		= 'Reports';
        $data['pageSubTitle'] 		= 'Students';
        $data['pageSubTitleNext']	= '';

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

        $students = DB::table('students')->leftJoin('users','users.id', '=', 'students.stuUserId')  
        ->leftJoin('family','family.userid','=','students.stuUserId')
        ->leftJoin('contactdetails','family.contact_id','=','contactdetails.condId')
        ->leftJoin('addresses','family.address_id','=','addresses.id')
        ->leftJoin('states','addresses.state','=','states.id')
        ->leftJoin('emailaddresses','family.email_id','=','emailaddresses.emlId')
        ->leftJoin('orgstudents','orgstudents.orstStuMasterId','=','students.stuId')
        ->leftJoin('orgdetails','orgdetails.olId','=','orgstudents.orstOrgMasterId')
        ->leftJoin('studentsclasses','studentsclasses.stuclOrgStuMasterId','=','orgstudents.orstId')
        ->leftJoin('classes','studentsclasses.stuclClsMasterId','=','classes.clssId')
        ->leftJoin('sections','studentsclasses.stuclSecMasterId','=','sections.secnId')
        ->orderByDesc('students.created_at')
        ->get();

        $genderWise = DB::table('students')->where('stuIsStatus', '=', 1)->groupBy('stuGender')
                        ->selectRaw('count(*) as strength, stuGender')
                        ->get();

        $standardWise = DB::table('students')->where('stuIsStatus', '=', 1)
        ->leftJoin('orgstudents','orgstudents.orstStuMasterId','=','students.stuId')
        ->leftJoin('studentsclasses','studentsclasses.stuclOrgStuMasterId','=','orgstudents.orstId')
        ->leftJoin('classes','studentsclasses.stuclClsMasterId','=','classes.clssId')
        ->groupBy('classes.clssId')
        ->selectRaw('count(*) as strength, classes.clssName')
        ->get();

        $orgWise = DB::table('students')->where('stuIsStatus', '=', 1)
        ->leftJoin('orgstudents','orgstudents.orstStuMasterId','=','students.stuId')
        ->leftJoin('orgdetails','orgstudents.orstOrgMasterId','=','orgdetails.olSubOrgId')
        ->groupBy('orgstudents.orstOrgMasterId')
        ->selectRaw('count(*) as strength, orgdetails.olName')
        ->get();

        $yearWise = DB::table('students')->where('stuIsStatus', '=', 1)
        ->leftJoin('orgstudents','orgstudents.orstStuMasterId','=','students.stuId')
        ->leftJoin('studentsclasses','studentsclasses.stuclOrgStuMasterId','=','orgstudents.orstId')
        ->groupBy('studentsclasses.stuclAcademicYear')
        ->selectRaw('count(*) as strength, studentsclasses.stuclAcademicYear')
        ->get();

        Debugbar::info($students);

        $data['students'] = $students;
        $data['genderWise'] = $genderWise;
        $data['standardWise'] = $standardWise;
        $data['orgWise'] = $orgWise;
        $data['yearWise'] = $yearWise;
        $data['standard'] 		= Standard::getStandard();
		$data['section'] 		= Section::getSection();
        $data['authUsr'] = $auth[0];
        $data['html'] = $auth[1];

        return view($this->default->defVersion.'.Reports.StudentReport')->with($data);
   }

   
}
