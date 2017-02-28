<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Model::unguard();

        $this->call('UserTableSeeder');

        Model::reguard();
    }
}

class UserTableSeeder extends Seeder {

    public function run()
    {
        //DB::table('users')->delete();
        DB::table('users')->insert([
            'username' => 'polr',
            'email' => 'polr@admin.tld',
            'password' => bcrypt('polr'),
            'role' => 'admin',
            'active' => '1',
            'api_key' => '7789835af06daaf863bcdce26e75fe'
        ]);
    }

}