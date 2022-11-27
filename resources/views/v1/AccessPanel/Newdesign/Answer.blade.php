@include('v1.AccessPanel.Newdesign.Sidebar')
@include('v1.AccessPanel.Newdesign.Header')
<section class="test-dashboard">
   <div class="online-test-main-page">
   <div class="test-area">
      <div class="button-space-alt">
         <div class="brand-heading nbreadcum n-visible-alt">
            <a href="{{url("/home")}}" class="header__logo d-block">Home</a>
            <i class='bx bxs-chevron-right'></i>
            <a href="{{url("/course")}}" class="header__logo d-block">Course</a>
            <i class='bx bxs-chevron-right'></i>
            <a href="{{url("/online-test")}}" class="header__logo d-block nactive">Test</a>
         </div>
      </div>
      <div class="test-header-area">
         <h1 class="title-md text-header">Your Result <img class="emoji" src="{{asset("./images/new-design/emoji/happy.png")}}" alt="cele"></h1>
         <p class="text-md slate">Please take a loot at the answer sheet below</p>
         <h1 class="text-xl text-header">10 <span class="text-xl text-header dark">Out of 15 </span></h1>
      </div>
      <div class="question-list">
         <div class="question-space">
            <div class="main-question">
               <p class="text-md dark">1. Philology is the</p>
            </div>
            <div class="option-area-space">
               <div class="option-card">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">study of bones </p>
                  </div>
               </div>
               <div class="option-card fail">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">study of muscles </p>
                  </div>
                  <div class="check-answer">
                     <p class="text-sm ">Your Answer</p>
                  </div>
               </div>
               <div class="option-card success">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">study of architecture</p>
                  </div>
                  <div class="check-answer">
                     <p class="text-sm ">Correct Answer</p>
                  </div>
               </div>
               <div class="option-card">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">science of languages</p>
                  </div>
               </div>
            </div>
         </div>
         <!-- second question -->
         <div class="question-space">
            <div class="main-question">
               <p class="text-md dark">2. Philology is the</p>
            </div>
            <div class="option-area-space">
               <div class="option-card">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">study of bones </p>
                  </div>
               </div>
               <div class="option-card">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">science of languages</p>
                  </div>
               </div>
               <div class="option-card fail">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">study of muscles </p>
                  </div>
                  <div class="check-answer">
                     <p class="text-sm ">Your Answer</p>
                  </div>
               </div>
               <div class="option-card success">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">study of architecture</p>
                  </div>
                  <div class="check-answer">
                     <p class="text-sm ">Correct Answer</p>
                  </div>
               </div>
            </div>
         </div>
         <!-- second question -->
         <div class="question-space">
            <div class="main-question">
               <p class="text-md dark">3. Philology is the</p>
            </div>
            <div class="option-area-space">
               <div class="option-card success">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">study of bones </p>
                  </div>
                  <div class="check-answer">
                     <p class="text-sm ">Correct Answer</p>
                  </div>
               </div>
               <div class="option-card ">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">study of muscles </p>
                  </div>
               </div>
               <div class="option-card ">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">study of architecture</p>
                  </div>
               </div>
               <div class="option-card">
                  <div class="answer">
                     <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                     <p class="text-md ">science of languages</p>
                  </div>
               </div>
            </div>
         </div>
         <div class="question-button-space btn-right">
            <div class="video-button small-space">
               Try Again
               <i class='bx bx-rotate-right'></i>
            </div>
         </div>
      </div>
   </div>
   <div class="mark-down-area">
      <div class="recent-test">
         <div class="checked-header">
            <p class="text-xl dark">Recent Test</p>
            <p class="text-sm slate mi-link">View All</p>
         </div>
         <div class="recent-test-card">
            <div class="test-card">
               <div class="test-card-header">
                  <p class="text-md dark">Social Test</p>
                  <p class="text-sm slate">75%</p>
               </div>
               <div class="progress-area">
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
               </div>
            </div>
            <div class="test-card">
               <div class="test-card-header">
                  <p class="text-md dark">English Test</p>
                  <p class="text-sm slate">100%</p>
               </div>
               <div class="progress-area">
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
               </div>
            </div>
            <div class="test-card">
               <div class="test-card-header">
                  <p class="text-md dark">Maths Test</p>
                  <p class="text-sm slate">25%</p>
               </div>
               <div class="progress-area">
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
@include('v1.AccessPanel.Newdesign.Footer')