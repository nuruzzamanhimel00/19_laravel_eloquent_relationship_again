<?php

namespace Database\Seeders;

use App\Models\UserOne;
use Illuminate\Database\Seeder;

class UserOneSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        UserOne::factory()->count(10)->create();
    }
}
