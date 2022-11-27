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
      <div id="balloon-container">
         <div class="result-area-container">
            <div class="result full-result">
               <div class="result-image-space">
                  <img src="{{asset("./images/new-design/results/award.png")}}" alt="image">
               </div>
               <div class="result-content t-center">
                  <h1 class="title-md text-header">Congratulations<img class="emoji" src="{{asset("./images/new-design/emoji/cele.png")}}" alt="cele"></h1>
                  <p class="text-md slate">You did a great job in the test! You have scored</p>
               </div>
               <div class="result-marks">
                  <div class="mark-card full">
                     <h1 class="mark-text-md">24</h1>
                     <p class="mark-text-sm dark">Out of 24</p>
                  </div>
               </div>
               <div class="result-actions">
                  <a href="{{url("/online-test/answers")}}" class="video-button try small-space">
                  Take Another Test
                  <i class='bx bxs-chevron-right'></i>
                  </a>
               </div>
            </div>
            <div class="result half-result d-none">
               <div class="result-image-space">
                  <img src="{{asset("./images/new-design/results/super.png")}}" alt="image">
               </div>
               <div class="result-content t-center">
                  <h1 class="title-md text-header">Wow Superb<img class="emoji" src="{{asset("./images/new-design/emoji/happy.png")}}" alt="cele"></h1>
                  <p class="text-md slate">You did a great job in the test! You have scored</p>
               </div>
               <div class="result-marks">
                  <div class="mark-card half">
                     <h1 class="mark-text-md">10</h1>
                     <p class="mark-text-sm dark">Out of 15</p>
                  </div>
               </div>
               <div class="result-actions">
                  <div class="video-button try  small-space">
                     Take Another Test
                     <i class='bx bxs-chevron-right'></i>
                  </div>
               </div>
            </div>
            <div class="result half-result d-none">
               <div class="result-image-space">
                  <img src="{{asset("./images/new-design/results/struggle.png")}}" alt="image">
               </div>
               <div class="result-content t-center">
                  <h1 class="title-md text-header">Need to Improve<img class="emoji" src="{{asset("./images/new-design/emoji/sad.png")}}" alt="cele"></h1>
                  <p class="text-md slate">You have tried but need more exfort! You have scored</p>
               </div>
               <div class="result-marks">
                  <div class="mark-card null">
                     <h1 class="mark-text-md">4</h1>
                     <p class="mark-text-sm dark">Out of 15</p>
                  </div>
               </div>
               <div class="result-actions">
                  <div class="video-button small-space">
                     Try Again
                     <i class='bx bx-rotate-right'></i>
                  </div>
                  <div class="video-button try  small-space">
                     Take Another Test
                     <i class='bx bxs-chevron-right'></i>
                  </div>
               </div>
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
<script type="text/javascript">
function random(num) {
  return Math.floor(Math.random()*num)
}

function getRandomStyles() {
  var r = random(255);
  var g = random(255);
  var b = random(255);
  var mt = random(200);
  var ml = random(50);
  var dur = random(10)+5;
  return `
  background-color: rgba(${r},${g},${b},0.7);
  color: rgba(${r},${g},${b},0.7); 
  box-shadow: inset -7px -3px 10px rgba(${r-10},${g-10},${b-10},0.7);
  margin: ${mt}px 0 0 ${ml}px;
  animation: float ${dur}s ease-in infinite
  `
}

function createBalloons(num) {
  var balloonContainer = document.getElementById("balloon-container")
  for (var i = num; i > 0; i--) {
  var balloon = document.createElement("div");
  balloon.className = "balloon";
  balloon.style.cssText = getRandomStyles();           
  balloonContainer.append(balloon);
  }
}

window.onload = function() {
  createBalloons(15);
}
</script>
@include('v1.AccessPanel.Newdesign.Footer')