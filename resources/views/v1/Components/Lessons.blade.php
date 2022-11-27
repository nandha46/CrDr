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
                                    <span class='text-update-add-edit'>Add Lessons</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateLessons();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>

                                    <div class="mi-form-area-container">
                                        <div class="mi-grid-3-layout">
                                    <div  class=''>
                                            <label for='validationCustom04' class='form-label required'>Medium</label>
                                            <select class='form-select spl' id='medium' onchange = 'return loadStandardByMed(this)'>
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
                                        <div  class=''>
                                    <label for='validationCustom04' class='form-label required'>Syllabus</label>
                                            <select class='form-select spl' id='syllabus'>
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
                                            <label for='validationCustom04' class='form-label required'>Subjects</label>
                                            <select class='form-select spl' id='subject' onchange = 'return loadSubject(this)'>
                                                <option selected disabled value=''>Choose...</option>
                                                <?php

                                                        foreach($subject as $key => $sepSubject){
                                                    ?>
                                                            <option value = '<?= $sepSubject->subjId  ?>'><?= $sepSubject->subjName?></option>
                                                    <?php
                                                        }
                                                    ?>
                                            </select>
                                        </div>

                                        <div class=''>
                                            <label for='validationCustom01' class='form-label required'>Lesson Name</label>
                                            <input type='text' class='form-control spl input-only' id='lessonName' value='' />
                                        </div>
                                        <div class=''>
                                            <label for='validationCustom04' class='form-label required'>Lesson Order</label>
                                            <select class='form-select spl' id='lessonOrder'>
                                                <option selected disabled value=''>Choose...</option>
                                                <option value='1'>1</option>
                                                <option value='2'>2</option>
                                                <option value='3'>3</option>
                                                <option value='4'>4</option>
                                                <option value='5'>5</option>
                                            </select>
                                        </div>
                                    </div>
                                    

                                    <div class='mi-btn-holder'>
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
                                        <th>Syllabus</th>
                                        <th>Lesson Name</th>
                                        <th>Standard</th>
                                        <th>Subject</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($lessons) > 0){

                                        foreach($lessons as $sepLessons){

                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepLessons->syllabusName ?></td>
                                            <td><?= $sepLessons->lessonName ?></td>
                                            <td><?= $sepLessons->standard ?></td>
                                            <td><?= $sepLessons->subject ?></td>
                                            <td class="status">
                                                <?= $sepLessons->lessonstatus == 'Active' ?'<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?> 
                                            </td>            
                                            <td >
                                                <i data-feather='edit' color='blue' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editLesson({{$sepLessons->lnId}}, {{$i}})'></i>
                                                <i onclick ="return changeStatus('lessons', '<?= $sepLessons->lnId ?>', 'row-<?= $i ?>')" data-feather='power' color='red' class='menu-icon-form-td-i cursor-pointer'></i>
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