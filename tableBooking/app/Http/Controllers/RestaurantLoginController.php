<?php

namespace App\Http\Controllers;

use App\Models\CustomerLogin;
use Illuminate\Http\Request;
use Symfony\Component\HttpKernel\Event\ResponseEvent;



class RestaurantLoginController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $restuarantlogins = CustomerLogin::all();
        return response()->json($restuarantlogins);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $restuarantlogin = new CustomerLogin;
        $restuarantlogin->email = $request->email;
        $restuarantlogin->password = $request->password;
        $restuarantlogin->save();

        return response()->json([
            'message' => 'Customer login Created'
        ], 201);

    }

    /**
     * Display the specified resource.
     */
    public function show(CustomerLogin $id)
    {
        $restuarantlogin = CustomerLogin::find($id);
        
        if(!empty($restuarantlogin)) {    
            return response()->json($restuarantlogin);
        
        } else 
        {
            return response()->json([
                'message' => 'Customer not Found',
            ], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, CustomerLogin $id)
    {
        if (CustomerLogin::where('id', $id)->exist()){
        
            $restuarantlogin =  CustomerLogin::find($id);
            $restuarantlogin->email = is_null($request->email) ? $restuarantlogin->email : $request->email;
            $restuarantlogin->password = is_null($request->password) ? $restuarantlogin->password : $request->password;
            $restuarantlogin->save();
            
            return response()->json([
                'message' => 'Customer login updated!'
            ], 404);
        } else {
            return response()->json([
                "message" => "Customer Login not Found",
            ], 404);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(CustomerLogin $id)
    {   
        $restuarantlogin = CustomerLogin::findorFail($id);
        if($restuarantlogin != null){

            $restuarantlogin->delete();
            $restuarantlogin->truncate();
            
            return response()->json([
                "message" => " Customer Login Deleted"
            ], 202);
        } else 
        {
            return response()->json([
                "message" => "Customer not found"
            ], 404);
        }
    }
}
