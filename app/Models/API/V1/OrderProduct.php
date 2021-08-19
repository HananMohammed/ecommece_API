<?php

namespace App\Models\API\V1;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class OrderProduct extends Model
{
    use HasFactory; use SoftDeletes;

    protected $table = 'order_product';

    protected $fillable = ['order_id', 'product_id', 'quantity', 'delivered'];

    protected $hidden = [
        'updated_at',
        'deleted_at',
        'created_at'
    ];

}
