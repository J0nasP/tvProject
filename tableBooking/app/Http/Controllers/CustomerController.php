<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $customer = Customer::all();
        return response()->json($customer);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $customer = new Customer;
        $customer->first_name = $request->first_name;
        $customer->larst_name = $request->last_name;
        $customer->street_name = $request->street_name;
        $customer->city = $request->city;
        $customer->zip_code = $request->zip_code;
        $customer->phone_number = $request->phone_number;
        $customer->total_visits = $request->total_visits;
        $customer->save();

        return response()->json([
            'message' => 'Customer Created'
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Customer $customerId)
    {
        $customer = Customer::find($customerId);

        if(!empty($customer)) {
            return response()->json($customer);
        } else{
            return response()->json([
                'message' => 'Customer not found'
            ], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Customer $customerId)
    {
        if (Customer::where('id', $customerId)->exists()){
            $customer = Customer::find($customerId);
            $customer->first_name = is_null($request->first_name) ? $customer->first_name : $request->first_name;
            $customer->last_name = is_null($request->last_name) ? $customer->last_name : $request->last_name;
            $customer->street_name = is_null($request->street_name) ? $customer->street_name : $request->street_name;
            $customer->city = is_null($request->city) ? $customer->city : $request->city;
            $customer->zip_code = is_null($request->zip_code) ? $customer->zip_code : $request->zipcode;
            $customer->phone_number = is_null($request->phone_number) ? $customer->phone_number : $request->phone_number;
            $customer->total_visits = is_null($request->total_visits) ? $customer->total_visits : $request->total_visits;
            $customer->save();

            return response()->json([
                'message' => 'Customer updated'
            ],404);
        } else {
            return response([
                'message' => 'Customer Not Found'
            ], 404);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Customer $customerId)
    {
        $customer = Customer::findorFail($customerId);
        if ($customer != null){
            $customer->delete();
            $customer->truncate();

            return response()->json([
                'message' => 'Customer Deleted'
            ], 202);
        } else{
            return response()->json([
                'message' => 'Customer not Found'
            ], 404);
        }
    }
}
