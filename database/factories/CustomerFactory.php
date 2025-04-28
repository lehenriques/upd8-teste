<?php

namespace Database\Factories;

use App\Models\City;
use App\Models\State;
use Faker\Provider\pt_BR\Address;
use Faker\Provider\pt_BR\Person;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class CustomerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $city = City::inRandomOrder()->first();
        return [
            'name' => fake()->name(),
            'cpf' => fake()->cpf(),
            'gender' => fake()->randomElement(['M', 'F']),
            'birthdate' => fake()->date(),
            'address_street' => fake()->address(),
            'state_id' => State::whereId($city->state_id)->first()->id,
            'city_id' => $city->id
        ];
    }
}
