<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HomePageSection extends Model
{
    use HasFactory;

    public function sayings(){
       return $this->hasMany(ClientsSaying::class,'home_id');
    }
}
