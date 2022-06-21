<?php

namespace Database\Seeders;

use App\Models\TaskOne;
use Illuminate\Database\Seeder;

class TaskOneSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        TaskOne::factory()->count(20)->create();
    }
}
