<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

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
            $table->string('email');
            $table->int('phoneNumber');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
