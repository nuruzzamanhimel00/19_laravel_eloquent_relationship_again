<?php

namespace Database\Seeders;

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
        $this->call(ProjectOneSeeder::class);
        $this->call(UserOneSeeder::class);
        $this->call(TaskOneSeeder::class);

        $this->call(VideoSeeder::class);

        $this->call(ProjectSeeder::class);
        \App\Models\User::factory(10)->create();
        $this->call(TaskSeeder::class);

        $this->call(AddressSeeder::class);
        $this->call(PostSeeder::class);
        $this->call(TagSeeder::class);

        $this->call(CountrySeeder::class);
        $this->call(CitySeeder::class);
        $this->call(ShopSeeder::class);
    }
}
