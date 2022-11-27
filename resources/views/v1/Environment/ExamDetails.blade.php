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
                                    <span class='text-update-add-edit'>Add Exams</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='addUpdateExams();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                                    
                                    <div class='col-md-3'>
                                        <label for='validationCustom04' class='form-label required'>Exam Type</label>
                                        <select class='form-select spl' id='exam-type' onchange = 'return changeUserType()'>
                                            <option selected disabled value=''>Choose...</option>
                                            @foreach($examTypes as $i=>$val)
                                            <option value='{{$i}}'>{{$val}}</option>
                                            @endforeach
                                        </select>
                                       
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom01' class='form-label required'>Date</label>
                                        <input type='text' class='form-control spl input-only date-input' id='date' value='' />
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom01' class='form-label required'>Exam Name</label>
                                        <input type='text' class='form-control spl input-only' id='examname' value='' />
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom02' class='form-label'>Start Time</label>
                                        <input type='time' class='form-control spl input-only' id='start' value='' onchange="return setExamEndTime(this);"/>
                                       
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom02' class='form-label'>End Time</label>
                                        <input type='time' class='form-control spl input-only' id='end' value='' step="60" />
                                       
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom01' class='form-label required'>Passing Marks</label>
                                        <input type='number' class='form-control spl input-only' id='passing-marks' value='' />
                                    </div>

                                    <div class='col-12 display-flex-space'>
                                        <div class='col-md-6'>
                                            <button class='btn btn-primary first button-add-edit' type='submit'>Add</button>
                                        </div>
                                        <div class='col-md-6'>
                                            <button class='btn btn-primary cancel' type='button'>Cancel</button>
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
                                        <th>Exam Type</th>
                                        <th>Date</th>
                                        <th>Exam Name</th>
                                        <th>Start time</th>
                                        <th>End Time</th>
                                        <th>Passing Marks</th>
                                        <th>Completion Status</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($exams) > 0){

                                        foreach($exams as $sepExams){
                                                   
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $examTypes[$sepExams->exam_type] ?></td>
                                            <td><?= $sepExams->date ?></td>
                                            <td><?= $sepExams->name ?></td>
                                            <td><?= date('g:i A', strtotime($sepExams->start_time)); ?></td>
                                            <td><?= date('g:i A', strtotime($sepExams->end_time)); ?></td>
                                            <td><?= $sepExams->passing_marks ?></td>
                                            <td><?= $sepExams->isCompleted ?'<span class="badge bg-danger text-bg-success">Completed</span>':'<span class="badge bg-success text-bg-success">Yet to be completed</span>' ?></td>
                                            <td class='status'><?= $sepExams->status?'<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?></td>
                                            <td>
                                                <i color="blue" data-feather='edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editExams({{$sepExams->id}}, {{$i}})'></i>
                                                <i color="red" onclick ="return changeStatus('exams', '<?= $sepExams->id ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
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