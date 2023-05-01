<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ciudad extends Model
{
    use HasFactory;
    protected $table= 'ciudad';
    public function sector(){
        return $this->hasMany('App\Models\sector');
    }

    public function calle(){
        return $this->hasMany('App\Models\calle');
    }


}
