<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClientsSaying extends Model
{
    use HasFactory;

    public function homePage(){
        return $this->belongsTo(HomePageSection::class);
    }
}
