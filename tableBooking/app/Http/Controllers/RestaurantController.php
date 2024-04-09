<?php

namespace App\Http\Controllers;

use App\Models\Restaurant;
use Illuminate\Http\Request;

class RestaurantController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $restaurant = Restaurant::all();
        return response()->json($restaurant);
    }
    /**
     * Store a newly created resource in storage.
     */

    public function store(Request $request)
    {
        $restaurant = new Restaurant;
        $restaurant->name = $request->name;
        $restaurant->street_name = $request->street_name;
        $restaurant->city = $request->city;
        $restaurant->zip_code = $request->zip_code;
        $restaurant->phone_number = $request->phone_number;
        $restaurant->save();

        return response()->json([
            'message' => 'Restaurant Created'
        ],201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Restaurant $restaurantId)
    {
        $restaurant = Restaurant::find($restaurantId);

        if(!empty($restaurantId)){
            return response()->json($restaurantId);
        }else {
            return response()->json([
                'message' => 'Restaurant Not Found'
            ], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Restaurant $restaurantId)
    {
        if(Restaurant::where('id', $restaurantId)->exists()){
            $restaurant = Restaurant::find($restaurantId);
            $restaurant->name = is_null($request->name) ? $restaurant->name : $request->name;
            $restaurant->street_name = is_null($request->street_name) ? $restaurant->street_name : $request->street_name;
            $restaurant->city = is_null($request->city) ? $restaurant->city : $request->city;
            $restaurant->zip_code = is_null($request->zip_code) ? $restaurant->zip_code : $request->zipcode;
            $restaurant->phone_number = is_null($request->phone_number) ? $restaurant->phone_number : $request->phone_number;
            $restaurant->save();

            return response()->json([
                'message' => 'Restaurant updated'
            ], 404);
        } else {
            return response()->json([
                'message' => 'Restaurant Not Found'
            ], 404);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Restaurant $restaurantId)
    {
        $restaurant = Restaurant::findorFail($restaurantId);
        if($restaurant !== null) {
            $restaurant->delete();
            $restaurant->truncate();

            return response()->json([
                'message' => 'Restaurant Deleted!'
            ], 202);
        } else {
            return response()->json([
                'message' => 'Restaurant Not Found'
            ]);
        }
    }
}
