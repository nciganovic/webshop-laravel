<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    private array $categories = [['Man', 'man'], ['Woman', 'woman'], ['Kids', 'kids']];

    public function run()
    {
        foreach ($this->categories as $ctg) {
            \DB::table('categories')->insert([
                'name' => $ctg[0],
                'slug' => $ctg[1]
            ]);
        }
    }
}
