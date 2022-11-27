@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
    @include('v1.Includes.TopMenu')

    <div class='page-content bg-added'>
        <div class='container-fluid'>

            @include('v1.Includes.PageTitleBox')

            <div class='row justify-content-center'>
                {{-- Toast start --}}
            <div class="toast align-items-center text-white bg-success border-0 top-0" role="alert" aria-live="assertive" aria-atomic="true" id="successToast">
                <div class="d-flex">
                  <div class="toast-body" id="toastBody">
                    Status Changed Successfully
                  </div>
                  <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
              </div>
            {{-- Toast End --}}
                <div class='col-lg-12'>

                    <div class='mi-card'>
                        <div class='mi-card-body'>

                            <div class='form-add-edit'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateOnlineTests();return false;'>
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>

                                    <div class='col-md-4'>
                                        <label for='validationCustom01' class='form-label'>Select Topic</label>
                                        <select class='form-select spl' id='topicid' onchange="changeQuestionsTopic(this)">
                                            <option value="" disabled selected>Choose...</option>
                                            @if($topics)
                                            @foreach($topics as $topic)
                                            <option value="{{ $topic->id }}" @if($topicid == $topic->id) selected @endif >{{$topic->name}}</option>
                                            @endforeach
                                            @endif
                                        </select>
                                    </div>
                                    <div class="col-2 display-flex-space">
                                        <button class="btn glow-on-hover" type="button" onclick="gotoOnlineQuestions()">Add New Questions</button>
                                    </div>
                                </form>
                            </div> <br>
                            <div>
                                <table class='table table-striped table-bordered nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                    <thead>
                                        <tr>
                                            <th>Topic</th>
                                            <th>No of Questions</th>
                                            <th>Easy</th>
                                            <th>Medium</th>
                                            <th>Hard</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>{{$topiccount['topicname']}}</td>
                                            <td>{{$topiccount['total']}}</td>
                                            <td>{{$topiccount['Easy']}}</td>
                                            <td>{{$topiccount['Medium']}}</td>
                                            <td>{{$topiccount['Hard']}}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="questions-body">
                                @if(!empty($paged_questions) && $paged_questions->count())
                                @php
                                    $i = ($paged_questions->perPage() * ($paged_questions->currentPage() - 1)) + 1; 
                                @endphp
                                @foreach($paged_questions as $questions)
                                <div class="question-choice" style="padding: 15px; box-shadow: rgb(204, 219, 232) 3px 3px 6px 0px inset, rgba(255, 255, 255, 0.5) -3px -3px 6px 1px inset;margin:8px;border-radius:10px;">
                                    <div class="question" style="padding: 8px;" question-id="{{$questions->id}}">
                                        Q{{$i}}. {{ $questions->question }}
                                            <span style="background-color: #F79256" class="badge rounded-pill">{{$questions->marks}} Marks</span> 
                                            <span style="background-color: #1D4E89" class="badge rounded-pill">{{$questions->difficulty}}</span>
                                            <span style="background-color: #21FA90; color:black" class="badge rounded-pill">{{$questions->qtype}}</span>
                                            <i data-feather='edit' color="#006FEF" class='menu-icon-form-td-i cursor-pointer' onclick="editQuestion(this)"></i> 
                                            <i data-feather='power' onclick="changeStatus('questions',{{$questions->id}},0)" color="#FF3B28" class='menu-icon-form-td-i cursor-pointer'></i><br>
                                    </div>
                                    @if(!empty($questions->choice) && $questions->questiontype == 2)
                                    @php 
                                    $choiceArr = explode('~', $questions->choice);
                                    @endphp
                                    <div class="choice" style="padding: 8px;">
                                        <span style="background-color: #767B91" class="badge">{{$choiceArr[0]}}</span>
                                        <span style="background-color: #767B91" class="badge">{{$choiceArr[1]}}</span>
                                        <span style="background-color: #767B91" class="badge">{{$choiceArr[2]}}</span>
                                        <span style="background-color: #767B91" class="badge">{{$choiceArr[3]}}</span>
                                     <br>
                                    </div>
                                    @endif
                                </div>
                                @php
                                    $i++;
                                @endphp
                                @endforeach
                                @endif
                                <div class="col-12 display-flex-space">
                                    {{ $paged_questions->links()}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Second Review Starts Here -->

        </div>
    </div>
</div>

@include('v1.Includes.Footer')