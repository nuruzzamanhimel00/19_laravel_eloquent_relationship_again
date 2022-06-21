<?php

namespace Database\Seeders;

use App\Models\ProjectOne;
use Illuminate\Database\Seeder;

class ProjectOneSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ProjectOne::factory()->count(10)->create();
    }
}
