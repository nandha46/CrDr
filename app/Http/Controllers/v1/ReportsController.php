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
use App\Models\v1\Staff;
use App\Models\v1\Standard;
use App\Models\v1\Student;
use App\Models\v1\StudentsMark;
use App\Models\v1\Usergroup;
use App\Models\v1\Video;
use App\Models\v1\View;
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

   public function getStudentReportJson (Request $request){
    
    $startDate = $request->startDate;
    $endDate = $request->endDate;
    $standard = $request->standard;
    $section = $request->section;
    $academicYear = $request->academicYear;

    $students = DB::table('students')->leftJoin('users','users.id', '=', 'students.stuUserId')  
        ->leftJoin('family','family.userid','=','students.stuUserId')
        ->leftJoin('contactdetails','family.contact_id','=','contactdetails.condId')
        ->leftJoin('addresses','family.address_id','=','addresses.id')
        ->leftJoin('states','addresses.state','=','states.id')
        ->leftJoin('emailaddresses','family.email_id','=','emailaddresses.emlId')
        ->leftJoin('orgstudents','orgstudents.orstStuMasterId','=','students.stuId')
        ->leftJoin('orgdetails','orgdetails.olId','=','orgstudents.orstOrgMasterId')
        ->leftJoin('studentsclasses','studentsclasses.stuclOrgStuMasterId','=','orgstudents.orstId')
        ->when($standard, function($query, $standard){$query->where('studentsclasses.stuclClsMasterId', $standard);} )
        ->when($section, function($query, $section){$query->where('studentsclasses.stuclSecMasterId', $section);} )
        ->when($academicYear, function($query, $academicYear){$query->where('studentsclasses.stuclAcademicYear', $academicYear);} )
        ->when($startDate, function($query, $startDate){$query->whereDate('students.created_at','>', $startDate);} )
        ->when($endDate, function($query, $endDate){$query->whereDate('students.created_at', '<' ,$endDate);} )
        ->leftJoin('classes','studentsclasses.stuclClsMasterId','=','classes.clssId')
        ->leftJoin('sections','studentsclasses.stuclSecMasterId','=','sections.secnId')
        ->orderByDesc('students.created_at')
        ->get();

        $data['success'] = true;
        $data['status'] = true;
        $data['students'] = $students;

        return response()->json($data, 200);

}
   
   public function getPerformanceReport($stuUId = ''){

        $data['appVersion'] 		= $this->default->defVersion;
        $data['adminUrl'] 			= $this->default->defAdminUrl;
        $data['baseUrl'] 			= $this->default->defBaseUrl;
        $data['prefix'] 			= $this->default->prefix;
        $data['pageRootTitle'] 		= 'Reports';
        $data['pageSubTitle'] 		= 'Performance';
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
        $data['status'] = false;
        $data['errStatus'] = true;

        $stu =  Student::getStudentByUsrId($stuUId);

        if ($stuUId != '' && $stu){
    
            $performance = DB::table('students')->where('students.stuUserId', '=', $stuUId)
            ->leftJoin('studentsmarks','studentsmarks.student_user_id', '=', 'students.stuUserId')  
            ->whereNotNull('studentsmarks.exam_id')
            ->leftJoin('exams','exams.id','=','studentsmarks.exam_id')
            ->leftJoin('exam_schedules','exams.id','=','exam_schedules.examid')
            ->groupBy('studentsmarks.exam_id')
            ->orderByDesc('exams.created_at')
            ->orderByDesc('studentsmarks.attempt')
            ->select('studentsmarks.*','exam_schedules.*','exams.*','studentsmarks.created_at as attempt_date')
            ->selectRaw('max(studentsmarks.marks) as maxmarks, max(studentsmarks.correct_answers) as max_correct_ans, count(*) as attemptNo')
            ->get();

            $student = View::getOneStudents($stu->stuId);
            //TO-DO can be optimized
            $exams = StudentsMark::where('student_user_id', $stuUId)->selectRaw('count(exam_id)')->groupBy('exam_id')->get();
    
            $data['exams'] = count($exams);
            $data['performance'] = $performance;
            $data['student'] = $student;

            $data['status'] = true;
            $data['errStatus'] = false;
            Debugbar::info($data);
        }

        if($stuUId == '') $data['errStatus'] = false;

        $data['authUsr'] = $auth[0];
        $data['html'] = $auth[1];

        return view($this->default->defVersion.'.Reports.PerformanceReport')->with($data);
   }

   public function getStaffReport ($stuUId = ''){

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

    $staffs = DB::table('staffs')->leftJoin('orgclassstaffs','staffs.stffId','=','orgclassstaffs.ogcstffStaffMasterId')
                            ->leftJoin('staff_details','staffs.stffId','=','staff_details.staff_id')    
                            ->select('staffs.*','orgclassstaffs.*','staff_details.*')
                            ->get();

    $genderWise = DB::table('staffs')->where('stffIsStatus', '=', 1)->groupBy('stffGender')
                    ->selectRaw('count(*) as strength, stffGender')
                    ->get();

    $standardWise = DB::table('students')->where('stuIsStatus', '=', 1)
    ->leftJoin('orgstudents','orgstudents.orstStuMasterId','=','students.stuId')
    ->leftJoin('studentsclasses','studentsclasses.stuclOrgStuMasterId','=','orgstudents.orstId')
    ->leftJoin('classes','studentsclasses.stuclClsMasterId','=','classes.clssId')
    ->groupBy('classes.clssId')
    ->selectRaw('count(*) as strength, classes.clssName')
    ->get();

    $orgWise = DB::table('staffs')->where('stffIsStatus', '=', 1)
    ->leftJoin('staff_details','staff_details.staff_id','=','staffs.stffId')
    ->leftJoin('orgdetails','staff_details.org_id','=','orgdetails.olSubOrgId')
    ->groupBy('staff_details.org_id')
    ->selectRaw('count(*) as strength, orgdetails.olName')
    ->get();

    $questionsCount = DB::table('staffs')->where('stffIsStatus', '=', 1)
    ->join('onlinetests','onlinetests.added_by','=','staffs.stffId')
    ->groupBy('staffs.stffId')
    ->selectRaw('count(*) as strength, CONCAT(staffs.stffFirstName," ",stffFirstName) as name')
    ->get();

    $staffsByRole = DB::table('staffs')->where('stffIsStatus','=',1)
            ->leftJoin('staff_details','staffs.stffId','=','staff_details.staff_id')
            ->groupBy('staff_details.designation')
            ->selectRaw('count(*) as strength, staff_details.designation')
            ->get();

    Debugbar::info($staffs);

    $data['staffs'] = $staffs;
    $data['genderWise'] = $genderWise;
    $data['standardWise'] = $standardWise;
    $data['orgWise'] = $orgWise;
    $data['questionsCount'] = $questionsCount;
    $data['standard'] 		= Standard::getStandard();
    $data['section'] 		= Section::getSection();
    $data['staffs'] 		= Staff::getAllStaffs();
    $data['staffsByRole'] 		= $staffsByRole;
    $data['authUsr'] = $auth[0];
    $data['html'] = $auth[1];

        return view($this->default->defVersion.'.Reports.StaffReport')->with($data);
   }

   public function getExamReport() {
   
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

    $examsPerStandard = DB::table('exam_schedules')->leftJoin('exams','exam_schedules.examid','=','exams.id')
                            ->leftJoin('classes','classes.clssId','=','exam_schedules.standard_id')    
                            ->leftJoin('subjects','subjects.subjId','=','exam_schedules.subject_id')
                            ->groupBy('exam_schedules.standard_id')    
                            ->groupBy('exam_schedules.subject_id')    
                            ->select('exams.*','exam_schedules.*','classes.*','subjects.*')
                            ->selectRaw('count(*) as count')
                            ->get();

    $standardStrength = DB::table('studentsclasses')->groupBy('stuclClsMasterId')->selectRaw('count(*) as count, stuclClsMasterId as standardId')->get();
    $examAttendance = DB::table('studentsmarks')->groupBy('exam_id')->selectRaw('count(distinct student_user_id) as count, exam_id')->get();

    $examsByAttendance = DB::table('exam_schedules')->leftJoin('exams','exam_schedules.examid','=','exams.id')
                            ->leftJoin('classes','classes.clssId','=','exam_schedules.standard_id')    
                            ->leftJoin('subjects','subjects.subjId','=','exam_schedules.subject_id')
                            // ->addSelect(['total_students' => Studentsclass::where('stuclClsMasterId', '1')->count()])
                            // ->addSelect(['attended_students' => StudentsMark::where('exam_id', 'exam_schedules.examid')->distinct('student_user_id')->count()])
                            ->select('exams.*','exam_schedules.*','classes.*','subjects.*')
                            ->get();
    
    $examsByAttendance->each(function ($exam) use ($examAttendance, $standardStrength) {
        $exam->attended_students = $examAttendance->firstWhere('exam_id', $exam->examid)->count??0;
        $exam->total_students = $standardStrength->firstWhere('standardId', $exam->standard_id)->count??0;
    });

    // remove duplicate results of join
    // $examPerformance = DB::table('exam_schedules')->leftJoin('exams','exam_schedules.examid','=','exams.id')
    //                         ->leftJoin('classes','classes.clssId','=','exam_schedules.standard_id')    
    //                         ->leftJoin('subjects','subjects.subjId','=','exam_schedules.subject_id')
    //                         ->join('studentsclasses','exam_schedules.standard_id','=','studentsclasses.stuclClsMasterId')
    //                         ->leftJoin('sections','studentsclasses.stuclSecMasterId','=','sections.secnId')    
    //                         ->leftJoin('orgstudents','studentsclasses.stuclOrgStuMasterId','=','orgstudents.orstId')
    //                         ->leftJoin('students','students.stuId','=','orgstudents.orstStuMasterId')
    //                         ->leftJoin('studentsmarks','studentsmarks.student_user_id','=','students.stuUserId')
    //                         ->whereNotNull('students.stuId')
    //                         ->select('exams.*','exam_schedules.*','classes.*','subjects.*', 'studentsclasses.*','students.*','sections.*','studentsmarks.*')
    //                         ->get();

$examPerformance = DB::table('students')->leftJoin('orgstudents','students.stuId','=','orgstudents.orstStuMasterId')
                        ->leftJoin('studentsclasses','studentsclasses.stuclOrgStuMasterId','=','orgstudents.orstId')
                        ->leftJoin('classes','classes.clssId','=','studentsclasses.stuclClsMasterId')    
                        ->leftJoin('sections','studentsclasses.stuclSecMasterId','=','sections.secnId')    
                        ->leftJoin('studentsmarks','studentsmarks.student_user_id','=','students.stuUserId')
                        ->leftJoin('exams','studentsmarks.exam_id','=','exams.id')
                        ->leftJoin('exam_schedules','exam_schedules.examid','=','exams.id')
                        ->whereNotNull('students.stuId')
                        ->whereNotNull('studentsmarks.exam_id')
                        ->groupBy('studentsmarks.exam_id')
                        ->select('exams.*','exam_schedules.*','classes.*', 'studentsclasses.*','students.*','sections.*','studentsmarks.*')
                        ->selectRaw('max(marks) as maxmarks, max(correct_answers) as max_correct_ans, max(attempt) as attemptNo')
                        // ->selectRaw('max(studentsmarks.marks) over(partition by studentsmarks.exam_id) as maxmarks, max(studentsmarks.correct_answers) as max_correct_ans, max(studentsmarks.attempt) over(partition by studentsmarks.exam_id) as attemptNo')
                        ->get();
    

    $allPerformance = DB::table('students')
            ->leftJoin('studentsmarks','studentsmarks.student_user_id', '=', 'students.stuUserId')
            ->leftJoin('orgstudents','orgstudents.orstStuMasterId', '=', 'students.stuId')  
            ->leftJoin('studentsclasses','studentsclasses.stuclOrgStuMasterId', '=', 'orgstudents.orstId')    
            ->leftJoin('classes','classes.clssId', '=', 'studentsclasses.stuclClsMasterId')    
            ->leftJoin('sections','sections.secnId', '=', 'studentsclasses.stuclSecMasterId')    
            ->leftJoin('exams','exams.id','=','studentsmarks.exam_id')
            ->leftJoin('exam_schedules','exams.id','=','exam_schedules.examid')
            ->groupBy('studentsmarks.exam_id')
            ->orderByDesc('exams.created_at')
            ->orderByDesc('studentsmarks.attempt')
            ->select('students.*', 'studentsmarks.*','exam_schedules.*','exams.*','studentsmarks.*','studentsmarks.created_at as attempt_date','classes.*', 'sections.*')
            ->selectRaw('max(studentsmarks.marks) as maxmarks, count(*) as attemptNo')
            ->get();

    Debugbar::info($examPerformance);

    $data['examsPerStandard'] = $examsPerStandard;
    $data['examsByAttendance'] = $examsByAttendance;
    $data['examPerformance'] = $examPerformance;
    $data['allPerformance'] = $allPerformance;
    $data['standard'] 		= Standard::getStandard();
	$data['section'] 		= Section::getSection();
    $data['authUsr'] = $auth[0];
    $data['html'] = $auth[1];

        return view($this->default->defVersion.'.Reports.ExamReport')->with($data);
   }

   public function getExamReportJson (Request $request){
    
    $startDate = $request->startDate;
    $endDate = $request->endDate;
    $standard = $request->standard;
    $section = $request->section;
    $academicYear = $request->academicYear;

    $examPerformance = DB::table('exam_schedules')->leftJoin('exams','exam_schedules.examid','=','exams.id')
                ->leftJoin('classes','classes.clssId','=','exam_schedules.standard_id')    
                ->leftJoin('subjects','subjects.subjId','=','exam_schedules.subject_id')
                ->join('studentsclasses','exam_schedules.standard_id','=','studentsclasses.stuclClsMasterId')
                ->leftJoin('sections','studentsclasses.stuclSecMasterId','=','sections.secnId')    
                ->leftJoin('orgstudents','studentsclasses.stuclOrgStuMasterId','=','orgstudents.orstId')
                ->leftJoin('students','students.stuId','=','orgstudents.orstStuMasterId')
                ->when($standard, function($query, $standard){$query->where('studentsclasses.stuclClsMasterId', $standard);} )
                ->when($section, function($query, $section){$query->where('studentsclasses.stuclSecMasterId', $section);} )
                ->when($academicYear, function($query, $academicYear){$query->where('studentsclasses.stuclAcademicYear', $academicYear);} )
                ->when($startDate, function($query, $startDate){$query->whereDate('exams.date','>', $startDate);} )
                ->when($endDate, function($query, $endDate){$query->whereDate('exams.date', '<' ,$endDate);} )
            // ->addSelect(['total_students' => Studentsclass::where('stuclClsMasterId', '1')->count()])
            // ->addSelect(['attended_students' => StudentsMark::where('exam_id', 'exam_schedules.examid')->distinct('student_user_id')->count()])
                ->whereNotNull('students.stuId')
                ->select('exams.*','exam_schedules.*','classes.*','subjects.*', 'studentsclasses.*','students.*','sections.*')
                ->orderByDesc('exams.date')
                ->get();

        $data['success'] = true;
        $data['status'] = true;
        $data['examPerformance'] = $examPerformance;

        return response()->json($data, 200);

}
   public function getClassPerformanceReportJson (Request $request){
    
    $startDate = $request->startDate;
    $endDate = $request->endDate;
    $standard = $request->standard;
    $section = $request->section;
    $academicYear = $request->academicYear;

    $allPerformance = DB::table('students')
            ->leftJoin('studentsmarks','studentsmarks.student_user_id', '=', 'students.stuUserId')  
            ->leftJoin('orgstudents','orgstudents.orstStuMasterId', '=', 'students.stuId')  
            ->leftJoin('studentsclasses','studentsclasses.stuclOrgStuMasterId', '=', 'orgstudents.orstId')
            ->leftJoin('classes','classes.clssId', '=', 'studentsclasses.stuclClsMasterId')    
            ->leftJoin('sections','sections.secnId', '=', 'studentsclasses.stuclSecMasterId')   
            ->leftJoin('exams','exams.id','=','studentsmarks.exam_id')
            ->leftJoin('exam_schedules','exams.id','=','exam_schedules.examid')
            ->when($standard, function($query, $standard){$query->where('studentsclasses.stuclClsMasterId', $standard);} )
            ->when($section, function($query, $section){$query->where('studentsclasses.stuclSecMasterId', $section);} )
            ->when($academicYear, function($query, $academicYear){$query->where('studentsclasses.stuclAcademicYear', $academicYear);} )
            ->when($startDate, function($query, $startDate){$query->whereDate('exams.date','>', $startDate);} )
            ->when($endDate, function($query, $endDate){$query->whereDate('exams.date', '<' ,$endDate);} )
            ->groupBy('studentsmarks.exam_id')
            ->orderByDesc('exams.created_at')
            ->orderByDesc('studentsmarks.attempt')
            ->whereNotNull('exams.id')
            ->select('students.*', 'studentsmarks.*','exam_schedules.*','exams.*','studentsmarks.*','studentsmarks.created_at as attempt_date','classes.*', 'sections.*')
            ->selectRaw('max(studentsmarks.marks) as maxmarks, count(*) as attemptNo')
            ->get();

        $data['success'] = true;
        $data['status'] = true;
        $data['allPerformance'] = $allPerformance;

        return response()->json($data, 200);

}

   
}
