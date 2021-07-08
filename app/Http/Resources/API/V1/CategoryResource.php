<?php

namespace App\Http\Resources\API\V1;

use App\Models\API\V1\User;
use Illuminate\Http\Resources\Json\JsonResource;

class CategoryResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */

    public function toArray($request)
    {
        $path = request()->getHttpHost().'/storage/uploads/categories/'.$this->image;
        return [
            'id' => $this->id,
            'title' => $this->title,
            'description' => $this->description,
            'image' => $path,
            'created_by' =>  !empty( $this->createdBy()->pluck('name')->toArray() )? $this->createdBy()->pluck('name')[0]: '',
        ];
    }
}
