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
                                    <span class='text-update-add-edit'>Add Subjects</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateSubjects();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                            <div class="mi-form-area-container">
                                    <div class='mi-grid-3-layout'>
                                    <div  class=''>
                                    <label for='validationCustom04' class='form-label required'>Medium</label>
                                            <select class='form-select spl' id='medium'onchange = 'return loadStandardByMed(this)'>
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
                                            <select class='chosen-select' id='standard' multiple>
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
                                            <label for='validationCustom01' class='form-label required'>Subject Name</label>
                                            <input type='text' class='form-control spl input-only' id='subjectName' value='' />
                                        </div>
                                        
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
<style>
    tr td:nth-child(5){
      text-align: center;  
    }
</style>

            <!-- Second Review Starts Here -->

            <div class='row mi-table-space'>
                <div class='col-12'>
                    <div class='mi-card'>
                        <div class='mi-card-body card-pads'>
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Subject</th>
                                        <th>Medium</th>
                                        <th>Standards</th>
                                        <th>Logo</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($subjects) > 0){

                                        foreach($subjects as $sepSubjects){

                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepSubjects->subjName ?></td>
                                            <td><?= $sepSubjects->mmName ?></td>
                                            <td><?= $sepSubjects->class_names ?></td>
                                            <td><img src="{{asset('').$sepSubjects->subject_logo}}" alt="{{$sepSubjects->subjName}}" width="80" height="80"></td>
                                            <td class='status'><?= $sepSubjects->subjIsStatus?'<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?></td>
                                            <td>
                                                @if(!$sepSubjects->subjIsStatus)
                                                <i color="grey"  data-feather='edit' data-toggle="tooltip" title='Cannot Edit In-Active Record.' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editSubject({{$sepSubjects->subjId}}, {{$i}})'></i>
                                                @else
                                                <i color="navy"  data-feather='edit' data-toggle="tooltip" title='Edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editSubject({{$sepSubjects->subjId}}, {{$i}})'></i>
                                                @endif
                                                <i color="red" data-toggle="tooltip" title='Change Status' onclick ="return changeStatus('subjects', '<?= $sepSubjects->subjId  ?>', 'row-<?= $i ?>')" data-feather='power' data-toggle="tooltip" title="Change Status" class='menu-icon-form-td-i cursor-pointer'></i>
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