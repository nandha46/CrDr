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
								<h3 class="header-title-text">Number of Staff - By Gender</h3>
								<table class='table table-striped table-bordered dt-responsive nowrap report1' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
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
												if($sepStudents->stffGender == 1){
													$gendername = 'Male';
												} elseif ($sepStudents->stffGender == 2){
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
								<h3 class="header-title-text">Number of Staffs - By Designation</h3>
								<table class='table-datatable table table-striped table-bordered dt-responsive nowrap report2' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
											<th>Designation</th>
											<th>Strength</th>
										</tr>
									</thead>
									<tbody>
										<?php
	
										$i = 1;
	
										if(count($staffsByRole) > 0){
											foreach($staffsByRole as $sepStudents){
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $sepStudents->designation ?></td>
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
								<h3 class="header-title-text">Number of Staffs - By Organization</h3>
								<table class='table-datatable table table-striped table-bordered dt-responsive nowrap report3' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
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
								<h3 class="header-title-text">Questions Added - By Staff</h3>
								<table class='table-datatable table table-striped table-bordered dt-responsive nowrap report4' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
											<th>Staff</th>
											<th>No of Questions</th>
										</tr>
									</thead>
									<tbody>
										<?php
	
										$i = 1;
	
										if(count($questionsCount) > 0){
											foreach($questionsCount as $sepQuestionsCount){
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $sepQuestionsCount->name ?></td>
												<td><?= $sepQuestionsCount->strength ?></td>
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
								<h3 class="header-title-text">Teacher's Performance - Exam-wise</h3>
								
								<table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap report5' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
											<th>Name</th>
											<th>Staff Id</th>
											<th>Standard</th>
											<th>Subjects</th>
											<th>Total Students</th>
											<th>Performance</th>
										</tr>
									</thead>
									<tbody>
	
										<?php
	
										$i = 1;
	
										if(count($staffs) > 0){
	
											foreach($staffs as $staff){
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $staff->stffFirstName.' '.$staff->stffLastName ?></td>
												<td>{{$staff->stffId}}</td>
												{{-- <td>{{$staff->ogcstffClsMasterId}}</td> --}}
												<td>{{$staff->ogcstffClsMasterId}}</td>
												<td>{{$staff->ogcstffSubjectId}}</td>
												<td>45</td>
												<td data-stuid="{{$staff->stffId}}" onclick="getStaffPerformanceReport2(this)"><i data-feather="award" color="#00bbf9"></i></td>
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
