<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class productasset extends Model
{
    use HasFactory;
    protected $fillable =[
        'asset_id',
        'product_id',
    ];
    public function product()
    {
        return $this->morphedByMany(product::class, 'product_id','id');
    }
    public function asset()
    {
        return $this->morphedByMany(asset::class, 'asset_id','id');
    }
}
