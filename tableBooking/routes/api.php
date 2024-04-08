<?php


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerLoginController;
use App\Models\CustomerLogin;

Route::middleware('auth:api')->get('/user', function(Request $request){
    return $request->user();
});

Route::get('/customerlogins',[CustomerLoginController::class, 'index']);
Route::get('/customerlogins/{id}', [CustomerLoginController::class, 'show']);
Route::post('/customerlogins', [CustomerLoginController::class, 'store']);
Route::put('/customerlogins/{id}', [CustomerLoginController::class, 'update']);
Route::delete('/customerlogin/{id}', CustomerLoginController::class, 'destroy');