<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\v1\TicketController;


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::post('/user/ticket/create', [TicketController::class, 'generateTicket'])->name('get-generate-ticket');
