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
                                    <span class='text-update-add-edit'>Add Student</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateStudents();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                                
                                    <div class="mi-form-area-container">
                                    <div class='details-card'>
                                        <h3>Basic Details</h3>
                                        <div class='mi-grid-4-layout'>
                                            <div class=''>
                                                <label for='validationCustom01' class='form-label required'>First name</label>
                                                <input type='text' class='form-control spl input-only' maxlength='20' id='firstname' value='' onfocusout="checkDupliacte(this)"/>
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom02' class='form-label required'>Last name</label>
                                                <input type='text' class='form-control spl input-only' maxlength='20' id='lastname' value='' />
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom02' class='form-label required'>Gender</label>
                                                <div class='display-flex mb-3 margin-top-18'>
                                                    <div class='form-check form-check-inline'>
                                                            <input class='form-check-input' type='radio' name='gender' id='male' value='1' checked='checked'/>
                                                            <label class='form-check-label' for='male'>Male</label>
                                                        </div>
                                                        <div class='form-check form-check-inline'>
                                                            <input class='form-check-input' type='radio' name='gender' id='female' value='2' />
                                                            <label class='form-check-label' for='female'>Female</label>
                                                        </div>
                                                        <div class='form-check form-check-inline'>
                                                            <input class='form-check-input' type='radio'
                                                                 name='gender' id='others' value='3' />
                                                            <label class='form-check-label' for='others'>Others</label>
                                                        </div>
                                                </div>
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Date of Birth</label>
                                                <input type='text' class='form-control spl input-only date-input' id='date-of-birth' />
                                            </div>
                                        </div>
                                    </div>
                                    <div class='details-card'>
                                        <h3>Reference Details</h3>
                                        <div class='mi-grid-4-layout'>
                                            <div class=''>
                                                    <label for='validationCustom02' class='form-label'>Parents/Guardian</label>
                                                    <div class='display-flex mb-3 margin-top-18'>                                                        
                                                        <div class='form-check form-check-inline'>
                                                                <input class='form-check-input' type='radio' name='parent_guardian' id='parents' value='1' checked='checked'/>
                                                                <label class='form-check-label' for='parents'>Parents</label>
                                                            </div>
                                                            <div class='form-check form-check-inline'>
                                                                <input class='form-check-input' type='radio' name='parent_guardian' id='guardian' value='2' />
                                                                <label class='form-check-label' for='guardian'>Guardian</label>
                                                            </div>
                                                    </div>
                                            </div>
                                            <div class='' id="father-div">
                                                <label for='validationCustom05' class='form-label required'>Father Name</label>
                                                <input type='text' class='form-control spl input-only' maxlength='40' id='fathername' />
                                            </div>
                                            <div class='' id="mother-div">
                                                <label for='validationCustom05' class='form-label required'>Mother Name</label>
                                                <input type='text' class='form-control spl input-only' maxlength='40' id='mothername' />
                                            </div>
                                            <div class='' id="guardian-div">
                                                <label for='validationCustom05' class='form-label'>Guardian Name</label>
                                                <input type='text' class='form-control spl input-only' id='guardianname' maxlength='40' />              
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom03' class='form-label required'>Primary Mobile</label>
                                                <input type='text' class='form-control spl numbers-only input-only' id='p-mobile' minlength="10" maxlength="10" />
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom03' class='form-label'>Secondary Mobile</label>
                                                <input type='text' class='form-control spl numbers-only input-only' minlength="10" maxlength="10" id='s-mobile' />
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom03' class='form-label'>Email</label>
                                                <input type='text' class='form-control spl input-only' id='email' placeholder="example@mail.com"/>
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Address</label>
                                                <input type='textarea' class='form-control spl input-only' id='address' maxlength="100" />
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>City</label>
                                                <input type='text' class='form-control spl input-only' id='city' maxlength="25" />
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Pincode</label>
                                                <input type='text' class='form-control spl numbers-only input-only' id='pincode' minlength="6" maxlength="6" />
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>State</label>
                                                <select class='form-select spl state-details' id='state'>
                                                    <?php

                                                        foreach($states as $key => $sepStates){
                                                    ?>
                                                    @if($sepStates->id == 24)
                                                    <option value = '<?= $sepStates->id ?>' selected="selected"><?= $sepStates->statename?></option>
                                                    @else
                                                    <option value = '<?= $sepStates->id ?>'><?= $sepStates->statename?></option>
                                                    @endif
                                                    <?php
                                                        }
                                                    ?>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class='details-card'>
                                        <h3>Education Details</h3>
                                        <div class='mi-grid-4-layout'>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Organization</label>
                                                <select class='form-select spl' id='organization'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    <?php

                                                        foreach($organization as $key => $sepOrganization){
                                                    ?>
                                                            <option value = '<?= $sepOrganization->olId ?>'><?= $sepOrganization->olName?></option>
                                                    <?php
                                                        }
                                                    ?>
                                                </select>
                                            </div>
                                           
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Standard</label>
                                                <select class='form-select spl' id='standard'>
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
                                                <label for='validationCustom05' class='form-label required'>Section</label>
                                                <select class='form-select spl stu-section' id='section'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    <?php

                                                        foreach($section as $key => $sepSection){
                                                    ?>
                                                        @if($sepSection->secnId == 1)
                                                            <option value = '<?= $sepSection->secnId ?>' selected><?= $sepSection->secnSecName?></option>
                                                        @else
                                                            <option value = '<?= $sepSection->secnId ?>'><?= $sepSection->secnSecName?></option>
                                                        @endif
                                                    <?php
                                                        }
                                                    ?>
                                                </select>
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Academic Year</label>
                                                <select class='form-select spl' id='academicYear'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    @for ($year = 2022; $year < date('Y')+1; $year++)
                                                    <option value = '{{$year.'-'.$year+1}}'>{{$year.'-'.$year+1}}</option>
                                                    @endfor        
                                                </select>
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Password</label>
                                                <input type='password' autocomplete="off" class='form-control spl input-only' id='password' />
                                                
                                            </div>

                                            <div class=''>
                                                <label for='validationCustom05' class='form-label'>Student's Photo/ID card (Max size 10MB)</label>
                                                <div class='input-group mb-3'>
                                                    <input type='file' class='form-control input-only' id='file' name='file[]' />
                                                </div>

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


            <!-- Second Review Starts Here -->

            <div class='row mi-table-space'>
                <div class='col-12'>
                    <div class='mi-card'>
                        <div class='mi-card-body card-pads'>
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap nadimuthu' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Name</th>
                                        <th>Education</th>
                                        <th>Gender</th>
                                        <th>Student ID</th>
                                        <th>Date of Birth</th>
                                        <th>Official Mobile</th>
                                        <th>User Name</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($students) > 0){

                                        foreach($students as $sepStudents){

                                            $gendername= '';
                                            if($sepStudents->stuGender == 1){
                                                $gendername = 'Male';
                                            } elseif ($sepStudents->stuGender == 2){
                                                $gendername = 'Female';
                                            } else {
                                                $gendername = 'Other';
                                            }

                                            if($sepStudents->stuclId == 13 || $sepStudents->stuclId == 14 || $sepStudents->stuclId == 15) {
                                                $class = $sepStudents->clssName;
                                            } else {
                                                $class = $sepStudents->clssName.'-'.$sepStudents->secnSecName;
                                            }
                                            
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepStudents->stuFirstName.' '.$sepStudents->stuLastName ?></td>
                                            <td><?= $class ?></td>
                                            <td><?= $gendername?></td>
                                            <td><?= $sepStudents->stuUserId?></td>
                                            <td><?= $sepStudents->date_of_birth?></td>
                                            <td><?= $sepStudents->condOfficialNumber?></td>
                                            <td><?= $sepStudents->username ?></td>
                                            <td class="status">
                                                <?= $sepStudents->stuIsStatus?'<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?> 
                                            </td>
                                            <td>
                                                @if(!$sepStudents->stuIsStatus)
                                                <i data-feather='edit' data-toggle="tooltip" title='Cannot Edit In-Active Record.' color="grey"  class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>' title='edit' onclick='editStudent({{$sepStudents->stuId}}, {{$i}})'></i>
                                                @else
                                                <i data-feather='edit' data-toggle="tooltip" title='Edit' color="blue"  class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>' title='edit' onclick='editStudent({{$sepStudents->stuId}}, {{$i}})'></i>
                                                @endif
                                                <i data-feather='power' data-toggle="tooltip" title="Change Status" onclick ="return changeStatus('students', '<?= $sepStudents->stuId ?>', 'row-<?= $i ?>')" color="red" class='menu-icon-form-td-i cursor-pointer'></i>
                                                {{-- <i data-bs-toggle="modal" data-toggle="tooltip" title="View Additional Details" onclick="generateStudentModal({{$sepStudents->stuId}})" data-bs-target="#profileModal" data-feather='eye' color="green" class='menu-icon-form-td-i cursor-pointer'></i> --}}
                                                <i data-toggle="tooltip" title="View Additional Details" onclick="generateStudentModal({{$sepStudents->stuId}})" data-feather='eye' color="green" class='menu-icon-form-td-i cursor-pointer'></i>
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
        {{-- Modal Start --}}
            <div class="modal" id="profileModal">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title">Student Name</h4>
                    </div>
                    <div class="card" style="margin: 0%">
                        <img class="card-img-top" src="{{asset('./images/img_avatar1.png')}}" alt="Student Image" id="student_id" style="width:100%">
                        <div class="card-body" id="modal-footer">
                        </div>
                      </div>  
                  </div>
                </div>
              </div>
        {{-- Modal End --}}
        @include('v1.Modals.StudentsList')
        </div>
    </div>
</div>

@include('v1.Includes.Footer')