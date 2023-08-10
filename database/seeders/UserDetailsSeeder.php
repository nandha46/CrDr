<?php

namespace Database\Seeders;

use App\Models\v1\UserDetails;
use Illuminate\Database\Seeder;

class UserDetailsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        UserDetails::create([
            'userid' => 1,
            'firstname' => 'Nandhakumar',
            'lastname' => 'Subramanian',
            'primary_mobile' => '9000090000',
            'secondary_mobile' => null,
            'email' => 'nandha@mail.com'
        ]);
    }
}
