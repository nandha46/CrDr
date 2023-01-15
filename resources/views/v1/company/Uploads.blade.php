@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
	@include('v1.Includes.TopMenu')

	<div class='page-content'>
		<div class='container-fluid'>

			@include('v1.Includes.PageTitleBox')
			<div class="mi-form-area-container">
		<form method='post' action=''  enctype='multipart/form-data' onsubmit="return uploadCompanyZip()">
			@csrf
				<div class="input-group mb-3">
				<label for='validationCustom04' class='form-label required'>Select Company</label>
                                        <select class='form-select spl' id='companyId'>
                                            <option selected disabled value=''>Choose...</option>
                                            <option value='Aadhaar card'>Aadhaar card</option>
                                            <option value='Driving License'>Driving License</option>
                                            <option value='PAN Card'>PAN Card</option>
                                            <option value='Bank Passbook Frontpage'>Bank Passbook Frontpage</option>
                                            <option value='Passport'>Passport</option>
                                        </select>
				</div>
				<label for='validationCustom05' class='form-label'>Company Backup Zip file</label>
				<div class='input-group mb-3'>
                    <input type='file' class='form-control input-only' id='file0' name='file0' />
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