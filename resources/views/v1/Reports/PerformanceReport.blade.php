@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
	@include('v1.Includes.TopMenu')

	<div class='page-content'>
		<div class='container-fluid'>

			@include('v1.Includes.PageTitleBox')

			<!-- First Review Start Here -->

			
			<div class='row justify-content-center'>
				@if($errStatus)
				{{-- Error Toast --}}
				<div class="toast align-items-center" id="no-student-error" role="alert" aria-live="assertive" aria-atomic="true" style="background: red; font-size: 1rem; color: white;">
					<div class="d-flex">
					  <div class="toast-body">
					  No Student found with the given ID.
					 </div>
					  <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
					</div>
				  </div>
				{{-- Error Toast --}}
				  @endif
				{{-- Table 4 Start --}}
				<div class='row mi-table-space'>
					<div class='col-12'>
						<div class='mi-card'>
							<div class='mi-card-body card-pads'>
								<h3 class="header-title-text">Performance Report - Student</h3>
								<div class='mi-grid-4-layout'>
									<div class=''>
										<label for='validationCustom05' class='form-label'>Enter Student Id</label>
										<input type='text' class='form-control spl input-only numbers-only' id='student-id' />
									</div>
									<div class='mi-btn-holder'>
										<button class='btn btn-info' type='submit' onclick="getPerformanceReport()">Submit</button>
									</div>
								</div>
							@isset($performance)
							<div class='mi-card'>
								<div class='mi-card-body card-pads'>
									<h3 class="header-title-text">Student Details</h3>
									<div class='mi-grid-4-layout'>
										<div>
											<p>{{$student->stuFirstName}} {{$student->stuLastName}}</p>
										</div>
										<div>
											<p>{{$student->stuclAcademicYear}}</p>
										</div>
										<div>
											<p>{{$student->clssName}}-{{$student->secnSecName}}</p>
										</div>
										<div>
											<p>No of Exams: {{$exams}}</p>
										</div>	
									</div>
								</div>
								
							</div>
								<table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>Sl No</th>
											<th>Exam Name</th>
											<th>Total Questions</th>
											<th>Correct Answers</th>
											<th>Marks</th>
											<th>Date</th>
											<th>Attempts</th>
										</tr>
									</thead>
									<tbody>
	
										<?php
	
										$i = 1;
	
										if(count($performance) > 0){
	
											foreach($performance as $sepStudents){
	
										?>
											<tr id = 'row-<?= $i ?>'>
												<td><?= $i ?></td>
												<td><?= $sepStudents->name ?></td>
												<td><?= $sepStudents->no_of_questions ?></td>
												<td><?= $sepStudents->max_correct_ans ?></td>
												<td> <sup>{{$sepStudents->maxmarks}}</sup>&frasl;<sub>{{$sepStudents->total_marks}}</sub>  </td>
												<td><?= $sepStudents->attempt_date ?></td>
												<td><?= $sepStudents->attemptNo?></td>
											</tr>
										<?php
												$i++;
											}
										}
										?>
	
									</tbody>
								</table>
								@endisset
							</div>
						</div>
					</div>
				</div>
				{{--  Table 4 End--}}
			</div>

			<!-- First Review End Here -->

		</div>
	</div>
</div>

@include('v1.Includes.Footer')
