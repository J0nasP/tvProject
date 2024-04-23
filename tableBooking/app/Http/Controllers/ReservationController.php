<?php

namespace App\Http\Controllers;

use App\Models\Reservation;
use App\Models\Restaurant;
use GuzzleHttp\RetryMiddleware;
use Illuminate\Http\Request;

class ReservationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $reservation = Reservation::all();
        return response()->json($reservation);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $reservation = new Reservation;
        $reservation->pax = $request->pax;
        $reservation->date = $request->date;
        $reservation->time = $request->time;
        $reservation->customer = $request->customer;
        $reservation->remarks = $request->remarks;
        $reservation->total_visits = $request->total_visits;
        $reservation->save();

        return response()->json([
            'message' => 'New Reservations created',
        ],201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Reservation $reservationId)
    {
        $reservation = Reservation::find($reservationId);
        if (!empty($reservation)){
            return response()->json($reservation);
        } else {
            return response()->json([
                'message' => 'Reservation not Found'
            ], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Reservation $reservationId)
    {
        if (Reservation::where('id', $reservationId)->exists()){
            $reservation = Reservation::find($reservationId);
            $reservation->pax = is_null($request->pax) ? $reservation->pax : $request->name;
            $reservation->date = is_null($request->date) ? $reservation->date : $request->date;
            $reservation->time = is_null($request->time) ? $reservation->time : $request->time;
            $reservation->customer = is_null($request->customer) ? $reservation->customer : $request->customer;
            $reservation->remarks = is_null($request->remarks) ? $reservation->remarks : $request->remarks;
            $reservation->total_visits =is_null($request->total_visits) ? $reservation->total_visits : $request->total_visits;
            $reservation->save();

            return response()->json([
                'message' => 'Reservation updated'
            ],404);
        } else {
            return response()->json([
                'message' => 'Reservation Not Found'
            ],404);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Reservation $reservationId)
    {
        $reservation = Reservation::findorFail($reservationId);
        if ($reservation !== null){
            $reservation->delete();
            $reservation->truncate();

            return response()->json([
                'message' => 'Reservation Deleted'
            ], 202);
        } else{
            return response()->json([
                'message' => 'Reservation Not Found'
            ], 404);
        }
    }
}
