@extends('layouts.sbadmin')
@section('content')
	@if (session('status'))
		<div class="alert alert-success">
			{{ session('status') }}
		</div>
	@endif
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">
				@if(Auth::user()->hasRole('admin')){
				<div align="right">

					<a href="{{ url('trainings/create') }}">Insert </a> ||
					<a href="{{ url('trainings') }}">Listing for Update/Delete</a>

				</div>
				@endif
				<div class="card info">

					<div class="card-header">Listing Trainings for Update/Delete

						<form method="get" action="{{ url('trainings') }}" class="form-inline">
							@csrf
							<input type="text" id="txtsearch" name="txtsearch" class="form-control">
							<button type="submmit" class="btn btn-primary">
								<i class="fa fa-search"></i>
							</button>
						</form>

					</div>

					<div class="card-body">
						@if (session('success'))
							<div class="alert alert-success">
								{{ session('success') }}
							</div>
						@endif

						@if (session('successdelete'))
							<div class="alert alert-warning">
								{{ session('successdelete') }}
							</div>
						@endif

						<table class="table table-striped">
						<thead>
						  <tr>
							<th>ID</th>
							<th>Training Name</th>
							<th>Desc</th>
							<th>Action</th>
						@if(Auth::user()->hasRole('admin')){
							<th></th>
						  	<th></th>
						@endif
						  </tr>
						</thead>
						<tbody>
						  @foreach($trainings as $training)
						  <tr>
							<td>{{$training['id']}}</td>
							<td>{{$training['trainingname']}}</td>
							<td>{{$training['desc']}}</td>
							  <td>
								  <a href="{{action('TrainingController@show',
								$training['id'])}}" class="btn btn-info btn-sm">
									  <i class="fa fa-file-text-o"></i>
								  </a>
							  </td>
							  @if(Auth::user()->hasRole('admin')){
							  <td><a href="{{action('TrainingController@edit', $training['id'])}}"
									 class="btn btn-warning btn-sm">
									  <i class="fa fa-edit"></i>
								  </a></td>
							  <td>
								  <form action="{{action('TrainingController@destroy', $training['id'])}}" method="post">
									  @csrf
									  <input name="_method" type="hidden" value="DELETE">
									  <button class="btn btn-danger btn-sm" type="submit">
										  <i class="fa fa-remove"></i>
									  </button>
								  </form>
								</td>
								@endif

						  </tr>
						  @endforeach
						  
						<tbody>
						</table>
						<div class="text-right">
						
							{{ $trainings->links() }}
						</div>
							
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection











