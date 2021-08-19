<?php

namespace App\Http\Resources\API\V1;

use App\Models\API\V1\Product;
use App\Models\API\V1\User;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {

        $path = request()->getHttpHost().'/storage/uploads/products/'.$this->image;
        return [
            'id' => $this->id,
            'title' => $this->title,
            'sub_title' => $this->sub_title,
            'description' => $this->description,
            'price' => $this->price,
            //'delivered' => $this->delivered == 0 ? 'Not Delivered' : 'Delivered',
            'offer' => $this->offer,
            'image' => $path,
            'created_by' => !empty($this->createdBy()->pluck('name')) ? $this->createdBy()->pluck('name')[0] : '',
            'category' => $this->category()->select('id', 'title', 'description', 'image')->get()
        ];
    }
}
