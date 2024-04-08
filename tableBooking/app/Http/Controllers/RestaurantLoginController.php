<?php

namespace App\Http\Controllers;

use App\Models\RestaurantLogin;
use Illuminate\Http\Request;

class RestaurantLoginController extends Controller
{
    public function index()
    {
        return RestaurantLogin::all();
    }
}