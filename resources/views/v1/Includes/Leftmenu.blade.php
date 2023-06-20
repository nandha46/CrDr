<div class='left-sidenav'>
            <!-- LOGO -->
    <div class='brand'>
        <a href='javascript:void(0)' class='logo'>
            {{-- <span><img src='{{asset('/images/logo-sm.png')}}' alt='logo-small' class='logo-sm'></span> --}}
            <span><img src='{{asset('/images/CrDr.ico')}}' alt='logo-small' class='logo-sm'></span>
        </a>
    </div>
            <!--end logo-->
    <div class='menu-content h-100' data-simplebar>
        <ul class='metismenu left-sidenav-menu'>
            <li class='menu-label mt-0'>Main</li>
            <?= $html ?>
            @if(isset($companySelected) && $companySelected != null)
            <li class="metismenu left-sidenav-menu"><div class="close-button"><a href="{{route('get-close-company')}}">Close Company</a></div></li>
            @else
            <li class="metismenu left-sidenav-menu"><div class="open-button"><a href="{{route('get-select-company')}}">Open Company</a></div></li>
            @endif
        </ul>
    
    </div>
</div>