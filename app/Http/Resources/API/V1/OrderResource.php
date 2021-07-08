<?php

namespace App\Http\Resources\API\V1;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
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
            'product_id' => $this->product_id,
            'quantity' => $this->quantity,
            'discount' =>$this->discount,
            'discount_code' =>$this->discount_code,
            'total' =>$this->total,
            'payment_gateway' =>$this->payment_gateway,
            'shipped' =>$this->shipped,
            'error' =>$this->error,
            'customer'=>[
                'id' =>$this->user_id,
                'email' =>$this->email,
                'name' =>$this->name,
                'phone' =>$this->phone,
                'address' =>$this->address,
                'city' =>$this->city,
                'province' =>$this->province,
                'postalcode' =>$this->postalcode,
                'name_on_card' =>$this->name_on_card
            ],
            'product' => [
                'title' => $this->title,
                'sub_title' => $this->sub_title,
                'description' => $this->description,
                'price' => $this->price,
                'offer' => $this->offer,
                'delivered' => $this->delivered == 0 ? 'Not Delivered' : 'Delivered',
                'image' => $path,
                'category_id' => $this->category_id
            ]
        ];
    }
}
