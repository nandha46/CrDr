<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use File;

use App\Models\v1\Announcement;
use App\Models\v1\Pressrelease;

use App\Http\Controllers\v1\AuthController;
use App\Http\Controllers\v1\SharedController;
use App\Models\User;
use App\Models\v1\Blog;
use App\Models\v1\Event;
use Barryvdh\Debugbar\Facades\Debugbar;

class ProgramsController extends Controller{

    public function __construct(){

		$this->default = SharedController::getAppDefaults();
        $this->blogCategory = ['Category 1', 'Category 2', 'Category 3'];
        $this->announcementType = ['Emergency - Off', 'Others', 'Celebration'];

	}


	public function getEvents(){

        $data['appVersion'] 		= $this->default->defVersion;
        $data['adminUrl'] 			= $this->default->defAdminUrl;
        $data['baseUrl'] 			= $this->default->defBaseUrl;
        $data['prefix'] 			= $this->default->prefix;
        $data['pageRootTitle'] 		= 'Programs';
        $data['pageSubTitle'] 		= 'Events';
        $data['pageSubTitleNext']	= '';

        $auth 		= SharedController::checkAuthenticated();
        $location 	= SharedController::getCountries();

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

        $data['authUsr']    = $auth[0];
        $data['html']       = $auth[1];
        $events = Event::getEvents();
        // functional date change & add event type image
        $data['events']   	= $events;

        return view($this->default->defVersion.'.Programs.Events')->with($data);
    }

    public function postAddEditEvents(){

        $Status = false;
        $auth = SharedController::checkAuthenticated();

        if(count($auth) == 0){

            $res['Msg'] 	= 'Please Login';
			$res['Status'] 	= $Status;
			return response()->json($res);
        }else{

            if($auth[1] == ''){

                AuthController::getLogout(1);
                $res['Msg'] 	= 'You may be disabled or no privilges to access. Contact your administrator';
				$res['Status'] 	= $Status;

			    return response()->json($res);
            }else{

                $urlExist 	= 'FALSE';
                $currentURL = url()->current();
                $newUrls 	= [];

                foreach($auth[2] as $key => $sepUrls){

                    $finalUrl = SharedController::convertSpecialCharacters($sepUrls);
				   	$newUrls[] = $key.':'.$finalUrl;

				   	if(strpos($currentURL, $sepUrls) !== false) $urlExist = 'TRUE';
                }

                $encode = implode('&&', $newUrls);

                if($urlExist == 'FALSE'){

                    $res['Msg'] 	= 'Access-denied';
					$res['Status'] 	= $Status;
					$res['urls'] 	= $encode;

			   		return response()->json($res);
                }
            }
        }

        $editId       = request()->input('editId');

        if(request()->session()->has('LoggedUsr')){

			$userid 	= request()->session()->get('LoggedUsr');
            $user = User::where('id', $userid)->first();
            $inAry['evntOrgMasterId'] = $user->userOrgId;
        }
        

        $inAry['evntName'] = request()->input('evntName');
        $inAry['evntType'] = request()->input('evntType');
        $inAry['evntDescription'] = request()->input('evntDescription');
        $inAry['chiefguest'] = request()->input('chiefguest');
        $eventDate =  request()->input('evntDate');
        $inAry['evntDate'] = date('Y-m-d', strtotime($eventDate));
        $inAry['evntStartTime'] = request()->input('evntStartTime');
        $inAry['evntEndTime'] = request()->input('evntEndTime');
        $inAry['evntPlace'] = request()->input('evntPlace');
        $inAry['evntSponseredBy'] = request()->input('evntSponseredBy');
        $inAry['evntOrganisedBy'] = request()->input('evntOrganisedBy');
        $registrationFrom = request()->input('registrationFrom');
        $inAry['registrationFrom'] = date('Y-m-d', strtotime($registrationFrom));
        // Store file and location
        $inAry['formUrl'] = request()->input('formUrl');
        $inAry['evntIsStatus'] = 1;

        if($editId != 'null'){
            $loc = Event::UpdateEvent($editId, $inAry);   
        } else {
            $loc = Event::InsertEvent($inAry);
        }
        
        $res['authUsr']    = $auth[0];
        $res['results'] 	   = $loc;
        $res['Status'] 	   = true;

		return response()->json($res);
    }

	public function getBlogs(){

        $data['appVersion'] 		= $this->default->defVersion;
        $data['adminUrl'] 			= $this->default->defAdminUrl;
        $data['baseUrl'] 			= $this->default->defBaseUrl;
        $data['prefix'] 			= $this->default->prefix;
        $data['pageRootTitle'] 		= 'Programs';
        $data['pageSubTitle'] 		= 'Blogs';
        $data['pageSubTitleNext']	= '';

        $auth 		= SharedController::checkAuthenticated();
        $location 	= SharedController::getCountries();

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

        $data['category'] = $this->blogCategory;

        $data['authUsr']    = $auth[0];
        $data['html']       = $auth[1];
        $data['blogs']   	= Blog::getBlogs();

        return view($this->default->defVersion.'.Programs.Blogs')->with($data);
    }

    public function postAddEditBlogs(){

        $Status = false;
        $auth = SharedController::checkAuthenticated();

        if(count($auth) == 0){

            $res['Msg'] 	= 'Please Login';
			$res['Status'] 	= $Status;
			return response()->json($res);
        }else{

            if($auth[1] == ''){

                AuthController::getLogout(1);
                $res['Msg'] 	= 'You may be disabled or no privilges to access. Contact your administrator';
				$res['Status'] 	= $Status;

			    return response()->json($res);
            }else{

                $urlExist 	= 'FALSE';
                $currentURL = url()->current();
                $newUrls 	= [];

                foreach($auth[2] as $key => $sepUrls){

                    $finalUrl = SharedController::convertSpecialCharacters($sepUrls);
				   	$newUrls[] = $key.':'.$finalUrl;

				   	if(strpos($currentURL, $sepUrls) !== false) $urlExist = 'TRUE';
                }

                $encode = implode('&&', $newUrls);

                if($urlExist == 'FALSE'){

                    $res['Msg'] 	= 'Access-denied';
					$res['Status'] 	= $Status;
					$res['urls'] 	= $encode;

			   		return response()->json($res);
                }
            }
        }

        $editId       = request()->input('editId');
        
        $inAry['categoryid'] = request()->input('categoryid');
        $inAry['title'] = request()->input('title');
        $inAry['description'] = request()->input('description');
        $inAry['message'] = request()->input('message');
        $inAry['fileurl'] = request()->input('fileurl');

        if($editId != 'null'){
            $blog = Blog::UpdateBlog($editId, $inAry);   
        } else {
            $blog = Blog::InsertBlog($inAry);
        }

        Debugbar::info($blog);
        $blog->categoryName = $this->blogCategory[$blog->categoryid];
        Debugbar::info($blog);

        $res['authUsr']    = $auth[0];
        $res['results'] 	   = $blog;
        $res['Status'] 	   = true;
		return response()->json($res);
    }

	public function getAnnouncements(){

        $data['appVersion'] 		= $this->default->defVersion;
        $data['adminUrl'] 			= $this->default->defAdminUrl;
        $data['baseUrl'] 			= $this->default->defBaseUrl;
        $data['prefix'] 			= $this->default->prefix;
        $data['pageRootTitle'] 		= 'Programs';
        $data['pageSubTitle'] 		= 'Announcements';
        $data['pageSubTitleNext']	= '';

        $auth 		= SharedController::checkAuthenticated();
        $location 	= SharedController::getCountries();

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

        $announcements = Announcement::getAnnouncements();
        $types = $this->announcementType;

        $announcements->each(function ($item) use($types) {
            $item->announcementType = $types[$item->typeid];
        });

        $data['authUsr']    	= $auth[0];
        $data['html']       	= $auth[1];
        $data['announcements']   = $announcements;
        $data['types']   = $types;

        return view($this->default->defVersion.'.Programs.Announcements')->with($data);
    }

    public function postAddEditAnnouncements(){

        $Status = false;
        $auth = SharedController::checkAuthenticated();

        if(count($auth) == 0){

            $res['Msg'] 	= 'Please Login';
			$res['Status'] 	= $Status;
			return response()->json($res);
        }else{

            if($auth[1] == ''){

                AuthController::getLogout(1);
                $res['Msg'] 	= 'You may be disabled or no privilges to access. Contact your administrator';
				$res['Status'] 	= $Status;

			    return response()->json($res);
            }else{

                $urlExist 	= 'FALSE';
                $currentURL = url()->current();
                $newUrls 	= [];

                foreach($auth[2] as $key => $sepUrls){

                    $finalUrl = SharedController::convertSpecialCharacters($sepUrls);
				   	$newUrls[] = $key.':'.$finalUrl;

				   	if(strpos($currentURL, $sepUrls) !== false) $urlExist = 'TRUE';
                }

                $encode = implode('&&', $newUrls);

                if($urlExist == 'FALSE'){

                    $res['Msg'] 	= 'Access-denied';
					$res['Status'] 	= $Status;
					$res['urls'] 	= $encode;

			   		return response()->json($res);
                }
            }
        }

        $editId       = request()->input('editId');

        $inAry['typeid'] = request()->input('typeid');
        $inAry['title'] = request()->input('title');
        $inAry['message'] = request()->input('message');
        $inAry['fileurl'] = request()->input('fileurl');
        $inAry['status'] = 1;

        if($editId != 'null'){
            $announcement = Announcement::UpdateAnnouncement($editId, $inAry);   
        } else {
            $announcement = Announcement::InsertAnnouncement($inAry);
        }

        $announcement->announcementType = $this->announcementType[$announcement->typeid];

        $res['authUsr']    = $auth[0];
        $res['results'] 	   = $announcement;
        $res['Status'] 	   = true;

		return response()->json($res);
    }

	public function getPressReleases(){

        $data['appVersion'] 		= $this->default->defVersion;
        $data['adminUrl'] 			= $this->default->defAdminUrl;
        $data['baseUrl'] 			= $this->default->defBaseUrl;
        $data['prefix'] 			= $this->default->prefix;
        $data['pageRootTitle'] 		= 'Programs';
        $data['pageSubTitle'] 		= 'PressReleases';
        $data['pageSubTitleNext']	= '';

        $auth 		= SharedController::checkAuthenticated();
        $location 	= SharedController::getCountries();

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

        $data['authUsr']    	= $auth[0];
        $data['html']       	= $auth[1];
        $data['pressreleases']  = Pressrelease::getPressreleases();

        return view($this->default->defVersion.'.Programs.PressReleases')->with($data);
    }

    public function postAddEditPressReleases(){

        $Status = false;
        $auth = SharedController::checkAuthenticated();

        if(count($auth) == 0){

            $res['Msg'] 	= 'Please Login';
			$res['Status'] 	= $Status;
			return response()->json($res);
        }else{

            if($auth[1] == ''){

                AuthController::getLogout(1);
                $res['Msg'] 	= 'You may be disabled or no privilges to access. Contact your administrator';
				$res['Status'] 	= $Status;

			    return response()->json($res);
            }else{

                $urlExist 	= 'FALSE';
                $currentURL = url()->current();
                $newUrls 	= [];

                foreach($auth[2] as $key => $sepUrls){

                    $finalUrl = SharedController::convertSpecialCharacters($sepUrls);
				   	$newUrls[] = $key.':'.$finalUrl;

				   	if(strpos($currentURL, $sepUrls) !== false) $urlExist = 'TRUE';
                }

                $encode = implode('&&', $newUrls);

                if($urlExist == 'FALSE'){

                    $res['Msg'] 	= 'Access-denied';
					$res['Status'] 	= $Status;
					$res['urls'] 	= $encode;

			   		return response()->json($res);
                }
            }
        }

        $editId       = request()->input('editId');

        $inAry['title'] = request()->input('title');
        $inAry['lead'] = request()->input('lead');
        $inAry['message'] = request()->input('message');
        $publishingDate = request()->publishing;
        $inAry['publishing'] = date('Y-m-d', strtotime($publishingDate));
        $inAry['fileurl'] = request()->input('fileurl');
        $inAry['status'] = 1;

        if($editId != 'null'){
            $loc = Pressrelease::UpdatePressrelease($editId, $inAry);   
        } else {
            $loc = Pressrelease::InsertPressrelease($inAry);
        }

        $res['authUsr']    = $auth[0];
        $res['results'] 	   = $loc;
        $res['Status'] 	   = true;

		return response()->json($res);
    }
}