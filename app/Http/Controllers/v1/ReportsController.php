<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\v1\AuthController;
use App\Http\Controllers\v1\SharedController;
use App\Models\User;
use App\Models\v1\Acchead;
use App\Models\v1\CloseBl;
use App\Models\v1\Company;
use App\Models\v1\Daybook;
use App\Models\v1\Daystock;
use App\Models\v1\Usergroup;
use App\services\LedgerReportService;
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
          // Addding closing balance

          $endDate = date_create($toDate);          
          $closeBal = CloseBl::where('companyId', $user->companyId)->where('cDate', $endDate)->first();

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
          $closeBalDays = CloseBl::where('companyId', $user->companyId)->whereBetween('cDate', [$fromDate, $toDate])->get();

          $close = CloseBl::getDaybookCloseBalUnion($fromDate, $toDate, $user->companyId);
          $close->prepend($openDaybook);
          $close->push($closeDaybook);

          $data['pageTitle'] = 'Day Book Report '.$fromDate.' to '.$toDate;
          $data['daybooks'] = $close;
          $data['fromDate'] = $fromDate;
          $data['toDate'] = $toDate;

          // $number = 150000.30;
          // if(floor($number) == $number) {
          //      $append='.00';
          //  }else if($number){
          //      $append='';
          //  }
          //  $number = preg_replace("/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/i", "$1,", $number);
          // dd( $number.$append);

          return view('v1.Reports.DaybookReport')->with($data);
     }

     public function getLedger() {

          $data['pageRootTitle'] 		= 'Dashboard';
          $data['pageSubTitle'] 		= 'Ledger';
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
          $user = Usergroup::getUsergroupById($uid);
          $companyId = $user->companyId;
		$data['companySelected'] = $companyId;

          $company = Company::find($companyId);
          $data['accheads'] = Acchead::getAccHeades($companyId);
          $data['fromDate'] = $company->fromDate;
          $data['toDate'] = $company->toDate;

          return view('v1.Reports.Ledger')->with($data);
     }

     public function postLedgerReport() {

          $data['pageRootTitle'] 		= 'Dashboard';
          $data['pageSubTitle'] 		= 'Ledger';
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

          $accheads = request()->input('accheads');
          $reportOrder = request()->input('reportOrder');
          $fromDate = request()->input('fromDate');
          $toDate = request()->input('toDate');
          $cutoff = request()->input('cutoff');
          $transactedOnly = request()->input('transactedOnly');
          $stockNeeded = request()->input('stockNeeded');

          $uid = request()->session()->get('LoggedUsr');
          $user = User::find($uid);

          $accs = Acchead::where('companyId', $user->companyId)->where('accCode', '!=', 0)
                    ->select(DB::raw('null as tDate'), 'accName', 'drAmt', 'crAmt', 'sno as asno', DB::raw('0 as sno'), 'acccode');

          $ledger = Acchead::getLedger($user->companyId, $accheads, $reportOrder, $fromDate, $toDate, $cutoff, $transactedOnly);

          $data['pageTitle'] = 'Ledger '.$fromDate.' to '.$toDate;
          $data['ledger'] = $ledger;
          $data['fromDate'] = $fromDate;
          $data['toDate'] = $toDate;
          
          return view('v1.Reports.LedgerReport')->with($data);
     }
     
     public function postLedgerReport2() {

          $data['pageRootTitle'] 		= 'Dashboard';
          $data['pageSubTitle'] 		= 'Ledger';
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

          $accheads = request()->input('accheads');
          $reportOrder = request()->input('reportOrder');
          $fromDate = request()->input('fromDate');
          $toDate = request()->input('toDate');
          $cutoff = request()->input('cutoff');
          $transactedOnly = request()->input('transactedOnly');
          $stockNeeded = request()->input('stockNeeded');

          $uid = request()->session()->get('LoggedUsr');
          $user = User::find($uid);

          $ledger = LedgerReportService::prepareLedger($user->companyId, $accheads, $reportOrder, $fromDate, $toDate, $cutoff, $transactedOnly);

          $data['pageTitle'] = 'Ledger '.$fromDate.' to '.$toDate;
          $data['ledger'] = $ledger;
          $data['fromDate'] = $fromDate;
          $data['toDate'] = $toDate;
          
          return view('v1.Reports.LedgerReport2')->with($data);
     }

     public function getTrialBalance() {

          $data['pageRootTitle'] 		= 'Dashboard';
          $data['pageSubTitle'] 		= 'Trial Balance';
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
          $user = Usergroup::getUsergroupById($uid);
          $companyId = $user->companyId;
		$data['companySelected'] = $companyId;

          $company = Company::find($companyId);
          $data['accheads'] = Acchead::getAccHeades($companyId);
          $data['fromDate'] = $company->fromDate;
          $data['toDate'] = $company->toDate;

          return view('v1.Reports.TrialBalance')->with($data);
     }

     public function postTrialBalanceReport () {

          $data['pageRootTitle'] 		= 'Dashboard';
          $data['pageSubTitle'] 		= 'Trial Balance Report';
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

          Debugbar::startMeasure('Trial Balance', 'Trial Balance Calculation');

          $reportOrder = request()->input('reportOrder');
          $toDate = request()->input('toDate');
          $transactedOnly = request()->input('isZeroBalAccs');
          $level = request()->input('level');

          $uid = request()->session()->get('LoggedUsr');
          $user = User::find($uid);
          $companyId = $user->companyId;
          $company = Company::find($companyId);

          $daybookTotal = Daybook::getTotalBalByAccHead($user->companyId, $company->fromDate, $toDate);
          $closeBal = CloseBl::where('companyId', $user->companyId)->where('cDate', $toDate)->value('closeBal');

          $data['pageTitle'] = 'Trial Balance as on '.$toDate;
          $data['trialBalances'] = $daybookTotal;
          $data['toDate'] = $toDate;
          $data['closeBal'] = $closeBal;

          Daybook::getTrialBalances($user->companyId, $company->fromDate, $toDate);

          Debugbar::stopMeasure('Trial Balance');

          return view('v1.Reports.TrialBalanceReport')->with($data);
     }

     public function getTradingPNL () {

          $data['pageRootTitle'] 		= 'Dashboard';
          $data['pageSubTitle'] 		= 'Trading - Profit And Loss Account';
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
          $user = Usergroup::getUsergroupById($uid);
          $companyId = $user->companyId;
		$data['companySelected'] = $companyId;

          $company = Company::find($companyId);
          $data['accheads'] = Acchead::getTradingPnlAccs($companyId);
          $data['toDate'] = $company->toDate;
          $data['dayStocks'] = Daystock::getDayStocks($companyId, $company->fromDate, $company->toDate);

          return view('v1.Reports.TradingPNL')->with($data);
     }

     public function getBalanceSheet () {

          $data['pageRootTitle'] 		= 'Dashboard';
          $data['pageSubTitle'] 		= 'Balance Sheet';
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
          $user = Usergroup::getUsergroupById($uid);
          $companyId = $user->companyId;
		$data['companySelected'] = $companyId;

          $company = Company::find($companyId);
          $data['accheads'] = Acchead::getBalanceSheetAccs($companyId);
          $data['fromDate'] = $company->fromDate;
          $data['toDate'] = $company->toDate;

          return view('v1.Reports.BalanceSheet')->with($data);
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
	public function getStatisticsReports(){

        
          $data['pageRootTitle'] 		= 'Dashboard';
          $data['pageSubTitle'] 		= 'Statistics';
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
 
                     $encode = implode('&&', $newUrls);
                     if($urlExist == 'FALSE') return redirect()->route('get-access-denied', ['urls' => $encode]);
                }
         }
 
            $data['authUsr'] 	= $auth[0];
            $data['html'] 		= $auth[1];
           
           $uid = request()->session()->get('LoggedUsr');
                     
             $data['authUser'] = User::find($uid);
             return view('v1.Reports.Statistics')->with($data);
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
