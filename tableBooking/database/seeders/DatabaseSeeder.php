<?php

namespace Database\Seeders;

use App\Models\User;

use Illuminate\Database\Seeder;
use App\Models\CustomerLogin;
use App\Models\RestaurantLogin;
use App\Models\Customer;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        CustomerLogin::factory(25)->create();
        RestaurantLogin::factory(25)->create();
        Customer::factory(100)->create();

    }
}
