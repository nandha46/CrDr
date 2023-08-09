<?php

namespace Database\Seeders;

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

        DB::table('users')->insert([
            'username' => 'nandha',
            'password' => 'e10adc3949ba59abbe56e057f20f883e',
            'usertype' => 1,
        ]);

        $this->call([
            MenuSeeder::class
        ]);
    }
}
