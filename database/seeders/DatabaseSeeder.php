<?php

namespace Database\Seeders;

use App\Models\v1\Usergroup;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        $user = Usergroup::create([
            'username' => 'nandha',
            'password' => 'e10adc3949ba59abbe56e057f20f883e',
            'usertype' => 1,
        ]);

        $user->userDetails()->create([
            'userid' => 1,
            'firstname' => 'Nandhakumar',
            'lastname' => 'Subramanian',
            'primary_mobile' => '9000090000',
            'secondary_mobile' => null,
            'email' => 'nandha@mail.com'
        ]);

        $this->call([
            MenuSeeder::class,
        ]);
    }
}
