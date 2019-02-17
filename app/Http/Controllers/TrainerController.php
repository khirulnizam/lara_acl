<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Trainer; //model Trainer.php
use DB;

class TrainerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view("trainers.create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //insert new Trainer
        //tname, texpertise, 
        $trainer=$this->validate(
            request(),//capture content dari form
            [
                'tname'=>'required',
                'texpertise'=>'required',
                'tphoto'=>'required',
            ]
        );

        //handle file image
        if($request->hasFile('tphoto')){
            $tphoto=$request->tphoto->getClientOriginalName();
            $request->tphoto->storeAs('public/tphoto',
                                $tphoto);
            
        }//end hasFile

        //data to save
        $data = array(
            'tname'=>$request->input('tname'),
            'texpertise' =>$request->input('texpertise'),
            'tphoto'=>$tphoto, );

        DB::table('trainers') -> insert($data);
        //run SQL command INSERT INTO
        //Trainer::create($trainer);
        //return
        return back()->with('successfile',
            $tphoto);

    }//end store()

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
