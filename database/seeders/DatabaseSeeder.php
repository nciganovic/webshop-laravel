<?php

namespace Database\Seeders;

use App\Models\Size;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            SizeSeeder::class,
            RoleSeeder::class,
            CategorySeeder::class,
            UserSeeder::class,
            ProductSeeder::class
        ]);
    }
}
