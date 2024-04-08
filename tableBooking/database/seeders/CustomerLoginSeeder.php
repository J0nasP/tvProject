<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class CustomerLoginSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        foreach(range(1, 25) as $index) {
            DB::table('customer_logins')->insert([
                'email' => $faker->unique()->safeEmail,
                'password' => bcrypt('password'),
            ]);
        }
        
    }
}
