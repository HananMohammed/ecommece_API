<?php

namespace Database\Seeders;

use App\Models\API\V1\Category;
use Database\Factories\CategotyFactory;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = new CategotyFactory();
        $faker->count(3)->create();
    }
}
