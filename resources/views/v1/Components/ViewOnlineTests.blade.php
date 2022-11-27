@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
    @include('v1.Includes.TopMenu')

    <div class='page-content bg-added'>
        <div class='container-fluid'>

            @include('v1.Includes.PageTitleBox')
            @include('v1.Includes.UpdateToast')
            <div class='row mi-table-space'>
                <div class="mi-grid-3-layout">
                    <div  class=''>
                        <label for='validationCustom04' class='form-label'>Medium</label>
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
                        <label for='validationCustom04' class='form-label'>Standard</label>
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
                        <label for='validationCustom04' class='form-label'>Subject</label>
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
                        <label for='validationCustom04' class='form-label'>Syllabus</label>
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
                    <label for='validationCustom04' class='form-label'>Lesson</label>
                    <select class='form-select spl' id='lessons' onchange = 'return loadQuestionsByLesson(this)'>
                        <option selected disabled value=''>Choose...</option>
                    </select>
                </div>
                </div>
            </div>

            <!-- Second Review Starts Here -->

            <div class='row mi-table-space d-none'>
                <div class='col-12'>
                    <div class='mi-card'>
                        <div class='mi-card-body card-pads'>
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>Sl No</th>
                                        <th>Topic</th>
                                        <th>No of Questions</th>
                                        <th>Easy</th>
                                        <th>Medium</th>
                                        <th>Hard</th>
                                        <th>View Questions</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($topiccount) > 0){

                                        foreach($topiccount as $sepTopiccount){

                                            if(array_key_exists('Easy',$sepTopiccount)){
                                                $easy = $sepTopiccount['Easy'];
                                            } else {
                                                $easy = 0;
                                            }
                                            if(array_key_exists('Medium',$sepTopiccount)){
                                                $medium = $sepTopiccount['Medium'];
                                            } else {
                                                $medium = 0;
                                            }
                                            if(array_key_exists('Hard',$sepTopiccount)){
                                                $hard = $sepTopiccount['Hard'];
                                            } else {
                                                $hard = 0;
                                            }
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepTopiccount['topicname'] ?></td>
                                            <td><?= $easy + $medium + $hard ?></td>
                                            <td><?= $easy ?></td>
                                            <td><?= $medium ?></td>
                                            <td><?= $hard ?></td>
                                            <td>
                                                <a href="{{ route('get-view-questions',['id' => $sepTopiccount['topicid'], 'page' => $pageno] ) }}"><i data-feather='eye' color="purple" class='menu-icon-form-td-i cursor-pointer'></i></a>
                                            </td>
                                        </tr>
                                    <?php
                                            $i++;
                                        }
                                    }
                                    ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <input type='hidden' id='row-count' value = '<?= $i ?>'  />
            </div>
            <!-- Second Review Ends Here -->

        </div>
    </div>
</div>

@include('v1.Includes.Footer')