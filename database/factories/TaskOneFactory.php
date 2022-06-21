<?php

namespace Database\Factories;

use App\Models\UserOne;
use Illuminate\Database\Eloquent\Factories\Factory;

class TaskOneFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence(),
            'user_id' => function(){
                return UserOne::all()->random();
            }
        ];
    }
}
