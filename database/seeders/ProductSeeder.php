<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Size;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        $category_ids = Category::all()->pluck('id')->toArray();
        $size_ids = Size::all()->pluck('id')->toArray();

        $sale = [0, 10, 20, 30, 40];

        for($i = 1; $i <= 44; $i++) {
            $product_name = $faker->word;
            $product_city = $faker->city;
            $random_sale_index = rand(0, 4);

            $id = \DB::table('products')->insertGetId([
                'name' => $product_name." ".$product_city ,
                'price' => rand(1000, 10000),
                'description' => $faker->paragraph,
                'image' => 'product'.$i.'.jpg',
                'slug' => $product_name."_".$product_city ,
                'sale' => $sale[$random_sale_index]
            ]);

            \DB::table('category_product')->insert([
                'product_id' => $id,
                'category_id' => $category_ids[rand(0, count($category_ids) - 1)]
            ]);

            for($y = 0; $y < count($size_ids) - rand(0, 2); $y++){
                \DB::table('product_size')->insert([
                    'product_id' => $id,
                    'size_id' => $size_ids[$y]
                ]);
            }
        }
    }
}
