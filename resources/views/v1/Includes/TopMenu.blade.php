<div class='topbar'>
    <!-- Navbar -->
    <nav class='navbar-custom'>
        <ul class='list-unstyled topbar-nav float-end mb-0'>
            <li class='dropdown<p></p> hide-phone d-none'>
                <a class='nav-link dropdown-toggle arrow-none waves-light waves-effect' data-bs-toggle='dropdown' href='#' role='button'
                    aria-haspopup='false' aria-expanded='false'>
                <i data-feather='search' class='topbar-icon'></i>
                </a>
                <div class='dropdown-menu dropdown-menu-end dropdown-lg p-0'>
                   <div class='app-search-topbar'>
                        <form action='#' method='get'>
                            <input type='search' name='search' class='from-control top-search mb-0' placeholder='Enter your text'>
                            <button type='submit'><i class='ti-search'></i></button>
                        </form>
                    </div>
                </div>
            </li>
            
            <li class='dropdown'>
                <a class='nav-link dropdown-toggle waves-effect waves-light nav-user' data-bs-toggle='dropdown' href='#' role='button'
                    aria-haspopup='false' aria-expanded='false'>
                <span class='ms-1 nav-user-name hidden-sm'><?= !$authUsr ? 'Admin' : ucfirst($authUsr->username)?></span>
                @if(Session::has('profile_pic'))
                    {{-- <img src='{{asset(Session::get('profile_pic'))}}' alt='profile-user' class='rounded-circle thumb-xs' /> --}}
                    <img src='./storage/app/profile_pic/admin.png' alt='profile-user' class='rounded-circle thumb-xs' />
			    @else
                    <img src='{{asset('./storage/uploads/StudentData/Id_cards/default_boy.png')}}' alt='profile-user' class='rounded-circle thumb-xs' />
                @endif
                </a>
                <div class='dropdown-menu dropdown-menu-end'>
                    <a class='dropdown-item' href='<?= route('get-profile') ?>'><i data-feather='user' class='align-self-center icon-xs icon-dual me-1'></i> Profile</a>
                    <div class='dropdown-divider mb-0'></div>
                    <a class='dropdown-item' href='{{route('get-logout')}}' onclick="return confirm('Do yo want to logout?')"><i data-feather='power' class='align-self-center icon-xs icon-dual me-1'></i> Logout</a>
                </div>
            </li>
        </ul>
        <ul class='list-unstyled topbar-nav mb-0'>
            <li>
                <button class='nav-link button-menu-mobile'>
                <i data-feather='menu' class='align-self-center topbar-icon'></i>
                </button>
            </li>
            
        </ul>
    </nav>
</div>