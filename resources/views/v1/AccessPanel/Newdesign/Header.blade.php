<header class="hf-header">
   <div class="mobile-logo">
      <i class="bx bx-menu bx-sm dark mi-link"></i>
      <div class="mobile-brand">
         <img class="brand-logo-mobile" src="{{asset("./images/new-design/brands/logo.png")}}" alt="logo">
         <a href="#" class="header__logo-mobile">E - Learning</a>
      </div>
   </div>
   <div class="brand-heading nbreadcum">
      <?php
      $home = $course = $test = $result = $answer = 'd-none';
      if ($page == 'home') {
         $home = 'nactive';
      }
      if ($page == 'course') {
         $home = '';
         $course = 'nactive';
      }
      if ($page == 'test') {
         $home = $course = '';
         $test = 'nactive';
      }
      if ($page == 'result') {
         $home = $course = $test = '';
         $result = 'nactive';
      }
      if ($page == 'answer') {
         $home = $course = $test = '';
         $answer = 'nactive';
      }
      ?>
      <a href="{{url("/home")}}" class="header__logo {{$home}}">Home</a>
      <i class='bx bxs-chevron-right n-view {{$course}}'></i>
      <a href="{{url("/course")}}" class="header__logo {{$course}}">Course</a>
      <i class='bx bxs-chevron-right n-view {{$test}}'></i>
      <a href="{{url("/online-test")}}" class="header__logo {{$test}}">Test</a>
      <i class='bx bxs-chevron-right n-view {{$result}}'></i>
      <a href="{{url("/online-test/results")}}" class="header__logo {{$result}}">Results</a>
      <i class='bx bxs-chevron-right n-view {{$answer}}'></i>
      <a href="{{url("/online-test/answers")}}" class="header__logo {{$answer}}">Answers</a>
   </div>
   <div class="header-menu-items">
      <div class="header-profile">
         @if(Session::has('profilePic'))
         <img src="{{asset(Session::get('profilePic'))}}" alt="" class="header__img">
         @else
         <img src="{{asset("./storage/uploads/StudentData/Id_cards/default_boy.png")}}" alt="" class="header__img">
         @endif
         <p class="header__logo n-view">@if($studentDetails){{$studentDetails->stuFirstName}}@else User @endif</p>
      </div>
   </div>
</header>