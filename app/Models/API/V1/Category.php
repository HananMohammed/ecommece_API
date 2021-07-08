<?php

namespace App\Models\API\V1;

use App\Models\API\V1\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use HasFactory; use SoftDeletes;

    protected $fillable = [ 'title' ,'description', 'image', 'created_by'];

    /** relation to users table
     *
     * @return BelongsTo
     */
    public function createdBy(){

        return $this->belongsTo(User::class, 'created_by');
    }
}
