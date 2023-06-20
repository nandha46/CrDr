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
		<form method='post' action=''  enctype='multipart/form-data' onsubmit="return uploadCompanyZip()">
			@csrf
				<label for='validationCustom05' class='form-label'>Company Backup Zip file</label>
				<div class='input-group mb-3'>
                    <input type='file' class='form-control input-only' id='file0' name='file0' />
                    {{-- <input type='file' accept=".Zip" class='form-control input-only' id='file0' name='file0' /> --}}
                </div>
			<div class='mi-btn-holder'>
				<button class='button-49' type="submit">Upload File</button>
			</div>
		</form>
			</div>
		</div>
	</div>
</div>

@include('v1.Includes.Footer')