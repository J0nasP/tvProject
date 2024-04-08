<?php

namespace App\Http\Controllers;

use App\Models\CustomerLogin;
use Illuminate\Http\Request;
use Symfony\Component\HttpKernel\Event\ResponseEvent;



class CustomerLoginController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $customerLogins = CustomerLogin::all();
        return response()->json($customerLogins);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $customerLogin = new CustomerLogin;
        $customerLogin->email = $request->email;
        $customerLogin->password = $request->password;
        $customerLogin->save();

        return response()->json([
            'message' => 'Customer login Created'
        ], 201);

    }

    /**
     * Display the specified resource.
     */
    public function show(CustomerLogin $id)
    {
        $customerLogin = CustomerLogin::find($id);
        
        if(!empty($customerLogin)) {    
            return response()->json($customerLogin);
        
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
        
            $customerLogin =  CustomerLogin::find($id);
            $customerLogin->email = is_null($request->email) ? $customerLogin->email : $request->email;
            $customerLogin->password = is_null($request->password) ? $customerLogin->password : $request->password;
            $customerLogin->save();
            
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
        $customerLogin = CustomerLogin::findorFail($id);
        if($customerLogin != null){

            $customerLogin->delete();
            $customerLogin->truncate();
            
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
