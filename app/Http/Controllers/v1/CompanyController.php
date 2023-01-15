<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Models\v1\Company;
use App\Models\v1\Menu;
use Barryvdh\Debugbar\Facades\Debugbar;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use PDO;

class CompanyController extends Controller
{
    
    public function getCompanies(){

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

		$companies = [];
		$data['companies'] 		= $companies;
		$data['users'] 		= $companies;

	 	return view('v1.Members.Users')->with($data);
	}

	public function postAddEditCompany(){

		$Status = false;

		$auth = SharedController::checkAuthenticated();
	 	$stateOut = SharedController::privilgesResponse($auth);

		if(!$stateOut['Status']) return $stateOut;

		
        
	 	$res['Status'] 		= true;
		$res['results'] 	= [];
		return response()->json($res);
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

		$companies = Company::getUsersCompanies();
		$data['companies'] 		= $companies;

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
		$filename = $file->getClientOriginalName().'-'.Str::random(5).'.mdb';
		$upFile =  $file->storeAs('app'.DIRECTORY_SEPARATOR.'mdb',$filename);

		$diskfile = base_path().DIRECTORY_SEPARATOR.'storage'.DIRECTORY_SEPARATOR.$upFile;

		$conn = new PDO("odbc:DRIVER={Microsoft Access Driver (*.mdb, *.accdb)}; DBQ=$diskfile; Uid=; Pwd=shuttle;");
					$acchead = 'SELECT * FROM AccHead';
					$result = $conn->query($acchead);

					$accheads = $result->fetchAll();

					$data['accheads'] = $accheads[0];

		Debugbar::info($accheads);

		$data['authUsr'] 	= $auth[0];
		$data['html'] 		= $auth[1];
	    $data['menu'] 		= Menu::getMenus();
		return view('v1.company.Uploads')->with($data);

		return response()->json([$data]);
		
		}

}
