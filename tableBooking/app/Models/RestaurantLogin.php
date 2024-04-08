<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RestaurantLogin extends Model
{
    use HasFactory;


    /**
     * @var array<int, string>
     */
    protected $fillable = [
        'email',
        'password'
    ];

    /**
     * @var array<int, string>
     */

    protected $hidden = [
        'password',
        'remember_token'
    ];

    protected function casts() : array
    {
        return [
            'email_verified_at' => 'dateTime',
            'password' => 'hashed'
        ];
    }
}
