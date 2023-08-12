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
									<p class='text-dark mb-0 fw-semibold'>Sessions</p>
									<h3 class='m-0'>24k</h3>
									<p class='mb-0 text-truncate text-muted'><span class='text-success'><i class='mdi mdi-trending-up'></i>8.5%</span> New Sessions Today</p>
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
									<p class='text-dark mb-0 fw-semibold'>Avg.Sessions</p>
									<h3 class='m-0'>00:18</h3>
									<p class='mb-0 text-truncate text-muted'><span class='text-success'><i class='mdi mdi-trending-up'></i>1.5%</span> Weekly Avg.Sessions</p>
								</div>
								<div class='col-auto align-self-center'>
									<div class='report-main-icon bg-light-alt'>
										<i data-feather='clock' class='align-self-center text-muted icon-sm'></i>  
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
									<p class='text-dark mb-0 fw-semibold'>Bounce Rate</p>
									<h3 class='m-0'>$2400</h3>
									<p class='mb-0 text-truncate text-muted'><span class='text-danger'><i class='mdi mdi-trending-down'></i>35%</span> Bounce Rate Weekly</p>
								</div>
								<div class='col-auto align-self-center'>
									<div class='report-main-icon bg-light-alt'>
										<i data-feather='activity' class='align-self-center text-muted icon-sm'></i>  
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
									<p class='text-dark mb-0 fw-semibold'>Goal Completions</p>
									<h3 class='m-0'>85000</h3>
									<p class='mb-0 text-truncate text-muted'><span class='text-success'><i class='mdi mdi-trending-up'></i>10.5%</span> Completions Weekly</p>
								</div>
								<div class='col-auto align-self-center'>
									<div class='report-main-icon bg-light-alt'>
										<i data-feather='briefcase' class='align-self-center text-muted icon-sm'></i>  
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
											<p class='text-dark mb-0 fw-semibold'>Total Chats</p>
											<h3 class='m-0'>155</h3>
										</div>
										<div class='col-auto align-self-center'>
											<div class='report-main-icon bg-light-alt'>
												<i data-feather='tag' class='align-self-center text-muted icon-sm'></i>  
											</div>
										</div>
									</div>
									<hr class='hr-dashed'>
									<div class='text-center'>
										<h6 class='text-primary bg-soft-primary p-2 m-0 font-11 rounded'>
											<i data-feather='calendar' class='align-self-center icon-xs me-1'></i>
											01 Jan 2021 to 31 Jun 2021
										</h6>
									</div>
								</div> 
							</div>
						</div>
						<div class='col-md-6 col-lg-3'>
							<div class='card report-card'>
								<div class='card-body'>
									<div class='row d-flex justify-content-center'>
										<div class='col'>
											<p class='text-dark mb-0 fw-semibold'>Open Chats</p>
											<h3 class='m-0'>101</h3>
										</div>
										<div class='col-auto align-self-center'>
											<div class='report-main-icon bg-light-alt'>
												<i data-feather='package' class='align-self-center text-muted icon-sm'></i>  
											</div>
										</div>
									</div>
									<hr class='hr-dashed'>
									<div class='text-center'>
										<h6 class='text-primary bg-soft-primary p-2 mb-0 font-11 rounded'>
											<i data-feather='calendar' class='align-self-center icon-xs me-1'></i>
											01 Jan 2021 to 31 Jun 2021
										</h6>
									</div>
								</div> 
							</div>
						</div>
						<div class='col-md-6 col-lg-3'>
							<div class='card report-card'>
								<div class='card-body'>
									<div class='row d-flex justify-content-center'>
										<div class='col'>
											<p class='text-dark mb-0 fw-semibold'>On Hold</p>
											<h3 class='m-0'>15</h3>
										</div>
										<div class='col-auto align-self-center'>
											<div class='report-main-icon bg-light-alt'>
												<i data-feather='zap' class='align-self-center text-muted icon-sm'></i>  
											</div>
										</div>
									</div>
									<hr class='hr-dashed'>
									<div class='text-center'>
										<h6 class='text-primary bg-soft-primary p-2 mb-0 font-11 rounded'>
											<i data-feather='calendar' class='align-self-center icon-xs me-1'></i>
											01 Jan 2021 to 31 Jun 2021
										</h6>
									</div>
								</div>
							</div>
						</div>
						<div class='col-md-6 col-lg-3'>
							<div class='card report-card'>
								<div class='card-body'>
									<div class='row d-flex justify-content-center'>
										<div class='col'>
											<p class='text-dark mb-0 fw-semibold'>Unassigned</p>
											<h3 class='m-0'>88</h3>
										</div>
										<div class='col-auto align-self-center'>
											<div class='report-main-icon bg-light-alt'>
												<i data-feather='lock' class='align-self-center text-muted icon-sm'></i>  
											</div>
										</div>
									</div>
									<hr class='hr-dashed'>
									<div class='text-center'>
										<h6 class='text-primary bg-soft-primary p-2 mb-0 font-11 rounded'>
											<i data-feather='calendar' class='align-self-center icon-xs me-1'></i>
											01 Jan 2021 to 31 Jun 2021
										</h6>
									</div>
								</div>
							</div>
						</div>                   
					</div>
				</div>                 
			</div>

			<!-- Second Review Ends Here -->

			<!-- Third Review Starts Here -->

			<div class='row'>
				<div class='col-lg-4'>
					<div class='card'>
						<div class='card-header'>
							<div class='row align-items-center'>
								<div class='col'>
									<h4 class='card-title'>Support Status</h4>
								</div>
								<div class='col-auto'> 
									<a href='#' class='btn btn-sm btn-outline-light d-inline-block'>View All</a>  
								</div>
							</div>                                
						</div>  
						<div class='card-body'>
							<div class='row'>
								<div class='col support-tickets'>
									<h4 class='fw-semibold'>1530</h4>
									<h5>Tickets</h5>
								</div>
								<div class='col-auto align-self-center'>
									<ul class='list-inline url-list mb-0'>
										<li class='list-inline-item mb-2'>
											<i class='fas fa-circle text-primary font-10'></i>
											<span>Open Tickets</span>                                                                                                      
										</li>
										<li class='list-inline-item mb-2'>
											<i class='fas fa-circle text-info font-10'></i> 
											<span>Resolved Tickets</span>                                              
										</li>
										<li class='list-inline-item mb-3'>
											<i class='fas fa-circle text-success font-10'></i>
											<span>Unresolved Tickets</span>                                                 
										</li>
									</ul>
								</div>
							</div>
							<div class='progress mt-4'>
								<div class='progress-bar progress-bar-striped progress-bar-animated bg-primary' role='progressbar' style='width: 70%' aria-valuenow='70' aria-valuemin='0' aria-valuemax='100'>70%</div>
								<div class='progress-bar bg-info' role='progressbar' style='width: 25%' aria-valuenow='25' aria-valuemin='0' aria-valuemax='100'>25%</div>
								<div class='progress-bar bg-success' role='progressbar' style='width: 5%' aria-valuenow='5' aria-valuemin='0' aria-valuemax='100'>5%</div>
							</div>
						</div>
					</div>
				</div>
				<div class='col-lg-4'>
					<div class='card'>
						<div class='card-body'>
							<div class='row'>
								<div class='col-7 align-self-center'>
									<div class='timer-data'>
										<div class='icon-info mt-1 mb-3'>
											<i class='dripicons-phone bg-soft-dark'></i>
										</div>
										<h3 class='mt-0 text-dark'>0m:27s</h3>
										<h4 class='mt-0 header-title text-truncate font-15 mb-0'>Avg.Speed of answer</h4>
										<p class='text-muted mb-0 text-truncate'>It is a long established fact that a reader.</p>
									</div>
								</div>
								<div class='col-5 align-self-center'>
									<div class='apexchart-wrapper'>
										<div id='dash_spark_1' class='chart-gutters'></div>
									</div>
								</div>
							</div>
						</div>                                                                                                  
					</div>
				</div>
				<div class='col-lg-4'>
					<div class='card'>
						<div class='card-body'>
							<div class='row'>
								<div class='col-7 align-self-center'>
									<div class='timer-data'>
										<div class='icon-info mt-1 mb-3'>
											<i class='dripicons-clock bg-soft-dark'></i>
										</div>
										<h3 class='mt-0 text-dark'>4m:30s</h3>
										<h4 class='mt-0 header-title text-truncate font-15 mb-0'>Time to Resolved Complaint</h4>
										<p class='text-muted mb-0 text-truncate'>It is a long established fact that a reader.</p>
									</div>
								</div>
								
								<div class='col-5 align-self-center'>
									<div class='apexchart-wrapper'>
										<div id='dash_spark_2' class='chart-gutters'></div>
									</div>
								</div>
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
