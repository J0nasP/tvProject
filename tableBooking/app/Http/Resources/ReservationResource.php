<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ReservationResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'pax' => $this->pax,
            'date' => $this->date,
            'time' => $this->time,
            'remarks' => $this->remarks,
            'total_visits' => $this->total_visits

        ];
    }
}
