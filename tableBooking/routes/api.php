<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerLoginController;
use App\Http\Controllers\RestaurantLoginController;


//routes for the customer login table
Route::get('customerlogins',[CustomerLoginController::class, 'index']);
Route::get('customerlogins/{id}',[ CustomerLoginController::class, 'show']);
Route::post('customerlogins', [CustomerLoginController::class, 'store']);
Route::put('customerlogins/{id}', [CustomerLoginController::class, 'update']);
Route::delete('customerlogins/{id}', [CustomerLoginController::class, 'delete']);



//Routes for the restaurant login tables
Route::get('restaurantlogins', [RestaurantLoginController::class, 'index']);
Route::get('restaurantlogins/{id}', [RestaurantLoginController::class, 'show']);
Route::post('restaurantlogins', [RestaurantLoginController::class, 'store']);
Route::put('restaurantlogin/{id}', [RestaurantLoginController::class, 'update']);
Route::delete('restaurantlogins/{id}', [RestaurantLoginController::class, 'delete']);



Route::get('user/', [App\Http\Controllers\UserController::class,'indexJson'] );
