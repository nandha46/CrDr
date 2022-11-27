@include('v1.AccessPanel.Newdesign.Sidebar')
@include('v1.AccessPanel.Newdesign.Header')
<section class="test-dashboard">
   <div class="page-main-layer">
      <div class="test-space">
         <div class="course-subject-container">
            <div class="course-header">
               <p class="text-xl dark">{{$courseNm}}</p>
               <p class="text-sm slate">{{$units}} units</p>
            </div>
            <div class="subject-unit-list">
               <?php
               $i = 1;
               foreach ($courseDet as $key => $sepCourseDet) {
               ?>
                  <div class="accordion" id="accordionPanelsStayOpenExample">
                     <div class="accordion-item no-border">
                        <div class="course-card" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target={{ $i == '1' ? "#panelsStayOpen-collapseOne" : ($i == 2 ? "#panelsStayOpen-collapseTwo" : "#panelsStayOpen-collapseThree") }} aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                           <div class="course-details">
                              <div class="course-image">
                                 <img class="pdf-icon" src="{{asset("./images/book2.svg")}}" alt="" />
                              </div>
                              <div class="subject-details">
                                 <p class="text-md dark"><?= $key ?></p>
                                 <p class="text-xs slate d-none">Unit 1</p>
                              </div>
                           </div>
                           <div class="action-icon">
                              <i class='bx bx-chevron-down bx-sm'></i>
                           </div>
                        </div>

                        <?php

                        foreach ($sepCourseDet as $sepSepCourseDet) {
                        ?>
                           <div id={{ $i == '1' ? "panelsStayOpen-collapseOne" : ($i == 2 ? "panelsStayOpen-collapseTwo" : "panelsStayOpen-collapseThree") }} class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                              <div class="accordion-body mi-custom-acc-body">
                                 <div class="unit-card" data-value='<?= json_encode($sepSepCourseDet); ?>' onclick="GetLessonVideo(this)">
                                    <p class="text-xs slate"><?= $sepSepCourseDet->lessonOrder ?></p>
                                    <p class="text-md dark"><?= $sepSepCourseDet->lessonName ?></p>
                                 </div>
                              </div>
                           </div>
                        <?php
                        }
                        ?>
                     </div>
                  </div>
               <?php
                  $i++;
               }
               ?>
            </div>
         </div>
      </div>

      <div class="recent-space">
         <div class="button-space-alt">
            <div class="brand-heading nbreadcum n-visible">
               <a href="{{url("/home")}}" class="header__logo d-block">Home</a>
               <i class='bx bxs-chevron-right'></i>
               <a href="{{url("/course")}}" class="header__logo d-block nactive">Course</a>
            </div>
            <div class="video-button small-space">
               Change Sylabus
            </div>
         </div>
         <div class="footage-area-space">
            {{-- Modal Start --}}
            <div id="vidModal" class="modal">
               <div class="modal-dialog ci-custom-dialog">
                  <div class="modal-content video-modal-msg">
                  <i class='bx bx-x-circle close-option-icon'></i>
                     <p>No Videos in this Lesson</p>
                  </div>
               </div>
            </div>
            {{-- Modal End --}}
            <div class="footage-space">

               {{-- <?php
                     $i = 1;
                     foreach ($fileInfo as $sepFileInfo) {
                        foreach ($sepFileInfo as $key => $sepSepFileInfo) {
                           if ($i == 1) {
                     ?> --}}
               {{-- <iframe class="radius" src="{{$sepSepFileInfo}}" width="100%" height="400px">
               </iframe> --}}
               <iframe width="100%" height="100%" src="https://www.youtube.com/embed/ulbArdzhOVI?controls=0&modestbranding=1&rel=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
               {{-- <?php }
                           $i++;
                        }
                     }
                     ?> --}}
            </div>
         </div>
         <div class="course-list-container">
            <div class="course-description">
               <div class="course-video-button-space">
                  <p class="text-xl dark">Overview</p>
                  {{-- Modal Start --}}
                  @include('v1.Modals.TestList')
                  {{-- Modal End --}}
                  <div class="video-btn-group">
                     <a class="video-button" data-standard-id="{{$standard_id}}" data-subject-id="{{$subject_id}}" onclick="listTests(this)">
                        Take a Test
                        <i class='bx bx-pencil'></i>
                     </a>
                     {{-- <a class="video-button">
                        Watch Later
                        <i class='bx bx-bookmark'></i>
                     </a> --}}
                     <a data-toggle="modal" data-target="#exampleModal" class="video-button">
                        More Resources
                        <i class='bx bx-search'></i>
                     </a>
                  </div>
               </div>
               <p class="text-sm slate">Our content consists of the entire {{$standard}}<sup>th</sup> standard updated syllabus in a fun learning method with various animations, photos and more. Students can study at their own pace whenever they want on their pc, mobile or tablet. With the world changing very rapidly, it’s time to upgrade our education and use digital tools for achieving good grades and better concept understanding.</p>
            </div>
         </div>
         <div class="comment-history-section">
            <div class="history-section">
               <div class="course-header">
                  <p class="text-md dark">Documents</p>
                  <p class="text-sm slate mi-link">Clear All</p>
               </div>
               <div class="recent-document-list" id="pdf-list">
               </div>
            </div>
            <div class="history-section">
               <div class="course-header">
                  <p class="text-md dark">To be Watched</p>
                  <p class="text-sm slate mi-link video-count" id="video-count">{{count($fileInfo)}} <?= count($fileInfo) > 1 ? "videos" : "video" ?></p>
               </div>
               <div class="recent-video-list" id="videoSec">
                  <?php
                  foreach ($fileInfo as $sepFileInfo) {
                     foreach ($sepFileInfo as $key => $sepSepFileInfo) {
                  ?>
                        <div class="video-card">
                           <div class="video-image-space">
                              <img class="video" data-src="<?= $sepSepFileInfo ?>" src="{{asset("./images/video.png")}}" onclick="playVideo(this);" />
                           </div>
                           <div class="video-content">
                              <p class="text-md dark" title="{{$key}}">{{substr($key, 0, 20);}}...</p>
                              <p class="text-sm slate d-none">Lorem ipsum dolor sit amet consectetur</p>
                           </div>
                        </div>
                  <?php
                     }
                  }
                  ?>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
         <div class="modal-dialog modal-lg">
            <div class="modal-content">
               <div class="modal-body">
                  <!-- carousel -->
                  <div id='carouselExampleIndicators' class='carousel slide' data-ride='carousel'>
                     <div class='carousel-inner' id="image-space">
                        <div class='carousel-item active'>
                           <img class='img-size' src="{{asset("./images/no-image.png")}}" alt='First slide' />
                        </div>
                     </div>
                     <a class='carousel-control-prev' href='#carouselExampleIndicators' role='button' data-slide='prev'>
                        <span class='carousel-control-prev-icon' aria-hidden='true'></span>
                     </a>
                     <a class='carousel-control-next' href='#carouselExampleIndicators' role='button' data-slide='next'>
                        <span class='carousel-control-next-icon' aria-hidden='true'></span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
</section>

@include('v1.AccessPanel.Newdesign.Footer')