@extends('layouts.fancy')
@section('content')
	@if (session('status'))
		<div class="alert alert-success">
			{{ session('status') }}
		</div>
	@endif
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-9">

				<div class="card info">

					<div class="card-header">Listing Trainings to Register

						<form method="get" action="{{ url('registers') }}" class="form-inline">
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
							<th></th>
						  </tr>
						</thead>
						<tbody>
						  @foreach($trainings as $training)
						  <tr>
							<td>{{$training['id']}}</td>
							<td>{{$training['trainingname']}}</td>
							<td>{{$training['desc']}}</td>
							<td>
								<a href="{{action('RegisterController@show', 
								$training['id'])}}" class="btn btn-info">
									  <i class="fa fa-file-text-o"></i>
								  </a>
							</td>
							<td>
								  
							</td>
						  </tr>
						  @endforeach
						<tbody>
						</table>
							
					</div>
					<div align="right">
						{{ $trainings->links() }}
					</div>
				</div>
			</div>

			<!-- menu/login -->

			<div class="col-md-3">
				<div class="card">
					<div class="card-header">Important Links</div>

					<div class="card-body">

						<a href="http://www.kuis.edu.my" target="_blank"> <i class="fa fa-globe"></i>
								Website KUIS official
						</a><br>
							<a href="http://fstm.kuis.edu.my" target="_blank"> <i class="fa fa-globe"></i>
							Website FSTM KUIS official
						</a><br>
						<a href="http://fstm.kuis.edu.my/blog" target="_blank"> <i class="fa fa-wordpress"></i>
							Blog FSTM KUIS
						</a><br>
						<a href="http://facebook.com/kuis.fstm" target="_blank"> <i class="fa fa-facebook"></i>
							Facebook FSTM KUIS
						</a><br>
						<a href="http://instagram.com/kuis.fstm" target="_blank"> <i class="fa fa-instagram"></i>
							Instagram FSTM KUIS
						</a>
						<br>

					</div>
				</div>
				<br>
				<br>
				<!-- login -->
				@guest
				<div class="card">
					<div class="card-header">{{ __('Login') }}</div>

					<div class="card-body">



							<form method="POST" action="{{ route('login') }}">
								@csrf

								<div class="form-group row">


									<div class="col-md-12">
										<input id="email" type="email" placeholder="Email"
											   class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>

										@if ($errors->has('email'))
											<span class="invalid-feedback">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
										@endif
									</div>
								</div>

								<div class="form-group row">


									<div class="col-md-12">
										<input id="password" type="password" placeholder="Password"
											   class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

										@if ($errors->has('password'))
											<span class="invalid-feedback">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
										@endif
									</div>
								</div>

								<div class="form-group row">
									<div class="col-md-12">
										<div class="checkbox">
											<label>
												<input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> {{ __('Remember Me') }}
											</label>
										</div>
									</div>
								</div>

								<div class="form-group row mb-0">
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary">
											{{ __('Login') }}
										</button>

										<a class="btn btn-link" href="{{ route('password.request') }}">
											{{ __('Forgot Your Password?') }}
										</a>
									</div>
								</div>
							</form>

					</div>
				</div>
				@endguest
			</div>

			<!-- end menu/login -->



		</div>
	</div>
@endsection











