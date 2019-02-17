<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTrainersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('trainers', function 
                (Blueprint $table) {
            $table->increments('id');
            $table->string('tname');
            $table->string('texpertise');
            $table->string('tphoto')->nullable();
			$table->string('mime')->nullable();
			$table->string('original')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()//rollback
    {
        Schema::dropIfExists('trainers');
    }
}
