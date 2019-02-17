<?php
//file app/Trainer.php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Trainer extends Model
{
    //define fieldnames involved
    protected $fillable=['tname','texpertise',
            'tphoto', 'mime', 'original'];
}
