@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
	@include('v1.Includes.TopMenu')

	<div class='page-content'>
		<div class='container-fluid'>

			@include('v1.Includes.PageTitleBox')

			<!-- First Review Start Here -->

			<div class='row justify-content-center'>
				<div class='col-md-6 col-lg-3'>
					<div class='card report-card'>
						<div class='card-body'>
							<div class='row d-flex justify-content-center'>
								<div class='col'>
									<p class='text-dark mb-1 fw-semibold'>Total Students</p>
									<h3 class='m-1'>{{$students}}</h3>

								</div>
								<div class='col-auto align-self-center'>
									<div class='report-main-icon bg-light-alt'>
										<i data-feather='users' class='align-self-center text-muted icon-sm'></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class='col-md-6 col-lg-3'>
					<div class='card report-card'>
						<div class='card-body'>
							<div class='row d-flex justify-content-center'>
								<div class='col'>
									<p class='text-dark mb-1 fw-semibold'>Total Teachers</p>
									<h3 class='m-1'>{{$teachers}}</h3>
								</div>
								<div class='col-auto align-self-center'>
									<div class='report-main-icon bg-light-alt'>
										<i data-feather='user' class='align-self-center text-muted icon-sm'></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class='col-md-6 col-lg-3'>
					<div class='card report-card'>
						<div class='card-body'>
							<div class='row d-flex justify-content-center'>
								<div class='col'>
									<p class='text-dark mb-1 fw-semibold'>Total Staffs</p>
									<h3 class='m-1'>{{$staffs}}</h3>
								</div>
								<div class='col-auto align-self-center'>
									<div class='report-main-icon bg-light-alt'>
										<i data-feather='list' class='align-self-center text-muted icon-sm'></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class='col-md-6 col-lg-3'>
					<div class='card report-card'>
						<div class='card-body'>
							<div class='row d-flex justify-content-center'>
								<div class='col'>
									<p class='text-dark mb-1 fw-semibold'>Pass/Fail (Exam Date)</p>
									<h3 class='m-1'>80/20 (2022-01-02)</h3>
								</div>
								<div class='col-auto align-self-center'>
									<div class='report-main-icon bg-light-alt'>
										<i data-feather='award' class='align-self-center text-muted icon-sm'></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- First Review End Here -->

			<!-- Second Review Start Here -->

			<div class='row'>
				<div class='col-lg-12'>
					<div class='row'>
						<div class='col-md-6 col-lg-3'>
							<div class='card report-card'>
								<div class='card-body'>
									<div class='row d-flex justify-content-center'>
										<div class='col'>
											<p class='text-dark mb-0 fw-semibold'>Events/Press Releases</p>
											<h3 class='m-0'>{{$events.'/'.$press_releases}}</h3>
										</div>
										<div class='col-auto align-self-center'>
											<div class='report-main-icon bg-light-alt'>
												<i data-feather='book' class='align-self-center text-muted icon-sm'></i>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class='col-md-6 col-lg-3'>
							<div class='card report-card'>
								<div class='card-body'>
									<div class='row d-flex justify-content-center'>
										<div class='col'>
											<p class='text-dark mb-0 fw-semibold'>Uploaded Documents</p>
											<h3 class='m-0'>{{$docs}}</h3>
										</div>
										<div class='col-auto align-self-center'>
											<div class='report-main-icon bg-light-alt'>
												<i data-feather='file' class='align-self-center text-muted icon-sm'></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class='col-md-6 col-lg-3'>
							<div class='card report-card'>
								<div class='card-body'>
									<div class='row d-flex justify-content-center'>
										<div class='col'>
											<p class='text-dark mb-0 fw-semibold'>Uploaded Videos</p>
											<h3 class='m-0'>{{$videos}}</h3>
										</div>
										<div class='col-auto align-self-center'>
											<div class='report-main-icon bg-light-alt'>
												<i data-feather='video' class='align-self-center text-muted icon-sm'></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class='col-md-6 col-lg-3'>
							<div class='card report-card'>
								<div class='card-body'>
									<div class='row d-flex justify-content-center'>
										<div class='col'>
											<p class='text-dark mb-0 fw-semibold'>Tests - Attended/Total</p>
											<h3 class='m-0'>45/100</h3>
										</div>
										<div class='col-auto align-self-center'>
											<div class='report-main-icon bg-light-alt'>
												<i data-feather='edit-2' class='align-self-center text-muted icon-sm'></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- Second Review Ends Here -->

			<!-- Third Review Starts Here -->

			<div class="row">
				<div class="col-lg-12 col-xl-6 d-none">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">Report 1</h4>

						</div>
						<!--end card-header-->
						<div class="card-body">
							<div class="chartjs-size-monitor">
								<div class="chartjs-size-monitor-expand">
									<div class=""></div>
								</div>
								<div class="chartjs-size-monitor-shrink">
									<div class=""></div>
								</div>
							</div>
							<canvas id="pie" class="drop-shadow chartjs-render-monitor" height="600" width="1080" style="display: block; height: 300px; width: 540px;"></canvas>
						</div>

					</div>

				</div>

				<div class="col-lg-12 col-xl-6 d-none">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">Report 2</h4>

						</div>
						<!--end card-header-->
						<div class="card-body">
							<div id="donut-chart">
								<div id="placeholder" class="flot-chart drop-shadow" style="height: 320px; padding: 0px; position: relative;">
									<canvas class="flot-base" width="685" height="640" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 342.992px; height: 320px;"></canvas>
									<canvas class="flot-overlay" width="685" height="640" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 342.992px; height: 320px;"></canvas>
									<span class="pieLabel" id="pieLabel0" style="position: absolute; top: 8px; left: 202.59px;">
										<div style="font-size:x-small;text-align:center;padding:2px;color:rgb(237,194,64);">Series1<br>11%</div>
									</span>
									<span class="pieLabel" id="pieLabel1" style="position: absolute; top: 36px; left: 249.59px;">
										<div style="font-size:x-small;text-align:center;padding:2px;color:rgb(175,216,248);">Series2<br>1%</div>
									</span>
									<span class="pieLabel" id="pieLabel2" style="position: absolute; top: 108px; left: 292.59px;">
										<div style="font-size:x-small;text-align:center;padding:2px;color:rgb(203,75,75);">Series3<br>18%</div>
									</span>
									<span class="pieLabel" id="pieLabel3" style="position: absolute; top: 244px; left: 255.59px;">
										<div style="font-size:x-small;text-align:center;padding:2px;color:rgb(77,167,77);">Series4<br>14%</div>
									</span>
									<span class="pieLabel" id="pieLabel4" style="position: absolute; top: 286px; left: 172.59px;">
										<div style="font-size:x-small;text-align:center;padding:2px;color:rgb(148,64,237);">Series5<br>7%</div>
									</span>
									<span class="pieLabel" id="pieLabel5" style="position: absolute; top: 264px; left: 73.5898px;">
										<div style="font-size:x-small;text-align:center;padding:2px;color:rgb(189,155,51);">Series6<br>16%</div>
									</span>
									<span class="pieLabel" id="pieLabel6" style="position: absolute; top: 186px; left: 14.5898px;">
										<div style="font-size:x-small;text-align:center;padding:2px;color:rgb(140,172,198);">Series7<br>6%</div>
									</span>
									<span class="pieLabel" id="pieLabel7" style="position: absolute; top: 47px; left: 44.5898px;">
										<div style="font-size:x-small;text-align:center;padding:2px;color:rgb(162,60,60);">Series8<br>27%</div>
									</span>
								</div>
							</div>
							<div id="menu" class="button-items mt-5">
								<button type="button" class="btn btn-sm btn-outline-info" id="example-1">Default Options</button>
								<button type="button" class="btn btn-sm btn-outline-info" id="example-2">Without Legend</button>
								<button type="button" class="btn btn-sm btn-outline-info" id="example-3">Label Formatter</button>
								<button type="button" class="btn btn-sm btn-outline-info" id="example-4">Label Radius</button>
								<button type="button" class="btn btn-sm btn-outline-info" id="example-5">Label Styles #1</button>
								<button type="button" class="btn btn-sm btn-outline-info" id="example-6">Label Styles #2</button>
								<button type="button" class="btn btn-sm btn-outline-info" id="example-7">Hidden Labels</button>
								<button type="button" class="btn btn-sm btn-outline-info" id="example-8">Combined Slice</button>
								<button type="button" class="btn btn-sm btn-outline-info" id="example-9">Rectangular Pie</button>
								<button type="button" class="btn btn-sm btn-outline-info" id="example-10">Tilted Pie</button>
								<button type="button" class="btn btn-sm btn-outline-info" id="example-11">Donut Hole</button>
								<button type="button" class="btn btn-sm btn-outline-info" id="example-12">Interactivity</button>
							</div>
						</div>

					</div>

				</div>

			</div>
			<!-- Third Review Ends Here -->

		</div>
	</div>
</div>

@include('v1.Includes.Footer')