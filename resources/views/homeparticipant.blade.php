@extends('layouts.sbadmin')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Participant Panel</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    <p>Hello participant {{ Auth::user()->name }} </p>
                        <br>
					<a href="{{ url('trainings') }}"> Training list</a>

					<br>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
