<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Customer>
 */
class CustomerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'first_name' => fake()->firstName(),
            'last_name' => fake()->lastName(),
            'street_name' => fake()->streetName(),
            'city' => fake()->city(),
            'zip_code' => fake()->postcode(),
            'email' => fake()->email(),
            'phone_number' => fake()->phoneNumber(),
            'total_visits' => rand(0, 50)

        ];
    }
}
