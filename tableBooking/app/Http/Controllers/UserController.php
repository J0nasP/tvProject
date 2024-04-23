<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Http\Resources\UserResource;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index (Request $request){
        return view('user.index');
    }

    public function indexJson() {
        $users = User::Pageinate(20);
        return UserResource::collection($users);

    }
}
