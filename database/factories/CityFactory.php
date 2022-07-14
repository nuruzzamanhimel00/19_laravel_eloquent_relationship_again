<?php

namespace Database\Factories;

use App\Models\Country;
use Illuminate\Database\Eloquent\Factories\Factory;

class CityFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'countries_id' => function(){
                return Country::all()->random();
            },
            'name' => $this->faker->city()
        ];
    }
}
