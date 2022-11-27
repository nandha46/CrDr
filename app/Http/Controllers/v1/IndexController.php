<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Http\Controllers\v1\SharedController;
use App\Models\v1\Document;
use App\Models\v1\Exam;
use App\Models\v1\ExamSchedule;
use App\Models\v1\Question;
use App\Models\v1\Orgstudent;
use Illuminate\Support\Facades\File;
use App\Models\v1\Usergroup;
use App\Models\v1\Student;
use App\Models\v1\Studentsclass;
use App\Models\v1\StudentsMark;
use App\Models\v1\View;
use App\Services\AnalyticServices;
use Barryvdh\Debugbar\Facades\Debugbar;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class IndexController extends Controller{

    private $appRelease;

    public function __construct(){

		$this->default = SharedController::getAppDefaults();

        $this->appRelease = env('APP_RELEASE') == 0 ? $this->default->defDevRelease :  $this->default->defRelease;
	}

    public function getLanding(){

        if(request()->session()->has('LoggedStuUsr')){
            return redirect()->route('get-home');
        }

        $data['title']      = 'Home';
        $data['baseUrl'] 	= $this->default->defBaseUrl;

        return view('v1.AccessPanel.LandingPage.Index')->with($data);

    }

    public function getStudentLogin(){
    
        $data['title']      = 'Login';
        $data['baseUrl'] 	= $this->default->defBaseUrl;

        return view('v1.AccessPanel.LandingPage.Login')->with($data);
    }

    public function postStudentLogin(){

    	$username = request()->input('username');
        $password = request()->input('password');

        if($username == '' || $password == '') return back()->with('Msg', 'Please fill the form details');
        $check    = Usergroup::checkLogin($username, $password);

    	if($check){

            if($check->status && $check->usertype == 3){
                $student = Student::getStudentByUsrId($check->id);
                if ($student->stuIsStatus == 0) return back()->with('Msg', 'Student Account Disabled. Please contact Admin');
                request()->session()->put('LoggedStuUsr', $check->id);

              AnalyticServices::logAnalytics($username);

                $profilePic = Usergroup::getProfileData($check->id);
                if ($profilePic == null || $profilePic == ""){
                    if ($student->stuGender == 1){
                        $profilePic = '/uploads/StudentData/Id_cards/default_boy.png';
                    } else {
                        $profilePic = '/uploads/StudentData/Id_cards/default_girl.png';
                    }                                      
                } else {
                    if(Storage::exists($profilePic)){
                        request()->session()->put('profilePic', '/storage/'.$profilePic);
                    } else {
                        if ($student->stuGender == 1){
                            $profilePic = '/uploads/StudentData/Id_cards/default_boy.png';
                            request()->session()->put('profilePic', '/storage/'.$profilePic);
                        } else {
                            $profilePic = '/uploads/StudentData/Id_cards/default_girl.png';
                            request()->session()->put('profilePic', '/storage/'.$profilePic);
                        }
                    }
                }
                return redirect()->route('get-home');
            }			
    	}
    	return back()->with('Msg', 'Invalid Credentials');  
    } 

    public function getHome(){

        if(request()->session()->has('LoggedStuUsr')){

            $loggedUsr 	= request()->session()->get('LoggedStuUsr');

            $authUsr 	= Usergroup::getAuthenticated($loggedUsr);

            $data['title']      = 'E-Learning | Home';
            $data['page']       = 'home';
            $data['baseUrl'] 	= $this->default->defBaseUrl;
            $studentDetail = Student::getStudentByUsrId($loggedUsr);
            $orgStuDetail = Orgstudent::getOrgStudentByStuId($studentDetail->stuId);
            $stuClassDetail = Studentsclass::getStudentClassesByOrgStuId($orgStuDetail->orstId);
            $data['studentDetails'] = $studentDetail;
            $data['subjects'] = View::getStandardSubjectView($stuClassDetail->stuclClsMasterId);


            $studentDt = View::getStudentsById($studentDetail->stuId);
            $data['standard_id'] = $studentDt->ClassId;

            return view('v1.AccessPanel.Newdesign.Index')->with($data);
        }
        return redirect()->route('get-index');

    }

    public function getProfile(){

        if(request()->session()->has('LoggedStuUsr')){

            $loggedUsr 	= request()->session()->get('LoggedStuUsr');

            $authUsr 	= Usergroup::getAuthenticated($loggedUsr);

            $data['title']      = 'E-Learning | Profile';
            $data['page']       = 'profile';
            $data['baseUrl'] 	= $this->default->defBaseUrl;
            $studentDetail = Student::getStudentByUsrId($loggedUsr);
            $orgStuDetail = Orgstudent::getOrgStudentByStuId($studentDetail->stuId);
            $stuClassDetail = Studentsclass::getStudentClassesByOrgStuId($orgStuDetail->orstId);
            $data['studentDetails'] = $studentDetail;
            $data['subjects'] = View::getStandardSubjectView($stuClassDetail->stuclClsMasterId);

            $studentView = View::getStudentsViewById($studentDetail->stuId);

		if($studentView->dob != null){
			$studentView->date_of_birth = date('d F Y', strtotime($studentView->dob));
		} else {
			$studentView->date_of_birth = 'NA';
		}

        $exams = StudentsMark::where('student_user_id', $studentView->student_userid)->selectRaw('count(exam_id)')->groupBy('exam_id')->get();
        $data['exams'] = count($exams);

        $data['studentView'] = $studentView;

            $studentDt = View::getStudentsById($studentDetail->stuId);
            $data['standard_id'] = $studentDt->ClassId;

            return view('v1.AccessPanel.Newdesign.Profile')->with($data);
        }
        return redirect()->route('get-index');

    }

    public function getCourse($courseId = ''){

        if(request()->session()->has('LoggedStuUsr')){

            $loggedUsr 	= request()->session()->get('LoggedStuUsr');
            
            $student    = Student::getStudentByUsrId($loggedUsr);

            if (!is_numeric($courseId)){
                return redirect()->back()->withErrors(['msg'=>'Incorrect URL']);
            }

            // TO-DO: Condition to check given course id is applicable for the student class

            $studentDt = View::getStudentsById($student->stuId);

            $orgStuDetail = Orgstudent::getOrgStudentByStuId($student->stuId);
            $stuClassDetail = Studentsclass::getStudentClassesByOrgStuId($orgStuDetail->orstId);

            $data['subjects'] = View::getStandardSubjectView($stuClassDetail->stuclClsMasterId);

            $studentStandard = $studentDt->ClassId; 

            $data['title']      = 'E-Learning | Course';
            
            if($courseId == ''){
                return redirect()->route('get-index');
            }
            
            $subj = View::getSubjectById($courseId);
            $data['page']       = 'course';
            $data['courseNm']   = $subj->subjName;
            $data['subject_id'] = $courseId;
            $data['standard_id'] = $studentStandard;

            $sy1 = View::getLessonsBySubjectIdAndStandard($courseId, $studentStandard, 1);
            $sy2 = View::getLessonsBySubjectIdAndStandard($courseId, $studentStandard, 2);
            $sy3 = View::getLessonsBySubjectIdAndStandard($courseId, $studentStandard, 3);

            $sy1->each( function($lesson) {
                $vids = DB::table('view_topics')->where('lessonid',$lesson->lnId)->get();
                $vids->each(function($topic){
                    $docs = Document::getDocumentsByTopic($topic->id);
                    $topic->docs = $docs;
                });
                $lesson->topics = $vids; 
            });
            $sy2->each( function($lesson) {
                $vids = DB::table('view_topics')->where('lessonid',$lesson->lnId)->get();
                $vids->each(function($topic){
                    $docs = Document::getDocumentsByTopic($topic->id);
                    $topic->docs = $docs;
                });
                $lesson->topics = $vids; 
            });
            $sy3->each( function($lesson) {
                $vids = DB::table('view_topics')->where('lessonid',$lesson->lnId)->get();
                $vids->each(function($topic){
                    $docs = Document::getDocumentsByTopic($topic->id);
                    $topic->docs = $docs;
                });
                $lesson->topics = $vids; 
            });

            $courseDet          = [
                'Term I' => $sy1,
                'Term II' => $sy2,
                'Term III' => $sy3,
            ];

            $data['units']      = count($sy1)+count($sy2)+count($sy3);
            
            $data['standard'] = $studentStandard;
            $data['courseDet'] = $courseDet;
            $data['fileInfo'] = [];
            $data['imageInfo'] = [];
            $data['baseUrl'] 	= $this->default->defBaseUrl;
            $data['studentDetails'] = Student::getStudentByUsrId($loggedUsr);

            return view('v1.AccessPanel.Newdesign.Course')->with($data);
        }
        return redirect()->route('get-index');
    }

    public function GetVideoData($courseDet, $standard){

        $mainAry = array(); $videoInfo = $imageInfo = array(); $syllabusName = '';
        
        foreach($courseDet as $sepCourseDet){
            if(!array_key_exists($sepCourseDet->lnId, $mainAry)){
                $mainAry[$sepCourseDet->syllabusName][] = $sepCourseDet;
            }
            
            if($sepCourseDet->syllabusName == 'Term I'){
                $syllabusName = 't1';
            }elseif($sepCourseDet->syllabusName == 'Term II'){
                $syllabusName = 't2';
            }else{
                $syllabusName = 't3';
            }
            $fileStart = $standard.'_eng_mdm_'.$syllabusName.'_'.$sepCourseDet->lessonOrder.'_';

            $storagePath        = storage_path('uploads'.DIRECTORY_SEPARATOR.'videos'.DIRECTORY_SEPARATOR.$sepCourseDet->subject.DIRECTORY_SEPARATOR
            .$standard.DIRECTORY_SEPARATOR.'ENG_MDM'.DIRECTORY_SEPARATOR.$syllabusName.DIRECTORY_SEPARATOR.$sepCourseDet->lessonOrder.DIRECTORY_SEPARATOR);
            
                
                foreach (File::allFiles($storagePath) as $file) {
                    
                    $filesName = $file->getFilename();
                   
                    $extension = File::extension($filesName);

                    $orgNm = substr($filesName, strlen($fileStart));

                    $withoutExt = preg_replace('/\\.[^.\\s]{3,4}$/', '', $orgNm);
                    
                    if(strpos($filesName, $fileStart) !== false) {
                        if($extension == 'mp4'){
                            $videoInfo[][$withoutExt]= asset('storage'.DIRECTORY_SEPARATOR.'uploads'.DIRECTORY_SEPARATOR.'videos'.DIRECTORY_SEPARATOR.$sepCourseDet->subject.DIRECTORY_SEPARATOR
                            .$standard.DIRECTORY_SEPARATOR.'ENG_MDM'.DIRECTORY_SEPARATOR.$syllabusName.DIRECTORY_SEPARATOR.$sepCourseDet->lessonOrder.DIRECTORY_SEPARATOR.$filesName);
                        }
                        if($extension == 'png' || $extension == 'jpg' || $extension == 'jpeg' || $extension == 'gif'){
                            $imageInfo[] = asset('storage'.DIRECTORY_SEPARATOR.'uploads'.DIRECTORY_SEPARATOR.'videos'.DIRECTORY_SEPARATOR.$sepCourseDet->subject.DIRECTORY_SEPARATOR
                            .$standard.DIRECTORY_SEPARATOR.'ENG_MDM'.DIRECTORY_SEPARATOR.$syllabusName.DIRECTORY_SEPARATOR.$sepCourseDet->lessonOrder.DIRECTORY_SEPARATOR.$filesName);
                        }
                    }
            }
        }
        return [$mainAry, $videoInfo, $imageInfo];
    }

    public function postGetLessonsVideo(){

        $Subject      = request()->input('subject');
        $lessonOrder  = request()->input('lessonOrder');
        $standard     = request()->input('standard');
        $syllabusName = request()->input('syllabusName');
        
        if($standard == 'I'){
            $standard = '1';
        }

        if($standard == 'II'){
            $standard = '2';
        }

        if($standard == 'III'){
            $standard = '3';
        }

        if($standard == 'IV'){
            $standard = '4';
        }

        if($standard == 'V'){
            $standard = '5';
        }

        if($syllabusName == 'Term I'){
            $syllabusName = 't1';
        }elseif($syllabusName == 'Term II'){
            $syllabusName = 't2';
        }else{
            $syllabusName = 't3';
        }

        $videoInfo = $imageInfo = array();

        $fileStart = $standard.'_eng_mdm_'.$syllabusName.'_'.$lessonOrder.'_';

        $storagePath        = storage_path('uploads'.DIRECTORY_SEPARATOR.'videos'.DIRECTORY_SEPARATOR.$Subject.DIRECTORY_SEPARATOR
            .$standard.DIRECTORY_SEPARATOR.'ENG_MDM'.DIRECTORY_SEPARATOR.$syllabusName.DIRECTORY_SEPARATOR.$lessonOrder.DIRECTORY_SEPARATOR);
            
        foreach (File::allFiles($storagePath) as $file) {
                
            $filesName = $file->getFilename();

            $extension = File::extension($filesName);

            $orgNm = substr($filesName, strlen($fileStart));

            $withoutExt = preg_replace('/\\.[^.\\s]{3,4}$/', '', $orgNm);
                
            if(strpos($filesName, $fileStart) !== false){
                if($extension == 'mp4'){
                    $videoInfo[][$withoutExt] = asset('storage'.DIRECTORY_SEPARATOR.'uploads'.DIRECTORY_SEPARATOR.'videos'.DIRECTORY_SEPARATOR.$Subject.DIRECTORY_SEPARATOR
                    .$standard.DIRECTORY_SEPARATOR.'ENG_MDM'.DIRECTORY_SEPARATOR.$syllabusName.DIRECTORY_SEPARATOR.$lessonOrder.DIRECTORY_SEPARATOR.$filesName);
                }
                if($extension == 'png' || $extension == 'jpg' || $extension == 'jpeg' || $extension == 'gif'){
                    $imageInfo[] = asset('storage'.DIRECTORY_SEPARATOR.'uploads'.DIRECTORY_SEPARATOR.'videos'.DIRECTORY_SEPARATOR.$Subject.DIRECTORY_SEPARATOR
                    .$standard.DIRECTORY_SEPARATOR.'ENG_MDM'.DIRECTORY_SEPARATOR.$syllabusName.DIRECTORY_SEPARATOR.$lessonOrder.DIRECTORY_SEPARATOR.$filesName);
                }
            } 
            
        }

        $data['fileInfo'] = $videoInfo;
        $data['imageInfo'] = $imageInfo;
        $data['status'] = true;

        return response()->json($data);

    }

    public function takeOnlineTest($test_id = '')
    {
        if (request()->session()->has('LoggedStuUsr')) {

            $loggedUsr     = request()->session()->get('LoggedStuUsr');

            $authUsr     = Usergroup::getAuthenticated($loggedUsr);

            if ($test_id == ''){
                return redirect()->back()->withErrors(['msg'=>'Incorrect URL']);
            }

            $data['title']      = 'E-Learning - Online Test';
            $data['page']       = 'test';
            $data['baseUrl']     = $this->default->defBaseUrl;
            $data['studentDetails'] = Student::getStudentByUsrId($loggedUsr);

            $studentDetail = Student::getStudentByUsrId($loggedUsr);
            $orgStuDetail = Orgstudent::getOrgStudentByStuId($studentDetail->stuId);
            $stuClassDetail = Studentsclass::getStudentClassesByOrgStuId($orgStuDetail->orstId);
            $data['subjects'] = View::getStandardSubjectView($stuClassDetail->stuclClsMasterId);

            $studentDt = View::getStudentsById($studentDetail->stuId);
            $data['standard_id'] = $studentDt->ClassId;

            $examSchedule = ExamSchedule::getSetQuestionsByExamId($test_id);
            $exam = Exam::getExamsById($test_id);

            $questionsArray = json_decode($examSchedule->question_ids);

            $questions = Question::getQuestionsByExamPaged($questionsArray);

            $data['allQuestions'] = Question::getQuestionsByExam($questionsArray);
            $data['questions'] = $questions;
            $data['exam'] = $exam;

            return view('v1.AccessPanel.Newdesign.Test')->with($data);
        }
        return redirect()->route('get-index');
    }

    public function getOnlineTestResults(){

        if(request()->session()->has('LoggedStuUsr')){

            $loggedUsr 	= request()->session()->get('LoggedStuUsr');

            $authUsr 	= Usergroup::getAuthenticated($loggedUsr);

        $data['title']      = 'E-Learning - Results';
        $data['page']       = 'result';
        $data['baseUrl'] 	= $this->default->defBaseUrl;
        $data['studentDetails'] = Student::getStudentByUsrId($loggedUsr);

        return view('v1.AccessPanel.Newdesign.Result')->with($data);
    }
    return redirect()->route('get-index');

    }

    public function getOnlineTestAnswers(){

        if(request()->session()->has('LoggedStuUsr')){

            $loggedUsr 	= request()->session()->get('LoggedStuUsr');

            $authUsr 	= Usergroup::getAuthenticated($loggedUsr);

        $data['title']      = 'E-Learning - Answers';
        $data['page']       = 'answer';
        $data['baseUrl'] 	= $this->default->defBaseUrl;
        $data['studentDetails'] = Student::getStudentByUsrId($loggedUsr);

        return view('v1.AccessPanel.Newdesign.Answer')->with($data);
    }
    return redirect()->route('get-index');

    }

    public function getStudentLogout(){

        $auth = SharedController::checkAuthenticated();

        if(request()->session()->has('LoggedStuUsr')){

            request()->session()->forget('LoggedStuUsr');
            return redirect()->route('get-index');

        } 
    }

}