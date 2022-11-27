<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class View extends Model{
    

    protected function getUser($id){

        $prvl = DB::table('view_users')->where('id', $id)->first();
        
        if(!$prvl) return false; 

        return $prvl;
    }

    // protected function getUsers($usertype, $orderBy = 'ASC', $ordrVal = 'id'){

    //     return DB::table('view_users')->where('usertyperesult', '<>', $usertype)->orderBy($ordrVal, $orderBy)->get();
    // }

    protected function getUsers($usertype, $orderBy = 'ASC', $ordrVal = 'id'){

        return DB::table('view_users')->where('usertyperesult', '<>', $usertype)->orderBy($ordrVal, $orderBy)->get();
    }

    protected function getUsersById($userId = ''){

        $user = DB::table('view_users')->where('id', $userId)->first();
    
        if($user) return $user;
        return false;
    }

    protected function getLessons(){
        
        return DB::table('lessons_view')->orderBy('standard')->orderBy('subject')->orderBy('lessonOrder')->get();
    }
    protected function getLessonsBySubjectId($subjectId = '', $classId = ''){
        
        return DB::table('lessons_view')->where('SubjectId', $subjectId)->where('standard', $classId)->get();
    }

    protected function getLessonsBySubjectIdAndStandard($subjectId = '', $classId = '', $syId = ''){
        
        return DB::table('lessons_view')->where('SubjectId', $subjectId)->where('standard_id', $classId)->where('syllabusId', $syId)->get();
    }

    protected function getLessonsBySyls($mediumid, $classId, $subjectId, $syId){
        return DB::table('lessons_view')->where('medium_id', $mediumid)->where('SubjectId', $subjectId)->where('standard_id', $classId)->where('syllabusId', $syId)->get();
    }

    protected function getLessonsById($lessonId = ''){

        $lesson = DB::table('lessons_view')->where('lnId', $lessonId)->first();
    
        if($lesson) return $lesson;
        return false;
    }

    protected function getStudents(){
        
        return DB::table('view_students')->get();
    }
    protected function getStudentsById($studentId = ''){
        
        return DB::table('view_students')->where('id', $studentId)->first();
    }

    protected function getBookedServices($bStatus = 1){

        return DB::table('hf_view_db.booking_management')->where('bookingstatus', $bStatus)->get();
    }

    protected function getBookedServiceById($id = ''){

        return DB::table('hf_view_db.booking_management')->where('id', $id)->first();
    }

    protected function getVehicleTypesByCityId($cityId = ''){
        
        return DB::table('hf_view_db.vehicle_packages')->where('cityid', $cityId)->get();
    }

    protected function getVehicleTypesById($id = ''){
        
        return DB::table('hf_view_db.vehicle_packages')->where('id', $id)->first();
    }

    protected function getCities(){
        
        return DB::table('hf_view_db.states_and_cites')->get();
    }

    protected function getCityById($id = ''){
        
        return DB::table('hf_view_db.states_and_cites')->where('id', $id)->first();
    }

    protected function deSelectedPackages($cityId = ''){
        return DB::select('SELECT * FROM tsf_location_management.packages WHERE id NOT IN (SELECT packageid FROM tsf_booking_management.vehicles WHERE city = :cityId)', ['cityId' => $cityId]);
    }

    protected function getPrivilegedMenus($userId = ''){
        
        return DB::table('view_privileges')->where('userid', $userId)->get();
    }

    protected function getSubjects(){
        
        return DB::table('view_subjects')->orderBy('standardid')->get();
    }
    protected function getSubjectById($subjectId = ''){

        $subject = DB::table('view_subjects')->where('subjId', $subjectId)->first();
    
        if($subject) return $subject;
        return false;
    }

    protected function getStandards(){
        
        return DB::table('view_standards')->get();
    }
    
    protected function getStandardById($standardId = ''){

        $standard = DB::table('view_standards')->where('clssId', $standardId)->first();
    
        if($standard) return $standard;
        
        return false;
    }

    protected function getAllStaffView(){
       
        $staffs = DB::table('staffs')->leftJoin('users', 'staffs.stffUserId', '=', 'users.id')
                            ->leftJoin('addresses','staffs.stffAddressId','=','addresses.id')
                            ->leftJoin('emailaddresses','staffs.stffOfficalEmailId','=','emailaddresses.emlId')
                            ->leftJoin('contactdetails','staffs.stffPersonalContactId','=','contactdetails.condId')
                            ->leftJoin('orgclassstaffs','staffs.stffId','=','orgclassstaffs.ogcstffStaffMasterId')
                            ->leftJoin('staff_details','staffs.stffId','=','staff_details.staff_id')    
                            ->leftJoin('staffseducations','staffs.stffId','=','staffseducations.staff_id')
                            ->leftJoin('staffseduclgdetails','staffseducations.id','=','staffseduclgdetails.staff_edu_id')
                            ->leftJoin('states','addresses.state','=','states.id')
                            ->leftJoin('family','staffs.stffUserId','=','family.userid')
                            ->groupBy('staffs.stffUserId')
                            ->select('staffs.*','users.id_picture','addresses.*','states.statename as state_name','emailaddresses.*','contactdetails.*','orgclassstaffs.*','staff_details.*', 'family.*')
                            ->selectRaw("GROUP_CONCAT(staffseducations.qualification separator ', ') as qualifications")
                            ->selectRaw("GROUP_CONCAT(staffseduclgdetails.passedYear separator ', ') as passedYears")
                            ->selectRaw("GROUP_CONCAT(staffseduclgdetails.percentage separator ', ') as percentages")
                            ->selectRaw("GROUP_CONCAT(staffseduclgdetails.degree_class separator ', ') as degree_classes")
                            ->get();

        if($staffs) return $staffs;

        return false;
    }

    protected function getStaffView($staff_id){
       
        $staffs = DB::table('staffs')->where('stffId', $staff_id)->leftJoin('users', 'staffs.stffUserId', '=', 'users.id')
                            ->leftJoin('addresses','staffs.stffAddressId','=','addresses.id')
                            ->leftJoin('emailaddresses','staffs.stffOfficalEmailId','=','emailaddresses.emlId')
                            ->leftJoin('contactdetails','staffs.stffPersonalContactId','=','contactdetails.condId')
                            ->leftJoin('orgclassstaffs','staffs.stffId','=','orgclassstaffs.ogcstffStaffMasterId')
                            ->leftJoin('staff_details','staffs.stffId','=','staff_details.staff_id')    
                            ->leftJoin('staffseducations','staffs.stffId','=','staffseducations.staff_id')
                            ->leftJoin('staffseduclgdetails','staffseducations.id','=','staffseduclgdetails.staff_edu_id')
                            ->leftJoin('states','addresses.state','=','states.id')
                            ->leftJoin('family','staffs.stffUserId','=','family.userid')
                            ->groupBy('staffs.stffUserId')
                            ->select('staffs.*','users.id_picture','users.username','addresses.*','states.statename as state_name','emailaddresses.*','contactdetails.*','orgclassstaffs.*','staff_details.*', 'family.*')
                            ->selectRaw("GROUP_CONCAT(staffseducations.qualification separator ', ') as qualifications")
                            ->selectRaw("GROUP_CONCAT(staffseduclgdetails.passedYear separator ', ') as passedYears")
                            ->selectRaw("GROUP_CONCAT(staffseduclgdetails.percentage separator ', ') as percentages")
                            ->selectRaw("GROUP_CONCAT(staffseduclgdetails.degree_class separator ', ') as degree_classes")
                            ->first();

        if($staffs) return $staffs;

        return false;
    }

    protected function getUsersView(){
        $users = DB::table('users')->whereIn('usertype', [1,2,5,6])->leftJoin('user_details', 'users.id','=', 'user_details.userid')
                    ->leftJoin('addresses','user_details.address_id','=','addresses.id')
                    ->leftJoin('emailaddresses','user_details.email_id','=','emailaddresses.emlId')
                    ->leftJoin('contactdetails','user_details.contact_id','=','contactdetails.condId')
                    ->leftJoin('orgdetails','users.userOrgId','=','orgdetails.olSubOrgId')
                    ->leftJoin('states','addresses.state','=','states.id')
                    ->select('users.*', 'user_details.*', 'addresses.*', 'emailaddresses.*', 'contactdetails.*', 'orgdetails.*', 'states.*', 'users.status as userstatus')
                    ->get();

        if ($users) return $users;

        return false;
    }

    protected function getUserViewById($userid){
        $users = DB::table('users')->whereIn('usertype', [1,2,5,6])
                    ->where('users.id', $userid)
                    ->leftJoin('user_details', 'users.id','=', 'user_details.userid')
                    ->leftJoin('addresses','user_details.address_id','=','addresses.id')
                    ->leftJoin('emailaddresses','user_details.email_id','=','emailaddresses.emlId')
                    ->leftJoin('contactdetails','user_details.contact_id','=','contactdetails.condId')
                    ->leftJoin('orgdetails','users.userOrgId','=','orgdetails.olSubOrgId')
                    ->leftJoin('states','addresses.state','=','states.id')
                    ->select('users.*', 'user_details.*', 'addresses.*', 'emailaddresses.*', 'contactdetails.*', 'orgdetails.*', 'states.*', 'users.status as userstatus')
                    ->first();

        if ($users) return $users;

        return false;
    }
    
    protected function getStandardSubjectView($standard_id){
        $subjects = DB::table('standard_subjects')->where('subjects.subjIsStatus', 1)
                        ->leftJoin('classes', 'standard_subjects.standard_id', '=', 'classes.clssId')
                        ->leftJoin('subjects','standard_subjects.subject_id', '=', 'subjects.subjId')
                        ->where('standard_subjects.standard_id', $standard_id)
                        ->orderBy('classes.clssId')
                        ->orderBy('subjects.subject_order')
                        ->get();
        return $subjects;
    }

    protected function getExamsListView($standard_id, $subject_id){

        if ($subject_id == 0){
            return DB::table('exam_schedules')->leftJoin('exams','exam_schedules.examid', '=', 'exams.id')->where('exams.isCompleted', 0)
            ->where('exam_schedules.standard_id', $standard_id)->get();    
        }

        return DB::table('exam_schedules')->leftJoin('exams','exam_schedules.examid', '=', 'exams.id')->where('exams.isCompleted', 0)
                    ->where('exam_schedules.standard_id', $standard_id)->where('exam_schedules.subject_id', $subject_id)->get();
    }

    protected function getStudentsView(){
        $students = DB::table('view_students')->leftJoin('family','view_students.student_userid', '=', 'family.userid')
                                            ->get();

        return $students;
    }

    protected function getStudentsViewById($studentId){
        $students = DB::table('view_students')->where('view_students.id', $studentId)
                        ->leftJoin('family','view_students.student_userid', '=', 'family.userid')
                        ->first();
        return $students;
    }

    protected function getAllStudents(){
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
                                        ->select('students.*','users.*','family.*','contactdetails.*','addresses.*','states.*','emailaddresses.*','orgstudents.*','orgdetails.*','studentsclasses.*','classes.*','sections.*')
                                        ->selectRaw('DATE_FORMAT(students.stuDOB, "%D %b %Y") as date_of_birth')
                                        ->get();

        return $students;
    }

    protected function getOneStudents($stuId){
        $students = DB::table('students')->where('stuId', $stuId)->leftJoin('users','users.id', '=', 'students.stuUserId')  
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
                                        ->select('students.*','users.*','family.*','contactdetails.*','addresses.*','states.*','emailaddresses.*','orgstudents.*','orgdetails.*','studentsclasses.*','classes.*','sections.*')
                                        ->selectRaw('DATE_FORMAT(students.stuDOB, "%D %b %Y") as date_of_birth')
                                        ->first();

        return $students;
    }

    protected function getSubjectsView($subjectId){
        return DB::table('standard_subjects')->where('subjects.subjId', $subjectId)
        ->leftJoin('classes','classes.clssId','=', 'standard_subjects.standard_id')
        ->leftJoin('subjects','subjects.subjId','=', 'standard_subjects.subject_id')
        ->leftJoin('mediums','subjects.subjMediumId','=', 'mediums.mmId')
        ->orderBy('subjects.subjId')
        ->orderBy('classes.clssId')
        ->groupBy('subjects.subjId')
        ->select('standard_subjects.*', 'subjects.*', 'mediums.mmName')
        ->selectRaw("GROUP_CONCAT(classes.clssName separator ', ') as class_names")
        ->selectRaw("GROUP_CONCAT(classes.clssId separator ', ') as class_ids")
        ->first();
    }

}