<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'user_id' => function(){
                $defValue = array(0,1);
                $random_keys=array_rand($defValue);
                if($defValue[$random_keys] == 0){
                    return NULL;
                }else{
                    return User::all()->random();
                }
            },
            'title' => $this->faker->sentence()
        ];
    }
}
