@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
    @include('v1.Includes.TopMenu')

    <div class='page-content bg-added'>
        <div class='container-fluid'>

            @include('v1.Includes.PageTitleBox')

            <!-- First Review Start Here -->
            <div class='row justify-content-center'>
                @include('v1.Includes.StatusToast')
                @include('v1.Includes.UpdateToast')
                <div class='col-lg-12'>

                    <div class='mi-card'>
                        <div class='mi-card-body'>

                            <div class='mi-card-inner-header'>
                                <button class='btn btn-add-edit'>
                                    <i data-feather='plus' class='menu-icon-form enable-plus'></i>
                                    <i data-feather='minus' class='menu-icon-form d-none enable-minus'></i>
                                    <span class='text-update-add-edit'>Add OnlineTests</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateOnlineTests();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value='@if($onlinetest){{$onlinetest->id}}@endif'>
                                    <input type='hidden' class='input-only current-row' value=''>
                                    <div class="d-none" data-question='<?= json_encode($onlinetest) ?>'></div>
                                    
                                    <div class="mi-form-area-container">
                                        <div class="mi-grid-3-layout">
                                            <div  class=''>
                                                <label for='validationCustom04' class='form-label required'>Medium</label>
                                                <select class='form-select spl' id='medium'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    <?php
    
                                                            foreach($medium as $key => $sepMedium){
                                                        ?>
                                                                <option value = '<?= $sepMedium->mmId ?>'><?= $sepMedium->mmName?></option>
                                                        <?php
                                                            }
                                                        ?>
                                                </select>
                                            </div>
                                        <div class=''>
                                                <label for='validationCustom04' class='form-label required'>Standard</label>
                                                <select class='form-select spl' id='standard' onchange = 'return loadSubjectByStd(this)'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    <?php
    
                                                            foreach($standard as $key => $sepStandard){
                                                        ?>
                                                                <option value = '<?= $sepStandard->clssId ?>'><?= $sepStandard->clssName?></option>
                                                        <?php
                                                            }
                                                        ?>
                                                </select>
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom04' class='form-label required'>Subject</label>
                                                <select class='form-select spl' id='subject' onchange = 'return loadSubject(this)'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    @if($subject)
                                                    @foreach($subject as $subject)
                                                    <option value = '{{$subject->subjId}}'>{{$subject->subjName}}</option>
                                                    @endforeach
                                                    @endif
                                                </select>
                                            </div>
                                            <div  class=''>
                                                <label for='validationCustom04' class='form-label required'>Syllabus</label>
                                                <select class='form-select spl' id='syllabus' onchange = 'return loadLessonsBySyllabus(this)'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    <?php
    
                                                            foreach($syllabus as $key => $sepSyllabus){
                                                        ?>
                                                                <option value = '<?= $sepSyllabus->syId ?>'><?= $sepSyllabus->syName?></option>
                                                        <?php
                                                            }
                                                        ?>
                                                </select>
                                            </div>
                                        <div class=''>
                                            <label for='validationCustom04' class='form-label required'>Lesson</label>
                                            <select class='form-select spl' id='lessons' onchange = 'return loadTopicsByLessons(this)'>
                                                <option selected disabled value=''>Choose...</option>
                                            </select>
                                        </div>

                                    <div class=''>
                                        <label for='validationCustom04' class='form-label required'>Topic</label>
                                        <select class='form-select spl' id='topicid' data-topicid="@if($onlinetest){{$onlinetest->topicid}}@endif" >
                                            <option selected disabled value=''>Choose...</option>
                                        </select>
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>Question</label>
                                        <input type='text' class='form-control spl input-only' id='questions' value='' />
                                    </div>

                                    <div class=''>
                                            <label class='form-label required'>Type:</label>
                                        <select class='form-select spl' id='question-type' onchange = 'changeQuestionType(this)'>
                                            <option value="" disabled selected>Choose...</option>
                                            <option value="1">Fill In the Blanks</option>
                                            <option value="2">Choose the Best Answer</option>
                                            <option value="3">True or False</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="mi-grid-4-layout d-none" id="mcq">
                                    <div class='display-flex mb-3 margin-top-18'>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label'>Choice 1</label>
                                        <input type='text' class='form-control spl input-only' id='choice1' value='' />
                                       
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label'>Choice 2</label>
                                        <input type='text' class='form-control spl input-only' id='choice2' value='' />
                                       
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label'>Choice 3</label>
                                        <input type='text' class='form-control spl input-only' id='choice3' value='' />
                                       
                                    </div>

                                    <div class=''>
                                        <label for='validationCustom02' class='form-label'>Choice 4</label>
                                        <input type='text' class='form-control spl input-only' id='choice4' value='' />
                                    </div>
                                    </div>
                                </div>
                                <div class="mi-grid-4 d-none" id="truefalse">
                                    <div class=''>
                                    <label for='validationCustom03' class='form-label'>Correct Answer</label>
                                        <select class='form-select spl' id='true-answer'>
                                          <option value="1">True</option>
                                          <option value="0">False</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="d-none" id="fiblanks">
                                    <div class=''>
                                    <label for='validationCustom03' class='form-label'>Correct Answer</label>
                                    <input type='text' class='form-control spl input-only' id='blankanswer' value='' />   
                                    </div>
                                </div>
                                    <div class='d-none' id="mcqdiv">
                                        <label for='validationCustom03' class='form-label'>Correct Answer</label>
                                        <select class='form-select spl' id='mcqanswer'>
                                          <option value="" selected disabled>Choose...</option>
                                          <option value="1">1</option>
                                          <option value="2">2</option>
                                          <option value="3">3</option>
                                          <option value="4">4</option>
                                        </select>
                                    </div>

                                    <div class=''>
                                        <label for='validationCustom05' class='form-label required'>Marks</label>
                                        <input type='text' class='form-control spl numbers-only' id='marks' maxlength="1"/>
                                        
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom05' class='form-label'>Question Difficulty</label>
                                        <select class='form-select spl' id='difficulty'>
                                          <option value="Easy" selected>Easy</option>
                                          <option value="Medium">Medium</option>
                                          <option value="Hard">Hard</option>
                                        </select>
                                    </div>
                                </div>
                                <div class='mi-btn-holder mi-table-space'>
                                    <button class='mi-btn mi-btn-primary button-add-edit' type='submit'>Add</button>
                                    <button class='mi-btn mi-btn-secondary' type='button'>Cancel</button>
                                    @if($enableBack)
                                    <button class='btn btn-outline-success' type='button' onclick="backtoViewQuestions()">Back to View Questions</button>
                                    @endif
                                </div>
                            </div>
                        </form>
                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- First Review End Here -->
        </div>
    </div>
</div>

@include('v1.Includes.Footer')