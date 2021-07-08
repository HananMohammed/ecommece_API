<?php

namespace App\Models\API\V1;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Order extends Model
{
    use HasFactory; use SoftDeletes;

    protected $fillable = [
        'user_id', 'email', 'name', 'address', 'city',
        'province', 'postalcode', 'phone', 'name_on_card', 'discount',
        'discount_code', 'subtotal', 'tax', 'total', 'gateway', 'error',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function products()
    {
        return $this->belongsToMany(Product::class)->withPivot('quantity');
    }

    public function delivery()
    {
        return $this->belongsto(Delivery::class);
    }

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'updated_at',
        'deleted_at',
        'created_at'
    ];
}
