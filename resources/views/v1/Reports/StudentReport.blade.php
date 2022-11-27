@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
	@include('v1.Includes.TopMenu')

	<div class='page-content'>
		<div class='container-fluid'>

			@include('v1.Includes.PageTitleBox')

			<!-- First Review Start Here -->

			<div class='row justify-content-center'>
				{{-- Table 1 Start --}}
				<div class='row mi-table-space'>
					<div class='col-6'>
						<div class='mi-card'>
							<div class='mi-card-body card-pads'>
								<h3 class="header-title-text">Number of Students - By Gender</h3>
								<table class='table table-striped table-bordered dt-responsive nowrap report1' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>Sl No</th>
											<th>Gender</th>
											<th>Strength</th>
										</tr>
									</thead>
									<tbody>
										<?php
	
										$i = 1;
	
										if(count($genderWise) > 0){
	
											foreach($genderWise as $sepStudents){
	
												$gendername= '';
												if($sepStudents->stuGender == 1){
													$gendername = 'Male';
												} elseif ($sepStudents->stuGender == 2){
													$gendername = 'Female';
												} else {
													$gendername = 'Other';
												}
	
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $gendername ?></td>
												<td><?= $sepStudents->strength ?></td>
											</tr>
										<?php
												$i++;
											}
										}
										?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class='col-6'>
						<div class='mi-card'>
							<div class='mi-card-body card-pads'>
								<h3 class="header-title-text">Number of Students - By Standard</h3>
								<table class='table-datatable table table-striped table-bordered dt-responsive nowrap  report2' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>Sl No</th>
											<th>Standard</th>
											<th>Strength</th>
										</tr>
									</thead>
									<tbody>
										<?php
	
										$i = 1;
	
										if(count($standardWise) > 0){
											foreach($standardWise as $sepStudents){
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $sepStudents->clssName ?></td>
												<td><?= $sepStudents->strength ?></td>
											</tr>
										<?php
												$i++;
											}
										}
										?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				{{-- Table 1 End --}}
				{{-- Table 2 Start --}}
				<div class='row mi-table-space'>
					<div class='col-6'>
						<div class='mi-card'>
							<div class='mi-card-body card-pads'>
								<h3 class="header-title-text">Number of Students - By Organization</h3>
								<table class='table-datatable table table-striped table-bordered dt-responsive nowrap  report3' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>Sl No</th>
											<th>Organization</th>
											<th>Strength</th>
										</tr>
									</thead>
									<tbody>
										<?php
	
										$i = 1;
	
										if(count($orgWise) > 0){
											foreach($orgWise as $sepStudents){
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $sepStudents->olName ?></td>
												<td><?= $sepStudents->strength ?></td>
											</tr>
										<?php
												$i++;
											}
										}
										?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class='col-6'>
						<div class='mi-card'>
							<div class='mi-card-body card-pads'>
								<h3 class="header-title-text">Number of Students - By Academic Year</h3>
								<table class='table-datatable table table-striped table-bordered dt-responsive nowrap report4' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>Sl No</th>
											<th>Academic Year</th>
											<th>Strength</th>
										</tr>
									</thead>
									<tbody>
										<?php
	
										$i = 1;
	
										if(count($yearWise) > 0){
											foreach($yearWise as $sepStudents){
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $sepStudents->stuclAcademicYear ?></td>
												<td><?= $sepStudents->strength ?></td>
											</tr>
										<?php
												$i++;
											}
										}
										?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				{{-- Table 2 End --}}
				<div class='row mi-table-space'>
					<div class='col-12'>
						<div class='mi-card'>
							<div class='mi-card-body card-pads'>
								<h3 class="header-title-text">All Students - Filter By Criteria</h3>
								<div class='mi-grid-4-layout'>
									<div class=''>
										<label for='validationCustom05' class='form-label'>Start Date</label>
										<input type='text' class='form-control spl input-only date-input' id='start-date' max="<?= date('Y-m-d', strtotime('-3 year')); ?>" />
									</div>
									<div class=''>
										<label for='validationCustom05' class='form-label'>End Date</label>
										<input type='text' onchange="generateStudentReport()" class='form-control spl input-only date-input' id='end-date' max="<?= date('Y-m-d', strtotime('-3 year')); ?>" />
									</div>
									<div class=''>
										<label for='validationCustom05' class='form-label'>Standard</label>
										<select class='form-select spl' id='standard' onchange="generateStudentReport()">
											<option selected disabled value=''>Choose...</option>
											<?php
					
												foreach($standard as $key => $sepStandard){
											?>
													<option value = '<?= $sepStandard->clssId ?>'><?= $sepStandard->clssName?></option>
											<?php
												}
											?>
										</select>
									</div>
					
									<div class=''>
										<label for='validationCustom05' class='form-label'>Section</label>
										<select class='form-select spl' id='section' onchange="generateStudentReport()">
											<option selected disabled value=''>Choose...</option>
											<?php
					
												foreach($section as $key => $sepSection){
											?>
													<option value = '<?= $sepSection->secnId ?>'><?= $sepSection->secnSecName?></option>
											<?php
												}
											?>
										</select>
									</div>
									<div class=''>
										<label for='validationCustom05' class='form-label'>Academic Year</label>
										<select class='form-select spl' id='academicYear' onchange="generateStudentReport()">
											<option selected disabled value=''>Choose...</option>
											@for ($year = 2015; $year < date('Y')+1; $year++)
											<option value = '{{$year.'-'.$year+1}}'>{{$year.'-'.$year+1}}</option>
											@endfor        
										</select>
									</div>
								</div>
								<table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap report5' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
											<th>Name</th>
											<th>Standard</th>
											<th>Section</th>
											<th>Gender</th>
											<th>Academic Year</th>
											<th>Test Performance</th>
											<th>Organization</th>
											<th>Mobile</th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody>
	
										<?php
	
										$i = 1;
	
										if(count($students) > 0){
	
											foreach($students as $sepStudents){
	
												$gendername= '';
												if($sepStudents->stuGender == 1){
													$gendername = 'Male';
												} elseif ($sepStudents->stuGender == 2){
													$gendername = 'Female';
												} else {
													$gendername = 'Other';
												}
	
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $sepStudents->stuFirstName.' '.$sepStudents->stuLastName ?></td>
												<td><?= $sepStudents->clssName ?></td>
												<td><?= $sepStudents->secnSecName ?></td>
												<td><?= $gendername?></td>
												<td><?= $sepStudents->stuclAcademicYear?></td>
												<td data-stuid="{{$sepStudents->stuUserId}}" onclick="getPerformanceReport2(this)"><i data-feather="award" color="#00bbf9"></i></td>
												<td><?= $sepStudents->olName?></td>
												<td><?= $sepStudents->condOfficialNumber?></td>
												<td>
													<?= $sepStudents->stuIsStatus?'<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?> 
												</td>
											</tr>
										<?php
												$i++;
											}
										}
										?>
	
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- First Review End Here -->

		</div>
	</div>
</div>

@include('v1.Includes.Footer')
