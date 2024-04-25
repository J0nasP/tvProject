<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerLoginController;
use App\Http\Controllers\ReservationController;
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
Route::put('restaurantlogins/{id}', [RestaurantLoginController::class, 'update']);
Route::delete('restaurantlogins/{id}', [RestaurantLoginController::class, 'delete']);

//Routes for the reservations
Route::get('reservations', [ReservationController::class, 'index']);
Route::get('reservations/{id}', [ReservationController::class, 'show']);
Route::post('reservations', [ReservationController::class, 'store']);
Route::put('reservations/{id}', [ReservationController::class, 'update']);
Route::delete('reservations/{id}', [ReservationController::class, 'delete']);
// for the view on the backend
Route::get('reservations/',  [ReservationController::class, 'indexJson']);

