<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\v1\AuthController;
use App\Http\Controllers\v1\CompanyController;
use App\Http\Controllers\v1\EditController;
use App\Http\Controllers\v1\MembersController;
use App\Http\Controllers\v1\SharedController;
use App\Http\Controllers\v1\ReportsController;
use App\Http\Controllers\v1\ProgramsController;
use App\Services\AnalyticServices;

Route::group(['middleware' => 'web'], function(){

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

		// Edit Routes
		Route::post('/edit/common', [EditController::class, 'getEditJson'])->name('get-edit-json');
		
		// Companies
		Route::get('/list-company', [CompanyController::class, 'getCompanies'])->name('get-companies');
		Route::post('/list-company', [CompanyController::class, 'postAddEditCompany'])->name('add-company');
		Route::get('/select-company', [CompanyController::class, 'selectCompany'])->name('get-select-company');
		Route::post('/select-company', [CompanyController::class, 'postSelectCompany'])->name('post-select-company');
		Route::get('/close-company', [CompanyController::class, 'closeCompany'])->name('get-close-company');
		Route::get('/upload-company', [CompanyController::class, 'getUploadPage'])->name('get-upload-company');
		Route::post('/upload-company', [CompanyController::class, 'postUploadData'])->name('post-company-upload');
		
		// load company year
		Route::post('/load-company-year', [CompanyController::class, 'loadCompanyYear'])->name('load-company-year');
			
		// Programs

		Route::get('/events',[ProgramsController::class,'getEvents'])->name('get-events');
		Route::post('/events/action',[ProgramsController::class,'postAddEditEvents'])->name('add-edit-post-events');

		Route::get('/press-releases',[ProgramsController::class,'getPressReleases'])->name('get-press-releases');
		Route::post('/press-releases/action',[ProgramsController::class,'postAddEditPressReleases'])->name('add-edit-post-press-releases');

		// Access Controllers

		Route::post('/status', [SharedController::class, 'updateStatus'])->name('update-status');

		// Check duplicate
		Route::post('/check-duplicate', [SharedController::class, 'checkDuplicate'])->name('check-duplicate');

		Route::get('/logout', [AuthController::class, 'getLogout'])->name('get-logout');

		Route::get('/access-denied/{urls?}/{mode?}',  [AuthController::class, 'getAccessDenied'])->name('get-access-denied');

		// Reports

		Route::get('/daybook', [ReportsController::class, 'getDaybooks'])->name('get-daybooks');
		Route::get('/daybook-report', [ReportsController::class, 'getDaybooksReport'])->name('get-daybooks-report');
		Route::get('/ledger', [ReportsController::class, 'getLedger'])->name('get-ledger');
		Route::get('/ledger-report', [ReportsController::class, 'getLedgerReport'])->name('get-ledger-report');
		Route::get('/trial-balance', [ReportsController::class, 'getTrialBalance'])->name('get-trial-balance');
		Route::get('/trial-balance-report', [ReportsController::class, 'getTrialBalanceReport'])->name('get-trial-balance-report');
		Route::get('/trading-pnl', [ReportsController::class, 'getTradingPNL'])->name('get-trading-pnl');
		Route::get('/trading-pnl-report', [ReportsController::class, 'getTradingPNLReport'])->name('get-trading-pnl-report');
		Route::get('/trial-balance', [ReportsController::class, 'getTrialBalance'])->name('get-trial-balance');
		Route::get('/trial-balance-report', [ReportsController::class, 'getTrialBalanceReport'])->name('get-trial-balance-report');

		Route::get('/reports-analytics', [ReportsController::class, 'getAnalyticReports'])->name('get-reports-analytics');
		Route::get('/get-student-reports', [ReportsController::class, 'getStudentReports'])->name('get-student-reports');
		Route::get('/get-performance-reports/{stuUId?}', [ReportsController::class, 'getPerformanceReport'])->where(['stuUId' => '^[0-9]+$'])->name('get-performance-reports');
		Route::get('/get-staff-reports', [ReportsController::class, 'getStaffReport'])->name('get-student-reports');
		Route::get('/get-exam-reports', [ReportsController::class, 'getExamReport'])->name('get-exam-reports');
		
		// Analytics
		Route::get('/analytics', [AnalyticServices::class, 'getAnalytics'])->name('get-analytics');

});

