@include('v1.AccessPanel.Newdesign.Sidebar')
@include('v1.AccessPanel.Newdesign.Header')
<section class="test-dashboard" oncontextmenu="return false">
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
            <h1 class="title-md text-header">{{$exam->name}} <img class="emoji" src="{{asset("./images/new-design/emoji/cele.png")}}" alt="celebration"></h1>
            <p class="text-md slate">Please take your time and answer all the question without fail</p>
         </div>
         <div class="question-list" id="qList">
            @if($questions)
            @php
            $i = ($questions->perPage() * ($questions->currentPage() - 1)) + 1;
            @endphp
            @foreach($questions as $question)
            @switch ($question->questiontype)
            @case('1')
            <div class="question-space" data-qid="{{$question->id}}" data-sno="{{$i}}">
               <div class="main-question">
                  <p class="text-md dark">{{$i}}. {{$question->question}}</p>
               </div>
               <div class="option-area-space">
                  <div class="option-textarea">
                     <input type="text" id="text-ans" name="text-answer" class="form-control form-control-md" placeholder="Short answer">
                  </div>
               </div>
            </div>
            @break;
            @case('2')
            <div class="question-space" data-qid="{{$question->id}}" data-sno="{{$i}}">
               <div class="main-question">
                  <p class="text-md dark">{{$i}}. {{$question->question}}</p>
               </div>
               @php
               $choices = $question->choice;
               $arr = explode('~',$choices);
               @endphp
               <div class="option-area-space">
                  <label class="option-card">
                     <div class="answer">
                        <input class="form-check-input" type="radio" name="flexRadioDefault{{$i}}" id="flexRadioDefault1" value="1">
                        <p class="text-md" data-value="1">{{$arr[0]}}</p>
                     </div>
                  </label>
                  <label class="option-card">
                     <div class="answer">
                        <input class="form-check-input" type="radio" name="flexRadioDefault{{$i}}" id="flexRadioDefault1" value="2">
                        <p class="text-md" data-value="2">{{$arr[1]}}</p>
                     </div>
                  </label>
                  <label class="option-card">
                     <div class="answer">
                        <input class="form-check-input" type="radio" name="flexRadioDefault{{$i}}" id="flexRadioDefault1" value="3">
                        <p class="text-md" data-value="3">{{$arr[2]}}</p>
                     </div>
                  </label>
                  <label class="option-card">
                     <div class="answer">
                        <input class="form-check-input" type="radio" name="flexRadioDefault{{$i}}" id="flexRadioDefault1" value="4">
                        <p class="text-md" data-value="4">{{$arr[3]}}</p>
                     </div>
                  </label>
               </div>
            </div>
            @break;
            @case('3')
            <div class="question-space" data-qid="{{$question->id}}" data-sno="{{$i}}">
               <div class="main-question">
                  <p class="text-md dark">{{$i}}. {{$question->question}}</p>
               </div>
               <div class="option-area-space">
                  <label class="option-card">
                     <div class="answer">
                        <input class="form-check-input" type="radio" name="flexRadioDefault{{$i}}" id="flexRadioDefault1" value="1">
                        <p class="text-md" data-value="1">True </p>
                     </div>
                  </label>
                  <label class="option-card">
                     <div class="answer">
                        <input class="form-check-input" type="radio" name="flexRadioDefault{{$i}}" id="flexRadioDefault1" value="0">
                        <p class="text-md" data-value="0">False </p>
                     </div>
                  </label>
               </div>
            </div>
            @break;
            @case('4')
            <div class="question-space" data-qid="{{$question->id}}" data-sno="{{$i}}">
               <div class="main-question">
                  <p class="text-md dark">{{$i}}. {{$question->question}}</p>
               </div>
               <div class="option-area-space">
                  <div class="option-textarea">
                     <textarea id="text-ans" placeholder="Write your answer briefly here"></textarea>
                  </div>
               </div>
            </div>
            @break;
            @endswitch
            @php
            $i++;
            @endphp
            @endforeach
            @endif
            <div class="col-12 display-flex-space page-center-align">
               {{ $questions->links()}}
            </div>
         </div>

         <div class="question-button-space btn-right" data-bs-target="#resultModal">
            <a href="{{url("/online-test/results")}}" class="video-button small-space" onclick="submitTest();return false;">
               Submit your test
               <i class='bx bxl-telegram'></i>
            </a>
         </div>
      </div>
      </div>
   <div class="mark-down-area" id="data-holder" data-questions-count="{{count($allQuestions)}}" data-testid="{{$exam->id}}">
      <div class="question-checked-list">
         <div class="checked-header">
            <p class="text-xl dark">List of Questions</p>
         </div>
         <div class="checked-body">
            @if($allQuestions)
            @php
            $i = 1;
            @endphp
            @foreach($allQuestions as $question)
            <div class="question-box">
               <p class="text-xl" id="answered-{{$i}}">{{$i++}}</p>
            </div>
            @endforeach
            @endif
         </div>
      </div>
      <div class="recent-test d-none">
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
{{-- Modal Start --}}
<div class="modal" id="resultModal">
   <div class="modal-dialog">
   </div>
</div>
{{-- Modal End --}}
{{-- Modal Start --}}
@include('v1.Modals.TestList')
{{-- Modal End --}}
@include('v1.AccessPanel.Newdesign.Footer')