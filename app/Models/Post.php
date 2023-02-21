<?php

namespace App\Models;

use App\Models\Region;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'phone',
        'uid',
        'region_id',
        'message'
    ];

    public function region()
    {
        return $this->belongsTo(Region::class);
    }
}
