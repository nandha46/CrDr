<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\v1\Acchead;
use App\Models\v1\CloseBl;
use App\Models\v1\Company;
use App\Models\v1\Daybook;
use App\Models\v1\Daystock;
use App\Models\v1\Menu;
use App\Models\v1\Usergroup;
use Barryvdh\Debugbar\Facades\Debugbar;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use PDO;
use ZipArchive;

class CompanyController extends Controller
{
    
    public function getCompanies(){ 

    	$data['pageRootTitle'] 		= 'Members';
    	$data['pageSubTitle'] 		= 'Companies';
    	$data['pageSubTitleNext']	= '';

		$auth = SharedController::checkAuthenticated();

	 	if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
		else{

            if($auth[1] == ''){

                AuthController::getLogout(1);
                return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access[1]. Contact your administrator');
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

		$uid = request()->session()->get('LoggedUsr');
		$user = User::find($uid);
		if ($user->usertype == 3){
			$data['companies'] 		= Company::where('userid', $user->admin_id)->get();
		} else {
			$data['companies'] 		= Company::where('userid', $uid)->get();
		}
		
		$data['companySelected'] = $user->companyId;

	 	return view('v1.company.Companies')->with($data);
	}

	public function getUploadPage () {

    	$data['pageRootTitle'] 		= 'Company';
    	$data['pageSubTitle'] 		= 'Upload Company';
    	$data['pageSubTitleNext']	= '';

		$auth = SharedController::checkAuthenticated();

	 	if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
		else{

            if($auth[1] == ''){

                AuthController::getLogout(1);
                return redirect()->route('get-login')->with('Msg', 'You may be disabled or no privilges to access[3]. Contact your administrator');
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

		$uid = request()->session()->get('LoggedUsr');
		$companies = Company::getUsersCompanies($uid);
		$data['companies'] 		= $companies;
		$data['companySelected'] = Usergroup::getUsergroupById($uid)->companyId;

	 	return view('v1.company.Uploads')->with($data);
	}
	
	public function postUploadData (Request $request) {


		$data['pageRootTitle'] 		= 'Company';
    	$data['pageSubTitle'] 		= 'Upload Company';
    	$data['pageSubTitleNext']	= '';
		
		$auth = SharedController::checkAuthenticated();
	 	$stateOut = SharedController::privilgesResponse($auth);

		if(!$stateOut['Status']) return $stateOut;

		$file =	$request->file('file0');
		$fileHash = md5_file($file);


		// if(Company::checkFileUploaded($fileHash)){
		// 	return back()->with('error', 'Latest company data already uploaded.');
		// }

		$filename = $file->getClientOriginalName().'-'.Str::random(5).'.mdb';
		$upFile =  $file->storeAs('app/mdb',$filename);

		$dbfile = base_path().DIRECTORY_SEPARATOR.'storage'.DIRECTORY_SEPARATOR.$upFile;

		$pdo = new PDO("odbc:DRIVER={Microsoft Access Driver (*.mdb, *.accdb)}; DBQ=$dbfile; Uid=; Pwd=shuttle;");
		
		$companyData = $pdo->query('SELECT * FROM Company')->fetch();
		$accheadData = $pdo->query('SELECT * FROM AccHead')->fetchAll();
		$daybookData = $pdo->query('SELECT * FROM DayBook')->fetchAll();
		$dayStockData = $pdo->query('SELECT * FROM DayStock')->fetchAll();
		$closeBlData = $pdo->query('SELECT * FROM CloseBl')->fetchAll();

		DB::beginTransaction();

		$company = new Company;
		$company->userid = request()->session()->get('LoggedUsr');
		$company->companyName = $companyData['CompName'];
		$company->CompanyYear = $companyData['CompYear'];
		$company->shortName = $companyData['ShortName'];
		$company->prodId = $companyData['ProdID'];
		$company->rcNo = $companyData['RcNo'];
		$company->companyType = $companyData['CompType'];
		$company->companyFormat = $companyData['CompFormat'];
		$company->fromDate = $companyData['FromDate'];
		$company->toDate = $companyData['ToDate'];
		$company->address1 = $companyData['Address1'];
		$company->address2 = $companyData['Address2'];
		$company->city = $companyData['City'];
		$company->pincode = $companyData['Pincode'];
		$company->state = $companyData['State'];
		$company->phone1 = $companyData['Phone1'];
		$company->phone2 = $companyData['Phone2'];
		$company->fax = $companyData['Fax'];
		$company->email = $companyData['Email'];
		$company->quantity = $companyData['Quantity'];
		$company->qtyWidth = $companyData['QtyWidth'];
		$company->qtyDecimal = $companyData['QtyDecimal'];
		$company->qtyTotal = $companyData['QtyTotal'];
		$company->allBDate = $companyData['AllBDate'];
		$company->localBDate = $companyData['LocalBDate'];
		$company->bNoofAcc = $companyData['BNoofAc'];
		$company->bNoofEntr = $companyData['BNoofEntries'];
		$company->bLastTransDate = $companyData['BLastTransDate'];
		$company->allBMedium = $companyData['AllBMedium'];
		$company->localBMedium = $companyData['LocalBMedium'];
		$company->allBUser = $companyData['AllBUser'];
		$company->localBUser = $companyData['LocalBUser'];
		$company->restoreDate = $companyData['RestoreDate'];
		$company->restoreMedium = $companyData['RestoreMedium'];
		$company->restoreUser = $companyData['RestoreUser'];
		$company->cNoofAcc = $companyData['CNoofAc'];
		$company->cNoofEntries = $companyData['CNoofEntries'];
		$company->cLastTransDate = $companyData['CLastTransDate'];
		$company->currUser = $companyData['CurrUser'];
		$company->lastUser = $companyData['LastUser'];
		$company->currLogin = $companyData['CurrLogin'];
		$company->lastLogin = $companyData['LastLogin'];
		$company->logout = $companyData['LogOut'];
		$company->lockDate = $companyData['LockDate'];
		$company->closeStk = $companyData['CloseStk'];
		$company->openCash = $companyData['OpenCash'];
		$company->openDiffDr = $companyData['OpenDiffDr'];
		$company->openDiffCr = $companyData['OpenDiffCr'];
		$company->hide = $companyData['Hide'];
		$company->graphicPrint = $companyData['GraphicPrint'];
		$company->fileHash = $fileHash;
		$company->status = true;

		$company->save();

		foreach ($accheadData as $a){

			$acchead = new Acchead;
			$acchead->companyId = $company->id;
			$acchead->accCode = $a['AccCode'];
			$acchead->accName = $a['AccName'];
			$acchead->accType = $a['AccType'];
			$acchead->drAmt = $a['DrAmt'];
			$acchead->crAmt = $a['CrAmt'];
			$acchead->sno = $a['Sno'];
			$acchead->level1 = $a['Level1'];
			$acchead->orderCode = $a['OrderCode'];
			$acchead->shortName = $a['ShortName'];
			$acchead->budgDrAmt = $a['BudgDrAmt'];
			$acchead->budgCrAmt = $a['BudgCrAmt'];
			$acchead->userStatus = $a['UserStatus'];
			$acchead->stkNeed = $a['StkNeed'];
			$acchead->stkOpen = $a['StkOpen'];
			$acchead->stkStatus = $a['StkStatus'];
			$acchead->status = true;

			$acchead->save();

		}

		foreach ($daybookData as $d){

			$daybook = new Daybook;
			$daybook->companyId = $company->id;
			$daybook->sno = $d['Sno'];
			$daybook->tDate = $d['TDate'];
			$daybook->narration = $d['Narration'];
			$daybook->acccode = $d['AccCode'];
			$daybook->drAmt = $d['DrAmt'];
			$daybook->crAmt = $d['CrAmt'];
			$daybook->stkValue = $d['StkValue'];
			$daybook->status = true;

			$daybook->save();
		}

		foreach ($dayStockData as $d){

			$daystock = new Daystock;
			$daystock->companyId = $company->id;
			$daystock->cDate = $d['CDate'];
			$daystock->stockValue = $d['StockValue'];
			$daystock->status = true;

			$daystock->save();
		}

		foreach ($closeBlData as $c){

			$closeBl = new CloseBl;
			$closeBl->companyId = $company->id;
			$closeBl->cDate = $c['CDate'];
			$closeBl->crTot = $c['CrTot'];
			$closeBl->drTot = $c['DrTot'];
			$closeBl->closeBal = $c['CloseBal'];
			$closeBl->status = true;

			$closeBl->save();

		}

		DB::commit();


		$pdo = null;

		$deletionStatus = Storage::delete($upFile);
		
		$data['authUsr'] 	= $auth[0];
		$data['html'] 		= $auth[1];
	    $data['menu'] 		= Menu::getMenus();
		
		return back()->with('message', 'Company data successfully uploaded.');
		
		}
	
		public function postUploadZip (Request $request) {

		$data['pageRootTitle'] 		= 'Company';
    	$data['pageSubTitle'] 		= 'Upload Company';
    	$data['pageSubTitleNext']	= '';
		
		$auth = SharedController::checkAuthenticated();
	 	$stateOut = SharedController::privilgesResponse($auth);

		if(!$stateOut['Status']) return $stateOut;

		$file =	$request->file('file0');
		$filename = $file->getClientOriginalName().'-'.Str::random(5).'.zip';
		$upFile =  $file->storeAs('app'.DIRECTORY_SEPARATOR.'zips',$filename);

		$zip = new ZipArchive();
		
		$extractionStatus = $zip->open(base_path().DIRECTORY_SEPARATOR.'storage'.DIRECTORY_SEPARATOR.$upFile);
		$directoryName = 'afa';

		if ($extractionStatus != 1) {
			throw new Exception($extractionStatus);
		} 
			Storage::makeDirectory('app'.DIRECTORY_SEPARATOR.'unzipped'.DIRECTORY_SEPARATOR.$directoryName);

           $extractionStatus = $zip->extractTo(base_path().DIRECTORY_SEPARATOR.'storage'.DIRECTORY_SEPARATOR.'app'.DIRECTORY_SEPARATOR.'unzipped'.DIRECTORY_SEPARATOR.$directoryName);
			return $extractionStatus;
		   $zip->close();
			Storage::deleteDirectory('app'.DIRECTORY_SEPARATOR.'unzipped'.DIRECTORY_SEPARATOR.$directoryName);

		$files = Storage::files('app'.DIRECTORY_SEPARATOR.'unzipped'.DIRECTORY_SEPARATOR.$directoryName);

		$diskfile = $files[0];

		$conn = new PDO("odbc:DRIVER={Microsoft Access Driver (*.mdb, *.accdb)}; DBQ=$diskfile; Uid=; Pwd=shuttle;");
					// $acchead = 'SELECT * FROM AccHead';
					$company = 'SELECT * FROM Company';
					$result = $conn->query($company);
					$companyData = $result->fetch();

					$data['company'] = $companyData['CompName'];

		Debugbar::info($companyData);

		$data['authUsr'] 	= $auth[0];
		$data['html'] 		= $auth[1];
	    $data['menu'] 		= Menu::getMenus();
		// return view('v1.company.Uploads')->with($data);

		return response()->json($data['company']);
		
		}

		public function selectCompany () {
			$data['pageRootTitle'] 		= 'Company';
			$data['pageSubTitle'] 		= 'Select Company';
			$data['pageSubTitleNext']	= '';
	
			$auth = SharedController::checkAuthenticated();
	
			 if(count($auth) == 0) return redirect()->route('get-login')->with('Msg', 'Please Login');
			else{
	
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
	
			 $data['authUsr'] 	= $auth[0];
			 $data['html'] 		= $auth[1];
			$data['menu'] 		= Menu::getMenus();
	
			$uid = request()->session()->get('LoggedUsr');
			$user = User::find($uid);
			if ($user->companyId != null){
				return redirect('/');
			}
			if ($user->usertype == 3){
				$data['companies'] 		= Company::where('userid', $user->admin_id)->groupBy('companyName')->get();
			} else {
				$data['companies'] 		= Company::where('userid', $uid)->groupBy('companyName')->get();
			}
			
			$data['companySelected'] = Usergroup::getUsergroupById($uid)->companyId;
	
			 return view('v1.company.SelectCompany')->with($data);
		}

		public function postSelectCompany() {

			$status = false;
	
			$companyId = request()->companyId;
			$uid = request()->session()->get('LoggedUsr');
			
			$updateStatus = User::where('id',$uid)->update(['companyId' => $companyId]);

			if ($updateStatus == 0) {
				$data['status'] = $status;
				return response()->json($data);
			}
	
			$status = true;
			$data['status'] = $status;
			return response()->json($data);
		}

		public function closeCompany () {

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

			User::where('id', request()->session()->get('LoggedUsr'))->update(['companyId' => null]);

			return redirect()->route('get-select-company');

		}

	public function loadCompanyYear() {

		$status = false;

		$companyName = request()->companyName;

		$user = User::find(request()->session()->get('LoggedUsr'));

		if ($user->usertype == 2) {
			$admin_id = $user->id;
		} else {
			$admin_id = $user->admin_id;
		}

		$years = Company::where('companyName', $companyName)->where('userid', $admin_id)->select('id', 'CompanyYear')->get();
		
		if ($years->count() == 0) {
			$data['status'] = $status;
			return response()->json($data);
		}

		$status = true;
		$data['years'] = $years;
		$data['status'] = $status;
		return response()->json($data);
	}

	public function deleteCompany ($cid = null) {
		
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

			if ($cid == null) {
				return redirect()->route('get-companies')->with('Msg', 'Company Id not present');
			}

			
	}

}
