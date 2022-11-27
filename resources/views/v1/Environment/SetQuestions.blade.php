@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
    @include('v1.Includes.TopMenu')

    <div class='page-content bg-added'>
        <div class='container-fluid'>

            @include('v1.Includes.PageTitleBox')

            <!-- First Review Start Here -->
            <div class='row justify-content-center'>
                <div class='col-lg-12'>

                    <div class='mi-card'>
                        <div class='mi-card-body'>

                            <div class='form-add-edit'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation mi-card-inner-body' method='post' action='' onsubmit='addUpdateSetQuestions();return false;'>
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>

                                    <div class="mi-form-area-container">
                                        <div class="mi-grid-3-layout">
                                            <div class=''>
                                                <label for='validationCustom04' class='form-label'>Select Exam</label>
                                                <select class='form-select spl' id='exam'>
                                                    @if($exams)
                                                    @foreach($exams as $sepExams)
                                                    <option value='{{$sepExams->id}}'>{{$sepExams->name}}</option>
                                                    @endforeach
                                                    @endif
                                                </select>

                                            </div>

                                            <div class=''>
                                                <label for='validationCustom01' class='form-label'>No of Questions</label>
                                                <input type='text' class='form-control spl numbers-only' id='question-count' value='' maxlength="2"/>
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom04' class='form-label'>Medium</label>
                                                <select class='form-select spl' id='medium'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    <?php

                                                    foreach ($medium as $key => $sepMedium) {
                                                    ?>
                                                        <option value='<?= $sepMedium->mmId ?>'><?= $sepMedium->mmName ?></option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>

                                            <div class=''>
                                                <label for='validationCustom04' class='form-label'>Standard</label>
                                                <select class='form-select spl' id='standard' onchange='return loadSubjectByStd(this)'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    @if($standards)
                                                    @foreach ($standards as $standard)
                                                    <option value='{{$standard->clssId}}'>{{$standard->clssName}}</option>
                                                    @endforeach
                                                    @endif
                                                </select>

                                            </div>
                                            <div class=''>
                                                <label for='validationCustom04' class='form-label'>Subjects</label>
                                                <select class='form-select spl' id='subject' onchange='return loadTopics(this)'>
                                                    <option selected disabled value=''>Choose...</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="mi-set-questions-container">
                                            <div class="mi-set-card d-none" id="topics-div">
                                                <div class="set-card-header">
                                                    <p>Topics</p>
                                                </div>
                                                <ul class="list-group" id="topic-list">

                                                </ul>
                                            </div>
                                            <div class="mi-set-card d-none" id="ques-div">
                                                <div class="set-card-header">
                                                    <p>Questions</p>
                                                </div>
                                                <div class="col-md-12 ui-body-space" id="questions-list">

                                                </div>
                                            </div>
                                        </div>
                                        <div class='d-flex justify-content-center'>
                                            <div class='p-4 d-none' id="preview-button">
                                                <button class='btn btn-primary first' type='button' data-bs-toggle="modal" data-bs-target="#myModal" onclick="previewQuestions()">Preview All</button>
                                            </div>
                                            <div class='p-4'>
                                                <button class='btn btn-primary' type='submit'>Confirm</button>
                                            </div>
                                            <div class='p-4'>
                                                <button class='btn btn-primary cancel' type='button'>Cancel</button>
                                            </div>
                                        </div>

                                        <div class="modal" id="myModal">
                                            <div class="modal-dialog">
                                                <div class="modal-content">

                                                    <!-- Modal Header -->
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Selected Questions</h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                                    </div>

                                                    <!-- Modal body -->
                                                    <div class="modal-body">
                                                        <ul class="list-group" id="modal-question-list">
                                                            <li class="list-group-item">Select some questions</li>
                                                        </ul>
                                                    </div>

                                                    <!-- Modal footer -->
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- First Review End Here -->


            <!-- Second Review Starts Here -->


            <!-- Second Review Ends Here -->

        </div>
    </div>
</div>

@include('v1.Includes.Footer')