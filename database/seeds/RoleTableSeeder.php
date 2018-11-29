<?php

use Illuminate\Database\Seeder;
use App\Role;
use App\User;

class RoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $role_employee = new Role();
        $role_employee->name = 'admin';
        $role_employee->description = 'Admin User';
        $role_employee->save();

        $role_manager = new Role();
        $role_manager->name = 'participant';
        $role_manager->description = 'Participant User';
        $role_manager->save();
    }
}
