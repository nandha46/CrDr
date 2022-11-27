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
                                    <span class='text-update-add-edit'>Add Teacher</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateStaffs();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''> 
                                    <input type='hidden' class='input-only current-row' value=''>
                                <div class="mi-form-area-container">
                                    <div class='details-card'>
                                        <h3>Basic Details</h3>
                                        <div class='mi-grid-4-layout'>
                                            <div class=''>
                                                <label for='validationCustom01' class='form-label required'>First name</label>
                                                <input type='text' class='form-control spl input-only' maxlength='20' id='firstname' value='' placeholder="Your Name" />
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
                                                <input type='text' class='form-control spl input-only date-input' id='date-of-birth' " />
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
                                                <input type='text' class='form-control spl input-only' id='fathername' maxlength="20"/>
                                                
                                            </div>

                                            <div class='' id="mother-div">
                                                <label for='validationCustom05' class='form-label required'>Mother Name</label>
                                                <input type='text' class='form-control spl input-only' id='mothername' maxlength="20" />
                                                
                                            </div>

                                            <div id="guardian-div">
                                                <label for='validationCustom05' class='form-label'>Guardian Name</label>
                                                <input type='text' class='form-control spl input-only' id='guardianname' maxlength="20" />              
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom03' class='form-label required'>Primary Mobile</label>
                                                <input type='text' class='form-control spl numbers-only input-only' id='p-mobile' minlength="10"  maxlength="10"/>
                                                
                                            </div>

                                            <div class=''>
                                                <label for='validationCustom03' class='form-label'>Secondary Mobile</label>
                                                <input type='text' class='form-control spl numbers-only input-only' minlength="10" id='s-mobile' maxlength="10" />
                                            
                                            </div>

                                            <div class=''>
                                                <label for='validationCustom03' class='form-label required'>Email</label>
                                                <input type='text' class='form-control spl input-only' id='email' placeholder="example@mail.com"/>
                                                
                                            </div>

                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Address</label>
                                                <input type='text' class='form-control spl input-only' id='address'  maxlength="60"/>
                                                
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>City</label>
                                                <input type='text' class='form-control spl input-only' id='city' />
                                                
                                            </div>

                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Pincode</label>
                                                <input type='text' class='form-control spl numbers-only' id='pincode' minlength="6" maxlength="6"/>
                                                
                                            </div>

                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>State</label>
                                                <select class='form-select spl state-details' id='state'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    <?php

                                                        foreach($states as $key => $sepStates){
                                                    ?>
                                                            <option value = '<?= $sepStates->id ?>'><?= $sepStates->statename?></option>
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
                                                <label for='validationCustom05' class='form-label required'>Years of exp</label>
                                                <input type='text' class='form-control spl decimal-numbers input-only' id='yr-of-exp' maxlength="4"/>
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Designation</label>
                                                <select class='form-select spl' id='designation'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    <option value='Head Master'>Head Master</option>
                                                    <option value='Teacher'>Teacher</option>
                                                    <option value='Physical Director'>Physical Director</option>
                                                    <option value='Administrative Officer'>Administrative Officer</option>
                                                    <option value='PG Asst'>PG Asst</option>
                                                    <option value='Jr Asst'>Jr Asst</option>
                                                    <option value='Trainee'>Trainee</option>
                                                </select>
                                            </div>

                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Assinged Subjects</label><br>
                                                <select data-placeholder="Choose..." class='chosen-select' id='assigned-subjects' multiple>
                                                    <?php

                                                        foreach($subject as $key => $sepSubjects){
                                                    ?>
                                                            <option value = '<?= $sepSubjects->subjId ?>'><?= $sepSubjects->subjName?></option>
                                                    <?php
                                                        }
                                                    ?>
                                                </select>
                                            </div>

                                            <div class=''>
                                                <label for='validationCustom05' class='form-label required'>Assinged Classes</label><br>
                                                <select data-placeholder="Choose..." class='chosen-select' id='assigned-class' multiple>
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
                                                <label for='validationCustom05' class='form-label required'>Reporting To</label>
                                                <select class='form-select spl' id='reporting-to'>
                                                    <option selected disabled value=''>Choose...</option>
                                                    <option value='Correspondent'>Correspondent</option>
                                                    <option value='Head Master'>Head Master</option>
                                                    <option value='Physical Director'>Physical Director</option>
                                                    <option value='Administrative Officer'>Administrative Officer</option>
                                                </select>
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label'>Password</label>
                                                <input type='password' autocomplete="off" class='form-control spl input-only' id='password' />
                                                
                                            </div>

                                            <div class=''>
                                                <label for='validationCustom05' class='form-label'>Teacher's Photo/ID card (Max size 10MB)</label>
                                                <div class='input-group mb-3'>
                                                    <input type='file' class='form-control input-only' id='file' name='file[]' />
                                                </div>

                                            </div>    
                                        </div>
                                    </div>

                                    <div class='details-card add-degree'>
                                        <div class="d-flex">
                                            <h3>More Education Details</h3>
                                            <button class="btn degree-button" onclick="addDegreeInputs(); return false;">
                                                <i data-feather="plus-circle" color="green"></i>
                                                <span>Add More Degree</span>
                                            </button>
                                            <button class="btn degree-button" onclick="deleteDegreeInputs(); return false;">
                                                <i data-feather="x-circle" color="red"></i>
                                                <span>Remove Degree</span>
                                            </button>
                                        </div>
                                        <div class='mi-grid-4-layout degrees' id="main">
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label'>Degree 1</label>
                                                <input type='text' class='form-control spl input-only degree' id='degree' />
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom03' class='form-label'>Graduation Year</label>
                                                <input type='text' class='form-control spl years-only graduationYear' id="graduationYear" minlength="4" maxlength="4"/>
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label'>Class</label>
                                                <input type='text' class='form-control spl input-only degree-class' id='class' />
                                            </div>
                                            <div class=''>
                                                <label for='validationCustom05' class='form-label'>Percentage</label>
                                                <input type='text' class='form-control spl decimal-numbers percentage' id='percentage' maxlength="5" />
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
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Name</th>
                                        <th>Gender</th>
                                        <th>Date of Birth</th>
                                        <th>Designation</th>
                                        <th>Qualification</th>
                                        <th>Email address</th>
                                        <th>Contact Details</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($teachers) > 0){

                                        foreach($teachers as $sepTeachers){
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepTeachers->fullName ?></td>
                                            <td><?= $sepTeachers->gender ?></td>
                                            <td><?= $sepTeachers->date_of_birth ?></td>
                                            <td><?= $sepTeachers->designation ?></td>
                                            <td><?= $sepTeachers->qualifications ?></td>
                                            <td><?= $sepTeachers->emlOfficialAddress ?></td>
                                            <td><?= $sepTeachers->condOfficialNumber ?></td>
                                            <td class='status'><?= $sepTeachers->stffIsStatus==0?'<span class="badge bg-danger text-bg-success">In-Active</span>':'<span class="badge bg-success text-bg-success">Active</span>' ?></td>
                                            <td>
                                                {{-- <i data-bs-toggle="staff_popover" data-feather='sunrise' color="gold" class='menu-icon-form-td-i cursor-pointer'></i> --}}
                                                <i data-feather='edit' color="blue" class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>' onclick='editTeacher({{$sepTeachers->stffId}}, {{$i}})'></i>
                                                <i onclick ="return changeStatus('teachers', '<?= $sepTeachers->stffId ?>', 'row-<?= $i ?>')" data-feather='power' color="red" class='menu-icon-form-td-i cursor-pointer'></i>
                                                <i data-bs-toggle="modal" onclick="generateTeacherModal({{$sepTeachers->stffId}})" data-bs-target="#profileModal" data-feather='eye' color="green" class='menu-icon-form-td-i cursor-pointer'></i>
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
            <div class="modal" id="profileModal">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title">Staff Name</h4>
                    </div>
                    <div class="card" style="margin: 0%">
                        <img class="card-img-top" src="{{asset('./images/img_avatar1.png')}}" alt="Staff Image" id="staff_id" style="width:100%">
                        <div class="card-body" id="modal-footer">
                        </div>
                      </div>  
                  </div>
                </div>
              </div>
        </div>
    </div>
</div>

@include('v1.Includes.Footer')