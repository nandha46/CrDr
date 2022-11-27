@include('v1.AccessPanel.Includes.Header')
@include('v1.AccessPanel.Includes.Loader')
@include('v1.AccessPanel.Includes.Menu')
@include('v1.AccessPanel.Includes.OverlayPopup')
<div class='container-fluid sidebar d-md-flex align-items-stretch'>
   <div class="col-md-3">
   <div id="accordion" class="accordion">
                    <div class="card mb-0">
                        <div class="card-header collapsed" data-toggle="collapse" href="#Tamil">
                            <a class="card-title"> தமிழ் </a>
                        </div>
                        <div id="Tamil" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> மொழி</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> கல்வி</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> இயற்கை</a></li>
                        
                            </ul>
                        </div>
                        <div class="card-header collapsed" data-toggle="collapse" data-parent="#accordion" href="#English">
                            <a class="card-title"> English </a>
                        </div>
                        <div id="English" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Hospitality</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Sports</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> My Duties</a></li>
                        
                            </ul>
                        </div>
                        <div class="card-header collapsed" data-toggle="collapse" data-parent="#accordion" href="#Maths">
                            <a class="card-title"> Maths </a>
                        </div>
                        <div id="Maths" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Geometry</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Numbers</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Patterns</a></li>
                        
                            </ul>
                        </div>
                        <div class="card-header collapsed" data-toggle="collapse" data-parent="#accordion" href="#Science">
                            <a class="card-title"> Science </a>
                        </div>
                        <div id="Science" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Organ Systems</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Matter and Materials</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Energy</a></li>
                        
                            </ul>
                        </div>
                        <div class="card-header collapsed" data-toggle="collapse" data-parent="#accordion" href="#Social">
                            <a class="card-title"> Social </a>
                        </div>
                        <div id="Social" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Our Earth</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Towards History</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Good Citizen</a></li>
                        
                            </ul>
                        </div>
                    
                    </div>
            </div>
      <!-- <div class="mt-3">
         <div class="tagcloud">
            <a href="#" class="tag-cloud-link">Science</a>
            <a href="#" class="tag-cloud-link">Maths</a>
            <a href="#" class="tag-cloud-link">Tamil</a>
         </div>
      </div> -->
   </div>
   <!-- Page Content  -->
   <div id="balloon-container">
   
   <div class='col-md-9 text-center d-flex flex-column align-items-center mt-5 online-test-result-success-div '>
      <h3>Congratulations! <i class="fa fa-trophy" aria-hidden="true"></i></h3>
      <p class="mt-3">You did a great job in the test! You have scored</p>
      <ul>
         <li class="text-center mb-2">15</li>
         <li class="text-center mb-1">Out of <span>15</span></li>
      </ul>
      <button class="main-button ">Take New Quiz</button>	
   </div>
   </div>

   <div class="col-md-9 d-none">
      <div class="spl-scroll">
         <p class="score-tag mb-3">score : <span><b class="ml-2 pr-2">6</b>of<b class="ml-2">25</b></p>
         <p class="score-tag text-success">24% <span><b class="ml-2 pr-2">Correct</b></p>
         <div class="card-body ">
            <h4 class="ques-no">Question<b class="ml-2">1</b></h4>
            <p class="text-left mb-2">Philology is the</p>
            <div class=" col-md-12 zeropadding form-result">
               <div class="form-check p-0">
                  <input class="form-check-input ml-2" type="radio" name="q1" id="q1_r1" value="r1">
                  <label class="form-check-label" for="q1_r1">
                  study of bones
                  </label>
               </div>
               <div class="form-check p-0">
                  <input class="form-check-input ml-2" type="radio" name="q1" id="q1_r2" value="r2">
                  <label class="form-check-label" for="q1_r2">
                  study of muscles
                  </label>
               </div>
               <div class="form-check p-0 wrong-ans" >
                  <input class="form-check-input ml-2" type="radio" name="q1" id="q1_r3" value="r3">
                  <label class="form-check-label" for="q1_r3">
                  study of architecture<span class="your-ans">Your Answer</span>
                  </label>
               </div>
               <div class="form-check p-0 crt-ans">
                  <input class="form-check-input ml-2" type="radio" name="q1" id="q1_r4" value="r4">
                  <label class="form-check-label" for="q1_r4">
                  science of languages<span class="correct-ans">Correct Answer</span>
                  </label>
               </div>
            </div>
         </div>
         <div class="card-body ">
            <h4 class="ques-no">Question<b class="ml-2">2</b></h4>
            <p class="text-left mb-2">Philology is the</p>
            <div class=" col-md-12 zeropadding form-result">
               <div class="form-check p-0">
                  <input class="form-check-input ml-2" type="radio" name="q1" id="q1_r1" value="r1">
                  <label class="form-check-label" for="q1_r1">
                  study of bones
                  </label>
               </div>
               <div class="form-check p-0">
                  <input class="form-check-input ml-2" type="radio" name="q1" id="q1_r2" value="r2">
                  <label class="form-check-label" for="q1_r2">
                  study of muscles
                  </label>
               </div>
               <div class="form-check p-0">
                  <input class="form-check-input ml-2" type="radio" name="q1" id="q1_r2" value="r2">
                  <label class="form-check-label" for="q1_r2">
                  study of muscles
                  </label>
               </div>
               <div class="form-check p-0 crt-ans">
                  <input class="form-check-input ml-2" type="radio" name="q1" id="q1_r4" value="r4">
                  <label class="form-check-label" for="q1_r4">
                  science of languages<span class="correct-ans">Correct Answer</span>
                  </label>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="col-md-9 text-center text-secondary d-none">
     <h1 class="mb-3">Result :</h1>
     <h5 class="mb-3"><b class="mr-2">6</b>of<b class="ml-2">25</b></h5>
     <h3 class="mb-3">24%</h3>
     <p class="text-center mb-3">You must study much harder!</p>
     <h5 class="mb-3">Time Spent</h5>
     <p class="text-center mb-3">1.07</p>
            <div class="d-flex justify-content-center align-items-center">
              <button class="btn btn-info mr-3">Try Again</button>
              <button class="btn btn-success">Back to Quizzes</button>
            </div>
    </div>
</div>
<div class="col-md-12 text-center d-flex flex-column align-items-center mt-3 border p-3 d-none">
   <p>You did a good job in the test! You have scored</p>
   <p class="mt-3"><b class="score">10</b><span class="pl-2 pr-2">/</span>Out of <span><b>15</b></span></p>
   <ul>
      <li class="text-center mb-2"></li>
      <li class="text-center mb-1">Out of <span>15</span></li>
   </ul>
   <button class="main-button ">Take New Quiz</button>	
</div>
</div>
</div>
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
@include('v1.AccessPanel.Includes.FooterMain')