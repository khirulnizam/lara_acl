<?php

use Illuminate\Database\Seeder;
use App\Role;
use App\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $role_admin = Role::where('name', 'admin')->first();
        $role_participant  = Role::where('name', 'participant')->first();
        //add admin user

        $admin = new User();
        $admin->name = 'Admin Name';
        $admin->email = 'admin@example.com';
        $admin->password = bcrypt('secret');
        $admin->save();
        $admin->roles()->attach($role_admin);

        $admin = new User();
        $admin->name = 'Khirulnizam Abd Rahman';
        $admin->email = 'kerul@gmail.com';
        $admin->password = bcrypt('abc123');
        $admin->save();
        $admin->roles()->attach($role_admin);

        //add participant users
        $participant = new User();
        $participant->name = 'Participant Name';
        $participant->email = 'participant@example.com';
        $participant->password = bcrypt('secret');
        $participant->save();
        $participant->roles()->attach($role_participant);

        $participant = new User();
        $participant->name = 'Shaqirin';
        $participant->email = 'shaq@gmail.com';
        $participant->password = bcrypt('shaq123');
        $participant->save();
        $participant->roles()->attach($role_participant);

        $participant = new User();
        $participant->name = 'Azroy';
        $participant->email = 'azroy@gmail.com';
        $participant->password = bcrypt('azroy123');
        $participant->save();
        $participant->roles()->attach($role_participant);

    }
}
