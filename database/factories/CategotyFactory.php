<?php

namespace Database\Factories;

use App\Models\API\V1\Category;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;

class CategotyFactory extends Factory
{
    /**
     * The name of the factory's Category model.
     *
     * @var string
     */
    protected $model = Category::class;


    /**
     * Define the Category's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->name,
            'description' => $this->faker->text,
            'image' => $this->faker->image(storage_path('app/public/uploads/categories'), 640, 480, null, false),
            'created_by' => 1
        ];
    }
}
