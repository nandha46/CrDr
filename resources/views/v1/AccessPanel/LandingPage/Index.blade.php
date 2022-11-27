@include('v1.AccessPanel.Includes.Header')
@include('v1.AccessPanel.Includes.Loader')
@include('v1.AccessPanel.Includes.Menu')
@include('v1.AccessPanel.Includes.OverlayPopup')

<div class='welcome-area' id='welcome'>
	<!-- ***** Header Text Start ***** -->
	<div class='header-text'>
		<div class='container'>
			<div class='row'>
				<div class='left-text col-lg-5 col-md-12 col-sm-12 col-xs-12'
					data-scroll-reveal='enter left move 30px over 0.6s after 0.4s'>
					<h1>Learn Without <br><em>Limits</em></h1>
					<p>Open your door to more with world-class professional certificates and degress</p>
					<a href='#promotion' class='main-button-slider'>KNOW US BETTER</a>
				</div>
			</div>
		</div>
	</div>
	<!-- ***** Header Text End ***** -->
</div>

<!-- <section class='section' id='testimonials'>
	<div class='container'>
		<div class='row'>

            <div class='col-lg-8 offset-lg-2'>
				<div class='center-heading'>
					<h2>What We <em>Done</em></h2>
					<p>Suspendisse vitae laoreet mauris. Fusce a nisi dapibus, euismod purus non, convallis odio.
						Donec vitae magna ornare, pellentesque ex vitae, aliquet urna.
					</p>
				</div>
			</div>
			<div class='col-lg-4 col-md-6 col-sm-12 col-xs-12'
				data-scroll-reveal='enter left move 30px over 0.6s after 0.4s'>
				<div class='features-item'>
					<div class='features-icon'>
						<h2>01</h2>
						<img src='assets/images/features-icon-1.png' alt=''>
						<h4 class='text-right'>Events 1</h4>
						<p>Curabitur pulvinar vel odio sed sagittis. Nam maximus ex diam, nec consectetur diam.</p>
						<a href='#testimonials' class='main-button'>
						More Detail
						</a>
					</div>
				</div>
			</div>
			<div class='col-lg-4 col-md-6 col-sm-12 col-xs-12'
				data-scroll-reveal='enter bottom move 30px over 0.6s after 0.4s'>
				<div class='features-item'>
					<div class='features-icon'>
						<h2>02</h2>
						 <img src='assets/images/features-icon-2.png' alt=''>
						<h4 class='text-right'>Events 2</h4>
						<p>Curabitur pulvinar vel odio sed sagittis. Nam maximus ex diam, nec consectetur diam.</p>
						<a href='#testimonials' class='main-button'>
						More Detail
						</a>
					</div>
				</div>
			</div>
			<div class='col-lg-4 col-md-6 col-sm-12 col-xs-12'
				data-scroll-reveal='enter right move 30px over 0.6s after 0.4s'>
				<div class='features-item'>
					<div class='features-icon'>
						<h2>03</h2>
						<img src='assets/images/features-icon-3.png' alt=''>
						<h4 class='text-right'>Events 3</h4>
						<p>Curabitur pulvinar vel odio sed sagittis. Nam maximus ex diam, nec consectetur diam.</p>
						<a href='#testimonials' class='main-button'>
						More Detail
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section> -->

<div class='left-image-decor'></div>

<section class='section' id='promotion'>
	<div class='container'>
		<div class='row'>
            <div class='col-lg-8 offset-lg-2'>
				<div class='center-heading'>
					<h2>What They Think <em>About Us</em></h2>
					<p>Suspendisse vitae laoreet mauris. Fusce a nisi dapibus, euismod purus non, convallis odio.
						Donec vitae magna ornare, pellentesque ex vitae, aliquet urna.
					</p>
				</div>
			</div>
			<div class='testimonial-content  left-image col-lg-5 col-md-12 col-sm-12 mobile-bottom-fix-big'
				data-scroll-reveal='enter left move 30px over 0.6s after 0.4s'>
				<img src='{{asset('./images/access-panel/DSC01029.JPG')}}' class='rounded img-fluid d-block mx-auto' alt='App'>
			</div>
			<div class='right-text offset-lg-1 col-lg-5 col-md-12 col-sm-12 mobile-bottom-fix'>
				<ul>
					<li data-scroll-reveal='enter right move 30px over 0.6s after 0.4s'>
						<!-- <img src='assets/images/about-icon-01.png' alt=''> -->
						<div class='text'>
							<h4>Our Mission</h4>
							<p>Learning is pivotal for a student's success in academics and life. The Digital Age is deeply shaping the way students learn and will also determine their future propects. At HOPE FOUNDATION'S, we encourage students to embrace this fast, changing world and making them ready for tomorrow by being their constant learning partner.</p>
						</div>
					</li>
					<li data-scroll-reveal='enter right move 30px over 0.6s after 0.5s'>
						<!-- <img src='assets/images/about-icon-02.png' alt=''> -->
						<div class='text'>
							<h4>Our Vision</h4>
							<p>Learning is pivotal for a student's success in academics and life. The Digital Age is deeply shaping the way students learn and will also determine their future propects. At HOPE FOUNDATION'S, we encourage students to embrace this fast, changing world and making them ready for tomorrow by being their constant learning partner.</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<div class='right-image-decor'></div>

<section class='section' id='action'>
	<div class='container'>
		<div class='row'>
			<div class='col-lg-8 offset-lg-2'>
				<div class='center-heading'>
					<h2>What We <em>Do</em></h2>
					<p>Suspendisse vitae laoreet mauris. Fusce a nisi dapibus, euismod purus non, convallis odio.
						Donec vitae magna ornare, pellentesque ex vitae, aliquet urna.
					</p>
				</div>
			</div>
			<div class='col-lg-10 col-md-12 col-sm-12 mobile-bottom-fix-big'
				data-scroll-reveal='enter left move 30px over 0.6s after 0.4s'>
				<div class='owl-carousel owl-theme'>
					<div class='item service-item'>
						<!-- <div class='author'>
							<i>
								<p>01</p>
							</i>
						</div> -->
						<div class='testimonial-content'>
							<img src='{{asset('./images/access-panel/DSC00979.JPG')}}' alt='Author One'>
						</div>
					</div>
					<div class='item service-item'>
						<!-- <div class='author'>
							<i>
								<p>02</p>
							</i>
						</div> -->
						<div class='testimonial-content'>
							<img src='{{asset('./images/access-panel/DSC00992.JPG')}}' alt='Author One'>
						</div>
					</div>
					<div class='item service-item'>
						<!-- <div class='author'>
							<i>
								<p>03</p>
							</i>
						</div> -->
						<div class='testimonial-content'>
							<img src='{{asset('./images/access-panel/DSC00997.JPG')}}' alt='Author One'>
						</div>
					</div>
					<div class='item service-item'>
						<!-- <div class='author'>
							<i>
								<p>04</p>
							</i>
						</div> -->
						<div class='testimonial-content'>
							<img src='{{asset('./images/access-panel/DSC01027.JPG')}}' alt='Author One'>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Arrow -->

@include('v1.AccessPanel.Includes.Footer')