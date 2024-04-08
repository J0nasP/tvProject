<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Validation\Rules\Unique;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('customer', function(Blueprint $table) {
            $table->id();
            $table->string('FirstName');
            $table->string('Lastname');
            $table->string('street');
            $table->int('zipcode');
            $table->string('email')->unique();
            $table->int('phoneNumber');
            $table->int('visitsTotal');
        });

        Schema::create(('customerLogin'), function(Blueprint $table){
            $table->id();
            $table->string('email')->primary();
            $table->timestamp('emailVerifiedAt')->nullable();
            $table->string('password');
        });

        Schema::create('restaurant', function(Blueprint $table){
            $table->id();
            $table->string('name');
            $table->string('street');
            $table->string('city');
            $table->int('zipCode');
            $table->int('phoneNumber');
        });

        Schema::create('restaurantLogin', function(Blueprint $table){
            $table->id();
            $table->string('email')->primary();
            $table->timestamp('emailVerifiedAt')->nullable();
            $table->string('password');
        });

        Schema::create('reservation', function(Blueprint $table){
            $table->id();
            $table->int('pax');
            $table->date('date');
            $table->string('timeOfDay');
            $table->string('customer');
            $table->string('remarks');
            $table->int('visitsTotal');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customer');
        Schema::dropIfExists('customerLogin');
        Schema::dropIfExists('restaurant');
        Schema::dropIfExists('restaurantLogin');
        Schema::dropIfExists('reservations');
    }
};
