<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Reservation>
 */
class ReservationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'pax' => rand(1,10),
            'date' => fake()->time(),
            'time' => fake()->dateTimeThisYear(),
            'remarks' => fake()->text(),
            'total_visits' => rand(0, 3)

        ];
    }
}
