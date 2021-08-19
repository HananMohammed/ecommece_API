<?php

namespace App\Models\API\V1;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WalletTransfer extends Model
{
    use HasFactory;

    protected $fillable = ['transfer_from', 'transfer_to', 'wallet_id', 'value'];
}
