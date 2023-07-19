<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\v1\AuthController;
use App\Http\Controllers\v1\SharedController;
use App\Models\User;
use App\Models\v1\CloseBl;
use App\Models\v1\Company;
use App\Models\v1\Daybook;
use App\Models\v1\Usergroup;
use Barryvdh\Debugbar\Facades\Debugbar;
use Illuminate\Support\Facades\DB;

class ReportsController extends Controller{

     public function getDaybooks() {

          $data['pageRootTitle'] 		= 'Dashboard';
          $data['pageSubTitle'] 		= 'Daybooks';
          $data['pageSubTitleNext']	= '';
  
          $auth = SharedController::checkAuthenticated();
          
          if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
          else{
  
                 if($auth[1] == ''){
  
                      AuthController::getLogout(1);
                      return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access[10]. Contact your administrator');
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

          $uid = request()->session()->get('LoggedUsr');
		$data['companySelected'] = Usergroup::getUsergroupById($uid)->companyId;

          $company = Company::first();
          $data['fromDate'] = $company->fromDate;
          $data['toDate'] = $company->toDate;

          return view('v1.Reports.Daybook')->with($data);
     }
     
     public function postDaybooksReport() {

          $data['pageRootTitle'] 		= 'Dashboard';
          $data['pageSubTitle'] 		= 'Daybooks';
          $data['pageSubTitleNext']	= '';
  
          $auth = SharedController::checkAuthenticated();
          
          if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
          else{
  
                 if($auth[1] == ''){
  
                      AuthController::getLogout(1);
                      return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access[11]. Contact your administrator');
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

          $fromDate = request()->input('fromDate');
          $toDate = request()->input('toDate');
          $stockNeeded = request()->input('stockNeeded');

          $uid = request()->session()->get('LoggedUsr');
          $user = User::find($uid);

          $daybooks = Daybook::getDaybookReport($fromDate, $toDate, $user->companyId);
          
          // Adding opening balance
          $startdate = date_create($fromDate);          
          $openDate = date_add($startdate, date_interval_create_from_date_string('-1 day'));
          $openBal = CloseBl::where('companyId', $user->companyId)->where('cDate', $openDate)->first();

          $openDaybook = new Daybook;
          $openDaybook->tDate = $fromDate;
          $openDaybook->narration = 'Opening Balance';
          if ($openBal->closeBal > 0) {
               $openDaybook->drAmt = 0.00;
               $openDaybook->crAmt = $openBal->closeBal;
          } else {
               $openDaybook->drAmt = $openBal->closeBal;
               $openDaybook->crAmt = 0.00;
          }
          $daybooks->prepend($openDaybook);

          // Addding closing balance

          $endDate = date_create($toDate);          
          $closeDate = date_add($endDate, date_interval_create_from_date_string('1 day'));
          $closeBal = CloseBl::where('companyId', $user->companyId)->where('cDate', $closeDate)->first();

          $closeDaybook = new Daybook;
          $closeDaybook->tDate = $toDate;
          $closeDaybook->narration = 'Closing Balance';
          
          if ($closeBal->closeBal > 0) {
               $closeDaybook->drAmt = 0.00;
               $closeDaybook->crAmt = $closeBal->closeBal;
          } else {
               $closeDaybook->drAmt = $closeBal->closeBal;
               $closeDaybook->crAmt = 0.00;
          }
          $daybooks->push($closeDaybook);

          $closeBalDays = CloseBl::where('companyId', $user->companyId)->whereBetween('cDate', [$fromDate, $toDate])->get();

          $close = CloseBl::getDaybookCloseBalUnion($fromDate, $toDate, $user->companyId);
          $close->prepend($openDaybook);
          $close->push($closeDaybook);

          $data['pageTitle'] = 'Day Book Report '.$fromDate.' to '.$toDate;
          // $data['daybooks'] = $daybooks;
          $data['daybooks'] = $close;
          $data['fromDate'] = $fromDate;
          $data['toDate'] = $toDate;

          // dd($close->first());

          Debugbar::info($close);
          
          return view('v1.Reports.DaybookReport')->with($data);
     }

	public function getAnalyticReports(){

        
        $data['pageRootTitle'] 		= 'Dashboard';
        $data['pageSubTitle'] 		= 'Analytics';
        $data['pageSubTitleNext']	= '';

        $auth = SharedController::checkAuthenticated();
        
        if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
        else{

			if($auth[1] == ''){

				AuthController::getLogout(1);
				return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access[12]. Contact your administrator');
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

        return view('v1.Reports.Analytics')->with($data);
   }

   public function getStudentReports(Request $request){

    
        $data['pageRootTitle'] 		= 'Reports';
        $data['pageSubTitle'] 		= 'Students';
        $data['pageSubTitleNext']	= '';

    $auth = SharedController::checkAuthenticated();
        
        if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
        else{

			if($auth[1] == ''){

				AuthController::getLogout(1);
				return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access[13]. Contact your administrator');
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
        $data['authUsr'] = $auth[0];
        $data['html'] = $auth[1];

        return view('v1.Reports.StudentReport')->with($data);
   }

   
}
