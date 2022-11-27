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
                                    <span class='text-update-add-edit'>Add Syllabus</span></button>
                            </div>

                            <div class='form-add-edit'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateSyllabus();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                                <div class="mi-form-area-container">
                                    <div class='col-md-3'>
                                        <label for='validationCustom04' class='form-label'>Lessons</label>
                                        <select class='form-select spl' id='user-type' onchange = 'return changeUserType()'>
                                            <option selected disabled value=''>Choose...</option>
                                            @if($lessons)
                                            @foreach($lessons as $lesson)
                                            <option selected disabled value='{{$lesson->lnId}}'>{{$lesson->lnLessonName}}</option>
                                            @endforeach
                                            @endif
                                        </select>
                                       
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom01' class='form-label'>Topics</label>
                                        <input type='text' class='form-control spl input-only' id='firstname' value='' />
                                    </div>
                                    
                                    <div class='col-md-12'>
                                        <label for='validationCustom02' class='form-label'>Description</label>
                                        <textarea type='text' class='form-control spl input-only' id='lastname' value=''></textarea>

                                    </div>
                                    <div class='col-md-6'>
                                        <label for='validationCustom03' class='form-label'>Video Links</label>
                                        <select class='form-select spl' id='user-type' onchange = 'return changeUserType()'>
                                            <option selected disabled value=''>Choose...</option>
                                        </select>
                                        
                                    </div>

                                    <div class='col-md-6'>
                                        <label for='validationCustom03' class='form-label'>Other Links</label>
                                        <textarea type='text' class='form-control spl input-only' id='lastname' value=''></textarea>
                                       
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom03' class='form-label'>Online Tests</label>
                                        <select class='form-select spl' id='user-type' onchange = 'return changeUserType()'>
                                            <option selected disabled value=''>Choose...</option>
                                        </select>
                                        
                                    </div>

                                    

                                    <div class='col-md-3'>
                                        <label for='validationCustom03' class='form-label'>Upload Images, Documents (Max size 10MB)</label>
                                        <div class='input-group mb-3'>
                                            <input type='file' class='form-control input-only' id='file' name='file[]' multiple='true' />
                                        </div>

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

            <div class='row'>
                <div class='col-12'>
                    <div class='mi-card'>
                        <div class='card-body'>
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>Sl No</th>
                                        <th>Syllabus Name</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($syllabus) > 0){

                                        foreach($syllabus as $sepSyllabus){

                                            $mbl = ''; $fnlAddr = ''; $addrV = [];

                                            if($sepSyllabus->contactdetails != ''){
                                                $explMbl = explode(',',$sepSyllabus->contactdetails);
                                                $explMblV = explode('/',$explMbl[0]);
                                                $preMbl = explode('=',$explMblV[0]);
                                                $mbl = $preMbl[1];
                                            }

                                            if($sepSyllabus->address_details != ''){
                                               
                                                if(strpos($sepSyllabus->address_details, ',') !== false){

                                                    $addr = explode(',',$sepSyllabus->address_details);
                                                    $addrV = explode('/',$addr[0]);
                                                }else{
                                                    
                                                    $addrV = explode('/',$sepSyllabus->address_details);
                                                }

                                                $l = 0;

                                                foreach($addrV as $sepAddrV){

                                                    if($l < 6){
                                                        $preAddr = explode('=', $sepAddrV);
                                                        $fnlAddr .= $preAddr[1] != 'null' && $preAddr[1] != 'ACTIVE'? $preAddr[1].' ' : '';
                                                    }
                                                    $l++;
                                                } 
                                            }          
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepSyllabus->syName ?></td>
                                            <td class='status'><?= $sepSyllabus->syIsStatus == 1 ?'Active':'Inactive' ?></td>
                                            <td data-json='<?= json_encode($sepSyllabus) ?>'>
                                                <i data-feather='edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editUser(this)'></i>
                                                <i onclick ="return changeStatus('users', '<?= $sepSyllabus->id ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
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