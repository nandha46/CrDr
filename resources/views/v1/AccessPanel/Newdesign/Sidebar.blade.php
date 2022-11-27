<!doctype html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!--========== BOX ICONS ==========-->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
   <!--========== CSS ==========-->
   <link rel="stylesheet" href="{{asset("./css/v1/new-design/index.css")}}">
   <link rel='stylesheet' href='{{asset('./css/v1/access-panel/baloon.css')}}'>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   <title>{{$title}}</title>
   <meta name='csrf-token' content='{{ csrf_token() }}' />
   {{-- <base href="<?= $baseUrl ?>"> --}}
   <script>
      let baseUrl = '{{asset('')}}';
   </script>
</head>

<body>
   <main class="page-layout-grid">
      <!--========== NAV ==========-->
      <div class="nav-bar" id="navbar">
         <nav class="nav__container">
            <div>
               <!-- <a href="#" class="nav__link nav__logo">
                  <i class='bx bxs-disc nav__icon' ></i>
                  <span class="nav__logo-name">E - Learning</span>
                  </a> -->
               <a href="{{url("/home")}}" class="nav__link nav__logo nav-brand-logo">
                  <img class="brand-logo" src='{{asset('./images/new-design/brands/logo.png')}}' alt="logo">
                  <p class="header__logo">E - Learning Program</p>
               </a>
               <div class="nav__list">
                  <div class="nav__items">
                     <h3 class="nav__subtitle">Course</h3>
                     <a href="{{url("/home")}}" class="nav__link">
                        <i class='bx bx-home nav__icon'></i>
                        <span class="nav__name">Home</span>
                     </a>
                     <div class="nav__dropdown">
                           <i class='bx bx-bell nav__icon'></i>
                           <span class="nav__name">Subjects</span>
                           <i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
                        </a>
                        <div class="nav__dropdown-collapse">
                           <div class="nav__dropdown-content">
                              @if($subjects)
                              @foreach($subjects as $subject)
                              <a href="{{url("/course/".$subject->subjId)}}" class="nav__dropdown-item">{{ $subject->subjName}}</a>
                              @endforeach
                              @endif
                           </div>
                        </div>
                     </div>
                     <a class="nav__link mi-link" data-standard-id="{{$standard_id}}" data-subject-id="0" onclick="listTests(this)">
                        <i class='bx bx-pencil nav__icon'></i>
                        <span class="nav__name">Online Test</span>
                     </a>
                  </div>
                  <div class="nav__items">
                     <h3 class="nav__subtitle">Account</h3>
                     <a href="{{url("/profile")}}" class="nav__link">
                        <i class='bx bx-user nav__icon'></i>
                        <span class="nav__name">Profile</span>
                     </a>
                  </div>
               </div>
            </div>
            <a href="{{url("/logout")}}" class="nav__link nav__logout">
               <i class='bx bx-log-out nav__icon'></i>
               <span class="nav__name">Log Out</span>
            </a>
         </nav>
      </div>
      <div class="body-content">