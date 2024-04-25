<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ReservationReesource extends JsonResource
{
    /**
     * Transform the resource into an array.
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
