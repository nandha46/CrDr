<header class='header-area header-sticky'>
	<div class='container'>
		<div class='row'>
			<div class='col-12'>
				<nav class='main-nav'>
					<!-- ***** Logo Start ***** -->
					<a href="{{route('get-index')}}" class='logo'>
					<img src='{{asset('./images/access-panel/HFNewLogo.png')}}' width='8%' class='logo-img'>
					<span class="e-learn">E-learning Program</span>
					</a>
					<!-- ***** Logo End ***** -->
					<!-- ***** Menu Start ***** -->
					<ul class='nav'>
                        @if($title == 'Main')
                            <!-- Add Search Option Here -->
							<div class="input-group search-btn">
    <input type="text" class="form-control" placeholder="Search...">
    <div class="input-group-append">
      <button class="btn btn-secondary " type="button">
        <i class="fa fa-search"></i>
      </button>
    </div>
  </div>
							<!-- <input type="search" class=""> -->
                        @endif
						<li class='scroll-to-section'><a href="{{route('get-index')}}">Home</a></li>
                        @if($title == 'Home')
						<li class='scroll-to-section'><a href='#promotion' class='menu-item'>About</a></li>
						<li class='scroll-to-section d-none'><a href='#testimonials' class='menu-item'>Events</a>
						</li>
                        @endif
						<li class='submenu'>
							<a href='javascript:;'>Languages</a>
							<ul>
								<li><a href='' class='menu-item'>Tamil</a></li>
								<li><a href='' class='menu-item'>English</a></li>
							</ul>
						</li>
                        @if($title == 'Main')
                        <li class='scroll-to-section'><a href='#testimonials' class='menu-item'>Online Test</a>
                        <li class='submenu'>
							<a href='javascript:;'><i class="fa fa-user"></i></a>
							<ul>
								<li><a href='' class='menu-item'><i class="fa fa-cog"></i> Profile</a></li>
								<li><a href='' class='menu-item'><i class="fa fa-power-off"></i> Logout</a></li>
							</ul>
						</li>
                        @endif
                        @if($title == 'Home')
						<li class='scroll-to-section'><a href='#contact-us' class='menu-item'>Contact Us</a></li>
                        {{-- <li class='scroll-to-section'><a href='' class='menu-item' data-toggle='modal' data-target='#myModal'>Login</a></li> --}}
                        <li class='scroll-to-section'><a href='{{route('get-student-login')}}' >Login</a></li>
                        @endif
						
					</ul>
					@if($title == 'Home')
					<ul class="nav float-right right-navbar">
					<li class='scroll-to-section'><a href='#promotion' class='menu-item'>Sponsored by</a></li>
					<img src='{{asset('./images/access-panel/HCL-Logo.png')}}' width='100px' class='hcl-logo-img mt-3 pr-3'>
					</ul>
					@endif
					<a class='menu-trigger'>
					<span>Menu</span>
					</a>
					<!-- ***** Menu End ***** -->
				</nav>
			</div>
		</div>
	</div>
</header>