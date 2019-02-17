@extends('layouts.sbadmin')
@section('content')
<h3>Insert new Trainer</h3>
<form method="post" 
    action="{{ url('trainers') }}"
    enctype="multipart/form-data">
    @csrf
    Trainer Name
    <input type="text" name="tname"
    class="form-control">
    <br>
    Expertise
    <input type="text" 
    name="texpertise"
    class="form-control">
    <br>
    Photo
    <input type="file" name="tphoto"
    class="form-control">
    <br>
    <input type="submit" 
    value="Create Trainer"
    class="btn btn-info">
</form>
<!-- display notification message -->
<div class="alert alert-success">
    
    <img 
    src="{{url('storage/tphoto//')}}/{{session('successfile')}}">

</div>
@endsection