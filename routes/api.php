<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\BookController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::prefix('user')->group(function(){
    Route::get('/users', function(Request $request){
        return $request->user(); 
    })->middleware('auth:api');
    
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:api');
});

Route::resource('book', BookController::class)->only([
    'index',
    'show'
]);

Route::resource('book', BookController::class)->except([
    'index',
    'show'
])->middleware('auth:api');
