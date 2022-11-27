@include('v1.AccessPanel.Newdesign.Sidebar')
@include('v1.AccessPanel.Newdesign.Header')
<section class="test-dashboard">
      <section class="section-void about-section gray-bg" id="about">
         <style>
          .gray-bg{
            background:#f7f7f7;
          }
/* About Me 
---------------------*/
.about-text h3 {
  font-size: 45px;
  font-weight: 700;
  margin: 0 0 6px;
}
@media (max-width: 767px) {
  .about-text h3 {
    font-size: 35px;
  }
}
.about-text h6 {
  font-weight: 600;
  margin-bottom: 15px;
}
@media (max-width: 767px) {
  .about-text h6 {
    font-size: 18px;
  }
}
.about-text p {
  font-size: 18px;
  max-width: 450px;
}
.about-text p mark {
  font-weight: 600;
  color: #20247b;
}

.about-list {
  padding-top: 10px;
}
.about-list .media {
  padding: 5px 0;
}
.about-list label {
  color: #20247b;
  font-weight: 600;
  width: 88px;
  margin: 0;
  position: relative;
}
/* .about-list label:after {
  content: "";
  position: absolute;
  top: 0;
  bottom: 0;
  right: 11px;
  width: 1px;
  height: 12px;
  background: #20247b;
  -moz-transform: rotate(15deg);
  -o-transform: rotate(15deg);
  -ms-transform: rotate(15deg);
  -webkit-transform: rotate(15deg);
  transform: rotate(15deg);
  margin: auto;
  opacity: 0.5;
} */
.about-list p {
  margin: 0;
  font-size: 15px;
}

@media (max-width: 991px) {
  .about-avatar {
    margin-top: 30px;
  }
}

.about-section .counter {
  padding: 22px 20px;
  background: #ffffff;
  border-radius: 10px;
  box-shadow: 0 0 30px rgba(31, 45, 61, 0.125);
}
.about-section .counter .count-data {
  margin-top: 10px;
  margin-bottom: 10px;
}
.about-section .counter .count {
  font-weight: 700;
  color: #20247b;
  margin: 0 0 5px;
}
.about-section .counter p {
  font-weight: 600;
  margin: 0;
}
mark {
    background-image: linear-gradient(rgba(252, 83, 86, 0.6), rgba(252, 83, 86, 0.6));
    background-size: 100% 3px;
    background-repeat: no-repeat;
    background-position: 0 bottom;
    background-color: transparent;
    padding: 0;
    color: currentColor;
}
.theme-color {
    color: #fc5356;
}
.dark-color {
    color: #20247b;
}

         </style>
         <div class="container">
             <div class="profile-grid-wrapper">
                 
                 <div class="profile-grid-void">
                     <div class="about-avatar-image">
                         {{-- <img src="https://bootdey.com/img/Content/avatar/avatar7.png" title="" alt=""> --}}
                         @if(Session::has('profilePic'))
                         <img src="{{asset(Session::get('profilePic'))}}" alt="" title="">
                         @else
                         <img src="{{asset("./storage/uploads/StudentData/Id_cards/default_boy.png")}}" alt="profile pic" class="header__img">
                         @endif
                     </div>
                 </div>
                 <div class="profile-grid-void">
                     <div class="about-text go-to">
                         <h3 class="dark-color" data-about="{{json_encode($studentView)}}">{{$studentView->firstname.' '.$studentView->lastname}}</h3>
                         <h6 class="theme-color lead">Student of Hope Foundation</h6>
                         <div class="row about-list">
                             <div class="col-md-6">
                                 <div class="media">
                                     <label>Class</label>
                                     <p>{{$studentView->clssName.' - '.$studentView->secnName}}</p>
                                 </div>
                                 <div class="media">
                                     <label>Age</label>
                                     <p>22 Yr</p>
                                 </div>
                                 <div class="media">
                                     <label>Parents</label>
                                     <p>{{$studentView->father_name}} - {{$studentView->mother_name}} {{$studentView->guardian_name==null?'':$studentView->guardian_name}}</p>
                                 </div>
                                 <div class="media">
                                     <label>Address</label>
                                     <p>{{$studentView->address}}</p>
                                 </div>
                             </div>
                             <div class="col-md-6">
                                 <div class="media">
                                     <label>E-mail</label>
                                     <p>{{$studentView->email==null?'':$studentView->email}}</p>
                                 </div>
                                 <div class="media">
                                     <label>Phone</label>
                                     <p>{{$studentView->OfficialNumber}}</p>
                                 </div>
                                 <div class="media">
                                    <label>Birthday</label>
                                    <p>{{$studentView->date_of_birth}}</p>
                                </div>
                                 <div class="media">
                                     <label>City</label>
                                     <p>{{$studentView->city}}</p>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="counter">
                 <div class="row">
                     <div class="col-6 col-lg-3">
                         <div class="count-data text-center">
                             <h6 class="count h2" data-to="500" data-speed="500">{{$exams}}</h6>
                             <p class="m-0px font-w-600">Tests Taken</p>
                         </div>
                     </div>
                     <div class="col-6 col-lg-3">
                         <div class="count-data text-center">
                             <h6 class="count h2" data-to="150" data-speed="150">&#8211;</h6>
                             <p class="m-0px font-w-600">Average Score</p>
                         </div>
                     </div>
                     <div class="col-6 col-lg-3">
                         <div class="count-data text-center">
                             <h6 class="count h2" data-to="850" data-speed="850">&#8211;</h6>
                             <p class="m-0px font-w-600">Attendance</p>
                         </div>
                     </div>
                     <div class="col-6 col-lg-3">
                         <div class="count-data text-center">
                             <h6 class="count h2" data-to="190" data-speed="190">&#8211;</h6>
                             <p class="m-0px font-w-600">Rank</p>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>
</section>
@include('v1.Modals.TestList')
@include('v1.AccessPanel.Newdesign.Footer')