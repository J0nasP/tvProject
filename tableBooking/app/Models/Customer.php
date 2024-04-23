<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;




    protected $fillable = [
        'first_name',
        'last_name',
        'street',
        'city',
        'zipcode',
        'email',
        'phone_number',
        'total_visits'
    ];
}
