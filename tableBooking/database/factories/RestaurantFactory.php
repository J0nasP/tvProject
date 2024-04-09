<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Restaurant>
 */
class RestaurantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->word(),
            'street_name' => fake()->streetName(),
            'city' => fake()->city(),
            'zip_code' => fake()->postcode(),
            'email' => fake()->email(),
            'phone_number' => fake()->phoneNumber(),
        ];
    }
}
