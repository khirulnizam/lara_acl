<?php

namespace App\Http\Controllers;
//namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Training;
use Illuminate\Support\Facades\Auth;
//use App\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if (Auth::user()->hasRole('admin')){
            $trainings = Training::all()->toArray();
            return view('home', compact('trainings'));
        }
        else if(Auth::user()->hasRole('participant')){
            return view('homeparticipant');
        }
    }
	
	public function getTrainings() {
		//$trainings= Training::all()->toArray();
        //return view('home', compact('trainings'));

    }
}
