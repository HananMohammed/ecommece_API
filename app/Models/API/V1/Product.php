<?php

namespace App\Models\API\V1;

use App\Models\API\V1\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory; use SoftDeletes;

    protected $fillable = [ 'title' , 'sub_title', 'description','price' ,'offer' , 'delivered', 'image','category_id', 'created_by'];

    /** relation to Category table
     *
     * @return BelongsTo
     */
    public function category(){

        return $this->belongsTo(Category::class, 'category_id');
    }

    /** relation to users table
     *
     * @return BelongsTo
     */
    public function createdBy(){

        return $this->belongsTo(User::class, 'created_by');
    }

    protected $hidden = [
        'updated_at',
        'deleted_at',
        'created_at'
    ];
}
