<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class calle extends Model
{
    use HasFactory;
    protected $table= 'calle';
    public function sector(){
        return $this->belongTo('App\Models\sector', 'id_sector');
    }

    public function ciudad(){
        return $this->belongTo('App\Models\ciudad', 'id_ciudad');
    }


}
