<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    use HasFactory;
    protected $fillable =[
        'category_name',
        'category_slug',
        'asset_id'
    ];

    public function asset()
    {
        return $this->hasOne(asset::class,'asset_id','id');
    }

}
