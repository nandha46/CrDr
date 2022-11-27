<!-- Login/Signup -->

<div class='modal fade' id='myModal'>
	<div class='modal-dialog modal-lg'>
		<div class='modal-content'>
			<!-- Modal Header -->
			<div class='row justify-content-center'>
				<div class='col-md-12 col-lg-12'>
					<div class='wrap d-md-flex-spl'>
						<div class='text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last'>
							<div class='text welcome-text w-100'>
								<h2>Welcome to login</h2>
								<!-- <p>Don't have an account?</p>
								<a href='#' class='btn btn-white btn-outline-white'>Sign Up</a> -->
								<a href='index.html' class='logo'>
					<img src='{{asset('./images/access-panel/HFNewLogo.png')}}' width='25%' class=' mt-3'>
					<p class="text-center mt-3">E-learning Program</p>
					</a>
							</div>
						</div>
						<div class='login-wrap p-4 p-lg-5'>
							<div class='d-flex'>
								<!-- <div class='w-100'>
									<h3 class='mb-5'>Sign In</h3>
								</div> -->
								<div class='w-100 d-none'>
									<p class='social-media d-flex justify-content-end'>
										<a href='#' class='social-icon d-flex align-items-center justify-content-center'><span class='fa fa-facebook'></span></a>
										<a href='#' class='social-icon d-flex align-items-center justify-content-center'><span class='fa fa-twitter'></span></a>
									</p>
								</div>
							</div>
							@if(Session::has('Msg'))
								<p class='mb-4 lgn-error msg'>{{Session::get('Msg')}}</p>
							@endif
							<form class='signin-form' action='{{route('post-student-login')}}' method='post'>

								<input type='hidden' name='_token' value='{{csrf_token()}}'>
								<div class='form-group mb-4'>
									<input type='text' class='form-control' placeholder='Username' name='username' required>
								</div>
								<div class='form-group mb-4'>
									<input type='password' class='form-control' placeholder='Password' name='password' required>
								</div>
								<div class='form-group'>
									<button type='submit' class='form-control btn btn-primary submit px-3'>Sign In</button>
								</div>
								<div class='form-group d-md-flex'>
									<div class='w-50 text-left'>
										<label class='checkbox-wrap checkbox-primary mb-0'>Remember Me
										<input type='checkbox' checked>
										<span class='checkmark'></span>
										</label>
									</div>
									<div class='w-50 text-md-right'>
										<a href='#'>Forgot Password</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>