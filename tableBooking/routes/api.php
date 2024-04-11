<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;


Route::get('/user/', [App\Http\Controllers\UserController::class,'indexJson'] );
