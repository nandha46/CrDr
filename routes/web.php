<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\v1\AuthController;
use App\Http\Controllers\v1\MembersController;
use App\Http\Controllers\v1\SharedController;
use App\Http\Controllers\v1\ReportsController;
use App\Http\Controllers\v1\ProgramsController;
use App\Http\Controllers\v1\IndexController;
use App\Http\Controllers\v1\UploadController;
use App\Services\AnalyticServices;

Route::group(['middleware' => 'web'], function(){

	$appDefaults = SharedController::getAppDefaults();

	Route::get('/', [IndexController::class, 'getLanding'])->name('get-index');
	Route::get('/home', [IndexController::class, 'getHome'])->name('get-home');
	Route::get('/profile', [IndexController::class, 'getProfile'])->name('get-profile');
	Route::get('/course/{cid?}', [IndexController::class, 'getCourse'])->where(['cid' => '^[0-9]+$'])->name('get-course');
	Route::get('/online-test/{tid?}', [IndexController::class, 'takeOnlineTest'])->where(['tid' => '^[0-9]+$'])->name('get-online-test');

	Route::post('/online-test/submission', [AjaxController::class, 'postResultSubmission'])->name('post-test-submission');
	
	Route::post('/api/v1/test-lists', [AjaxController::class, 'getTestLists'])->name('get-test-lists');

	Route::get('/login', [IndexController::class, 'getStudentLogin'])->name('get-student-login');
	Route::post('/login', [IndexController::class, 'postStudentLogin'])->name('post-student-login');
	Route::get('/logout', [IndexController::class, 'getStudentLogout'])->name('post-student-logout');

	Route::group(['prefix' => $appDefaults->prefix], function(){

		/**
		 * Route to get a CSRF token for use in POSTMAN tests
		 */

		// Route::get('/token', function () {
		// 	return csrf_token(); 
		// });

		Route::get('/login', [AuthController::class, 'getLogin'])->name('get-login');
		Route::get('/', [AuthController::class, 'getLogin'])->name('get-login');
		Route::post('/login', [AuthController::class, 'postLogin'])->name('post-login');

		// Route::get('/profile', [AuthController::class, 'getProfile'])->name('get-profile');
		Route::get('/profile', [MembersController::class, 'getDashboardProfile'])->name('get-profile');
		Route::post('/profile', [AuthController::class, 'postProfile'])->name('post-profile');
		
		// Members
		Route::get('/users', [MembersController::class, 'getUsers'])->name('get-users');
		Route::post('/users/action', [MembersController::class, 'postAddEditUsers'])->name('add-edit-post-users');
		
		// Data Upload
		Route::post('/students/upload', [UploadController::class, 'uploadStudents'])->name('upload-students');
			
		// Programs

		Route::get('/events',[ProgramsController::class,'getEvents'])->name('get-events');
		Route::post('/events/action',[ProgramsController::class,'postAddEditEvents'])->name('add-edit-post-events');

		Route::get('/blogs',[ProgramsController::class,'getBlogs'])->name('get-blogs');
		Route::post('/blogs/action',[ProgramsController::class,'postAddEditBlogs'])->name('add-edit-post-blogs');

		Route::get('/announcements',[ProgramsController::class,'getAnnouncements'])->name('get-announcements');
		Route::post('/announcements/action',[ProgramsController::class,'postAddEditAnnouncements'])->name('add-edit-post-announcements');

		Route::get('/press-releases',[ProgramsController::class,'getPressReleases'])->name('get-press-releases');
		Route::post('/press-releases/action',[ProgramsController::class,'postAddEditPressReleases'])->name('add-edit-post-press-releases');

		// Access Controllers

		Route::post('/status', [SharedController::class, 'updateStatus'])->name('update-status');

		// Check duplicate
		Route::post('/check-duplicate', [SharedController::class, 'checkDuplicate'])->name('check-duplicate');

		Route::get('/logout', [AuthController::class, 'getLogout'])->name('get-logout');

		Route::get('/access-denied/{urls?}/{mode?}',  [AuthController::class, 'getAccessDenied'])->name('get-access-denied');

		// Reports

		Route::get('/reports-analytics', [ReportsController::class, 'getAnalyticReports'])->name('get-reports-analytics');
		
		Route::get('/get-student-reports', [ReportsController::class, 'getStudentReports'])->name('get-student-reports');
		Route::get('/get-performance-reports/{stuUId?}', [ReportsController::class, 'getPerformanceReport'])->where(['stuUId' => '^[0-9]+$'])->name('get-performance-reports');
		Route::get('/get-staff-reports', [ReportsController::class, 'getStaffReport'])->name('get-student-reports');
		Route::get('/get-exam-reports', [ReportsController::class, 'getExamReport'])->name('get-exam-reports');

		// Uploads
		Route::get('/upload-tsv', [ReportsController::class, 'getUploadTSV'])->name('get-uploads-tsv');
		
		// Analytics
		Route::get('/analytics', [AnalyticServices::class, 'getAnalytics'])->name('get-analytics');

		// Delete Routes API 
		Route::delete('/delete/student/{stuId?}',[MembersController::class, 'deleteStudent']);

	});
});

