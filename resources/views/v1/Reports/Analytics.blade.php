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
									<p class='text-dark mb-1 fw-semibold'>Total Users</p>
									<h3 class='m-1'>100</h3>
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
									<p class='text-dark mb-1 fw-semibold'>Total Companies</p>
									<h3 class='m-1'>25</h3>
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
									<p class='text-dark mb-1 fw-semibold'>Total Admins</p>
									<h3 class='m-1'>7</h3>
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
									<p class='text-dark mb-0 fw-semibold'>Events</p>
									<h3 class='m-0'>3/2</h3>
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
			</div>

			<div class='row'>
				<div class='col-lg-12'>
					<div class='row'>
						<div class='col-md-6 col-lg-3'>
							<div class='card report-card'>
								<div class='card-body'>
									<div class='row d-flex justify-content-center'>
										<div class='col'>
											<p class='text-dark mb-0 fw-semibold'>Press Releases</p>
											<h3 class='m-0'>4/9</h3>
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
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

@include('v1.Includes.Footer')