<?php

use Illuminate\Database\Seeder;
//use App\Training;

class TrainingTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        // $this->call(UsersTableSeeder::class);
		DB::table('trainings')->insert([
            'trainingname' => 'Laravel 101',
            'desc' => 'Web development using PHP framework Laravel',
            'trainer' => 'Khirulnizam Abd Rahman',
            'filename' => 'sig-fstm.png',
        ]);

        DB::table('trainings')->insert([
            'trainingname' => 'Android SQLite',
            'desc' => 'Android Studio apps development with local database using SQLite',
            'trainer' => 'Khirulnizam Abd Rahman',
            'filename' => 'android-sqlite.png',
        ]);

        DB::table('trainings')->insert([
            'trainingname' => 'Video Editing Filmora',
            'desc' => 'An easy video editing using Filmora editor ',
            'trainer' => 'Muizz Salleh',
            'filename' => 'muiz-filmora.png',
        ]);

    }
}
