<?php

namespace App\Models\API\V1;

use App\Models\API\V1\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Delivery extends Model
{
    use HasFactory;

    protected $fillable = ['order_id', 'driver_id', 'created_by' ];

    /** relation to Users table
     *
     * @return BelongsTo
     */
    public function createdBy(){

        return $this->belongsTo(User::class, 'created_by');
    }

    /** relation to orders table
     *
     * @return BelongsTo
     */
    public function order(){

        return $this->belongsTo(Order::class, 'order_id');
    }
}
