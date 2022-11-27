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
                <div class='col-lg-12'>

                    <div class='mi-card'>
                        <div class='mi-card-body'>

                            <div class='mi-card-inner-header'>
                                <button class='btn btn-add-edit'>
                                    <i data-feather='plus' class='menu-icon-form enable-plus'></i>
                                    <i data-feather='minus' class='menu-icon-form d-none enable-minus'></i>
                                    <span class='text-update-add-edit'>Add Topics</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateTopics();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
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
                                        <select class='form-select spl' id='lessons'>
                                            <option selected disabled value=''>Choose...</option>
                                        </select>
                                    </div>
                                        
                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>Topic Name</label>
                                        <input type='text' class='form-control spl input-only' id='topicname' value='' />
                                    </div>
                                </div>
                                    
                                    <div class='mi-grid-full-layout'>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label required'>Description</label>
                                        <textarea type='text' class='form-control spl input-only' id='description' value=''></textarea>
                                    </div>
                                    </div>
                                    <div class="mi-grid-4-layout">
                                    <div class=''>
                                        <label for='validationCustom03' class='form-label required'>Youtube Link</label>
                                        <input type='text' class='form-control spl input-only' id='links' value='' data-toggle="tooltip" data-placement="top" title="The Link should be in the following format: https://youtu.be/vZd6gXXVG3A" />                                       
                                    </div>
                                    </div>

                                    <div class='d-none'>
                                        <label for='validationCustom03' class='form-label'>Other Links</label>
                                        <textarea type='text' class='form-control spl input-only' id='otherlinks' value=''></textarea>
                                    </div>

                                    <div class='d-none'>
                                        <label for='validationCustom03' class='form-label'>Online Tests</label>
                                        <select class='form-select spl' id='online-tests' onchange = 'return changeUserType()'>
                                            <option selected disabled value=''>Choose...</option>
                                            <option value='1'>Test1</option>
                                            <option value='2'>Test2</option>
                                        </select>
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom03' class='form-label'>Upload Images, Documents &lpar;Max size 10MB&rpar;</label>
                                        <div class='input-group mb-3'>
                                            <input type='file' class='form-control input-only' id='file' name='file[]' multiple />
                                        </div>
                                    </div>
                                    <div class="mi-btn-holder">
                                            <button class='mi-btn mi-btn-primary button-add-edit' type='submit'>Add</button>
                                            <button class='mi-btn mi-btn-secondary' type='button'>Cancel</button>
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
            <div class='row mi-table-space'>
                <div class='col-12'>
                    <div class='mi-card'>
                        <div class='mi-card-body card-pads'>
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Topic</th>
                                        <th>Medium</th>
                                        <th>Standard</th>
                                        <th>Subject</th>
                                        <th>Syllabus</th>
                                        <th>Lesson</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($topics) > 0){

                                        foreach($topics as $sepTopics){
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td data-toggle="tooltip" data-placement="top" title="{{ $sepTopics->description }}"><?= $sepTopics->name ?></td>
                                            <td><?= $sepTopics->mmName ?></td>
                                            <td><?= $sepTopics->clssName ?></td>
                                            <td><?= $sepTopics->subjName ?></td>
                                            <td><?= $sepTopics->syName ?></td>
                                            <td><?= $sepTopics->lnLessonName ?></td>
                                            <td class='status'><?= $sepTopics->status?'<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?></td>
                                            <td>
                                                <i data-feather='edit' color="blue" class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editTopic({{$sepTopics->id}}, {{$i}})'></i>
                                                <i color="red" onclick ="return changeStatus('topics', '<?= $sepTopics->id ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
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