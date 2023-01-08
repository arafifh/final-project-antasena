<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;


class Absensi extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'nrp',
        'department',
        'division',
        'subdivision'
    ];   
}
