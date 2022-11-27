@include('v1.AccessPanel.Newdesign.Sidebar')
@include('v1.AccessPanel.Newdesign.Header')
<section class="test-dashboard">
   <div class="online-test-main-page">
   <div class="test-area">
      <div class="button-space-alt">
         <div class="brand-heading nbreadcum n-visible-alt">
            <a href="{{url("/home")}}" class="header__logo d-block">Home</a>
            <i class='bx bxs-chevron-right'></i>
            <a href="{{url("/course")}}" class="header__logo d-block nactive">Course</a>
         </div>
      </div>
      <div class="test-header-area">
         <h1 class="text-md ">Hello, {{$studentDetails->stuFirstName." ".$studentDetails->stuLastName}}</h1>
         <h1 class="title-md text-header">What will you going to learn today?<img class="emoji" src="{{asset("./images/new-design/emoji/smile.png")}}" alt="cele"></h1>
      </div>
      <div class="subject-list">
         @if($subjects)
         @php $i=1; @endphp
         @foreach ($subjects as $subject)
         <a href="{{url("/course/".$subject->subjId)}}" class="subject-card color-bg-{{$i}}">
            <img src="{{asset($subject->subject_logo)}}" alt="{{ $subject->subjName}}">
            <h1 class="text-xl color-{{$i++}}">{{ $subject->subjName}}</h1>
         </a>    
         @endforeach
         @endif
      </div>
   </div>
   <div class="mark-down-area d-none">
      <div class="blackboard-area">
         <div class="checked-header">
            <p class="text-xl dark">BlackBoard</p>
         </div>
         <div class="blackboard-body">
            <div class="course-card mi-link">
               <div class="course-details">
                  <div class="course-image">
                  </div>
                  <div class="subject-details">
                     <p class="text-md dark">Units & Measurement</p>
                     <p class="text-xs slate">What is the use of metre?</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="other-blogs d-none">
         <div class="checked-header">
            <p class="text-xl dark">Recommandations</p>
            <p class="text-sm slate mi-link">View All</p>
         </div>
         <div class="blog-card">
            <div class="image-area">
               <img src="{{asset("./images/new-design/brands/photo.jpg")}}" alt="photo">
            </div>
            <div class="blog-body">
               <p class="text-md dark">Learn Photoshop</p>
               <p class="text-sm slate">Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis eaque earum necessitatibus optio ad fugit magni eligendi impedit illum.</p>
            </div>
         </div>
      </div>
   </div>
</section>
@include('v1.Modals.TestList')
@include('v1.AccessPanel.Newdesign.Footer')