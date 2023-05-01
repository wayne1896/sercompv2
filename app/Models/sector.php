<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sector extends Model
{
    use HasFactory;
    protected $table= 'sector';

    public function ciudad(){
        return $this->belongsTo(ciudad::class, 'id_ciudad', 'id_ciudad');
    }

    public function calle(){
        return $this->hasMany('App\Models\calle');
    }
}
