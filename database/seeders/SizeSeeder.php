<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class SizeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */

    private array $sizes = ['XS', 'S', 'M', 'L', 'XL'];

    public function run()
    {
        foreach ($this->sizes as $size) {
            \DB::table('sizes')->insert([
                'name' => $size
            ]);
        }
    }
}
