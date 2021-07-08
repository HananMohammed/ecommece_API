<?php

namespace Database\Factories;

use App\Models\API\V1\Category;
use App\Models\API\V1\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $id= Category::all()->random()->id;
        return [
            'title' => $this->faker->name,
            'sub_title' => $this->faker->text(30),
            'description' => $this->faker->paragraph,
            'category_id' => $id,
            "price" => rand(2000, 10000),
            "offer" => $this->faker->randomNumber([0, 10]),
            'image' => $this->faker->image(storage_path('app/public/uploads/products'), 640, 480, null, false),
            'created_by' => 1
        ];
    }
}
