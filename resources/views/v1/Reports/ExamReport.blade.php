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
								<h3 class="header-title-text">Number of Exams - By Standard &amp; Subject</h3>
								<table id="examreport1" class='table table-striped table-bordered dt-responsive nowrap report1' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
											<th>Standard</th>
											<th>Subjects</th>
											<th>Exam name</th>
										</tr>
									</thead>
									<tbody>
										<?php
	
										$i = 1;
	
										if(count($examsPerStandard) > 0){
	
											foreach($examsPerStandard as $exam){
	
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $exam->clssName ?></td>
												<td><?= $exam->subjName ?></td>
												<td><?= $exam->count ?></td>
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
								<h3 class="header-title-text">Exams - By Attendance</h3>
								<table id="examreport2" class='table-datatable table table-striped table-bordered dt-responsive nowrap  report2' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
											<th>Exam name</th>
											<th>Standard</th>
											<th>Subject</th>
											<th>Total Students</th>
											<th>Attended Students</th>
										</tr>
									</thead>
									<tbody>
										<?php
	
										$i = 1;
	
										if(count($examsByAttendance) > 0){
											foreach($examsByAttendance as $exam){
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $exam->name ?></td>
												<td><?= $exam->clssName ?></td>
												<td><?= $exam->subjName ?></td>
												<td><?= $exam->total_students ?></td>
												<td><?= $exam->attended_students ?></td>
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
					<div class='col-12'>
						<div class='mi-card'>
							<div class='mi-card-body card-pads'>
								<h3 class="header-title-text">Exam wise Performance</h3>
								<div class='mi-grid-4-layout'>
									<div class=''>
										<label for='validationCustom05' class='form-label'>Start Date</label>
										<input type='text' class='form-control spl input-only date-input' id='start-date' max="<?= date('Y-m-d', strtotime('-3 year')); ?>" />
									</div>
									<div class=''>
										<label for='validationCustom05' class='form-label'>End Date</label>
										<input type='text' onchange="generateExamReport()" class='form-control spl input-only date-input' id='end-date' max="<?= date('Y-m-d', strtotime('-3 year')); ?>" />
									</div>
									<div class=''>
										<label for='validationCustom05' class='form-label'>Standard</label>
										<select class='form-select spl' id='standard' onchange="generateExamReport()">
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
										<select class='form-select spl' id='section' onchange="generateExamReport()">
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
										<select class='form-select spl' id='academicYear' onchange="generateExamReport()">
											<option selected disabled value=''>Choose...</option>
											@for ($year = 2015; $year < date('Y')+1; $year++)
											<option value = '{{$year.'-'.$year+1}}'>{{$year.'-'.$year+1}}</option>
											@endfor        
										</select>
									</div>
								</div>
								<table id="examreport3" data-page-length='25' class='table-datatable table table-striped table-bordered dt-responsive nowrap  report3' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
											<th>Exam Name</th>
											<th>Student Name</th>
											<th>Student UID</th>
											<th>Standard</th>
											<th>Section</th>
											<th>Academic Year</th>
											<th>Correct Answers</th>
											<th>Marks</th>
											<th>Attempt</th>
										</tr>
									</thead>
									<tbody>
										<?php
	
										$i = 1;
	
										if(count($examPerformance) > 0){
											foreach($examPerformance as $performance){
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $performance->name ?></td>
												<td>{{ $performance->stuFirstName }} {{$performance->stuLastName}}</td>
												<td><?= $performance->stuUserId ?></td>
												<td><?= $performance->clssName ?></td>
												<td><?= $performance->secnSecName ?></td>
												<td><?= $performance->stuclAcademicYear ?></td>
												<td><?= $performance->max_correct_ans ?></td>
												<td>{{ $performance->maxmarks }} &frasl; {{$performance->total_marks}}</td>
												<td><?= $performance->attemptNo ?></td>
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
				<div class='row mi-table-space'>
					<div class='col-12'>
						<div class='mi-card'>
							<div class='mi-card-body card-pads'>
								<h3 class="header-title-text">Students - All Exam Performance</h3>
								<div class='mi-grid-4-layout'>
									<div class=''>
										<label for='validationCustom05' class='form-label'>Start Date</label>
										<input type='text' class='form-control spl input-only date-input' id='start-date2' max="<?= date('Y-m-d', strtotime('-3 year')); ?>" />
									</div>
									<div class=''>
										<label for='validationCustom05' class='form-label'>End Date</label>
										<input type='text' onchange="generatePerformanceReport()" class='form-control spl input-only date-input' id='end-date2' max="<?= date('Y-m-d', strtotime('-3 year')); ?>" />
									</div>
									<div class=''>
										<label for='validationCustom05' class='form-label'>Standard</label>
										<select class='form-select spl' id='standard2' onchange="generatePerformanceReport()">
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
										<select class='form-select spl' id='section2' onchange="generatePerformanceReport()">
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
										<select class='form-select spl' id='academicYear2' onchange="generatePerformanceReport()">
											<option selected disabled value=''>Choose...</option>
											@for ($year = 2015; $year < date('Y')+1; $year++)
											<option value = '{{$year.'-'.$year+1}}'>{{$year.'-'.$year+1}}</option>
											@endfor        
										</select>
									</div>
								</div>
								<table id="examreport4" class='table-datatable table table-striped table-bordered dt-responsive nowrap report4' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
											<th>Exam Name</th>
											<th>Student Name</th>
											<th>Class</th>
											<th>Section</th>
											<th>Marks</th>
											<th>Attempt</th>
										</tr>
									</thead>
									<tbody>
										<?php
	
										$i = 1;
	
										if(count($allPerformance) > 0){
											foreach($allPerformance as $sepPerf){
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $sepPerf->name ?></td>
												<td><?= $sepPerf->stuFirstName.' '.$sepPerf->stuLastName ?></td>
												<td><?= $sepPerf->clssName ?></td>
												<td><?= $sepPerf->secnSecName ?></td>
												<td><?= $sepPerf->maxmarks ?></td>
												<td><?= $sepPerf->attemptNo ?></td>
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
