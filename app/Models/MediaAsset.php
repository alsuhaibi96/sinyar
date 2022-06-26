<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Models\Page;
class MediaAsset extends Model
{
    use HasFactory;

    public function page(){
        return $this->belongsTo(Page::class);
    }
}
