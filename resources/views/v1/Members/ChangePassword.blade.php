@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
	@include('v1.Includes.TopMenu')

	<div class='page-content'>
		<div class='container-fluid'>

			@include('v1.Includes.PageTitleBox')
			<div class="mi-form-area-container">
				@if(Session::has('message'))
				<p class='mb-4 lgn-success msg message'>{{Session::get('message')}}</p>
				@endif
				@if(Session::has('error'))
				<p class='mb-4 lgn-success msg error-message'>{{Session::get('error')}}</p>
				@endif
		<form method='post' enctype='multipart/form-data' onsubmit="return validateNewPassword()">
			@csrf
				<div class='input-group mb-3'>
					<label for='validationCustom05' class='form-label'>Enter Current password</label>
					<input type='password' autocomplete="off" class='form-control spl input-only' id='oldPassword' name='oldPassword'/>
                </div>
				<div class=''>
					<label for='validationCustom05' class='form-label'>Enter New Password</label>
					<input type='password' autocomplete="off" class='form-control spl input-only' id='newPassword1' name='newPassword1'/>
				</div>
				<div class=''>
					<label for='validationCustom05' class='form-label'>Confirm New Password</label>
					<input type='password' autocomplete="off" class='form-control spl input-only' id='newPassword2' name='newPassword2'/>
				</div>
				<div class='mi-btn-holder'>
					<button class='mi-btn mi-btn-primary button-add-edit' type='submit'>Change Password</button>
				</div>
		</form>
			</div>
		</div>
	</div>
</div>

@include('v1.Includes.Footer')