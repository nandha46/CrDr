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

                            <div class='mi-card-inner-header'>
                                <button class='btn btn-add-edit'>
                                    <i data-feather='plus' class='menu-icon-form enable-plus'></i>
                                    <i data-feather='minus' class='menu-icon-form d-none enable-minus'></i>
                                    <span class='text-update-add-edit'>Add Languages</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateLanguages();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                                    <div class='col-md-3'>
                                        <label for='validationCustom04' class='form-label'>User Type</label>
                                        <select class='form-select spl' id='user-type' onchange = 'return changeUserType()'>
                                            <option selected disabled value=''>Choose...</option>
                                            <option value='2'>Driver</option>
                                            <option value='3'>Admin</option>
                                            <option value='4'>Staff</option>
                                            <option value='5'>Vehicle Owner</option>
                                            <option value='6'>Others</option>
                                        </select>
                                       
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom01' class='form-label'>First name</label>
                                        <input type='text' class='form-control spl input-only' id='firstname' value='' />
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom02' class='form-label'>Middle name</label>
                                        <input type='text' class='form-control spl input-only' id='middle' value='' />
                                       
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom02' class='form-label'>Last name</label>
                                        <input type='text' class='form-control spl input-only' id='lastname' value='' />
                                       
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom03' class='form-label'>Primary Mobile</label>
                                        <input type='text' class='form-control spl numbers-only input-only' id='p-mobile' />
                                        
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom03' class='form-label'>Secondary Mobile</label>
                                        <input type='text' class='form-control spl numbers-only input-only' id='s-mobile' />
                                       
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom03' class='form-label'>Email</label>
                                        <input type='text' class='form-control spl input-only' id='email' />
                                        
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom03' class='form-label'>Flat/Door No</label>
                                        <input type='text' class='form-control spl input-only' id='flat-no' />
                                        
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom05' class='form-label'>Street</label>
                                        <input type='text' class='form-control spl input-only' id='street' />
                                        
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom05' class='form-label'>Landmark</label>
                                        <input type='text' class='form-control spl input-only' id='landmark' />
                                        
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom05' class='form-label'>City</label>
                                        <input type='text' class='form-control spl input-only' id='city' />
                                        
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom05' class='form-label'>State</label>
                                        <select class='form-select spl' id='state'>
                                            <option selected disabled value=''>Choose...</option>
                                           
                                        </select>
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom05' class='form-label'>Pincode</label>
                                        <input type='text' class='form-control spl input-only' id='pincode' />
                                        
                                    </div>
                                    <div class='col-md-3'>
                                        <div class='display-flex mb-3 margin-top-18'>
                                            <label class='col-md-2 my-4 form-label'>Gender:</label>
                                            <div class='col-md-10'>
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
                                                        name='inlineRadioOptions' name='gender' id='others' value='3' />
                                                    <label class='form-check-label' for='others'>Others</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom05' class='form-label'>Date of Birth</label>
                                        <input type='text' class='form-control spl input-only' id='date-of-birth' />
                                        
                                    </div>

                                    <div class='col-md-1'>
                                        <label for='validationCustom05' class='form-label'>Year of exp</label>
                                        <input type='text' class='form-control spl decimal-numbers input-only' id='yr-of-exp' />
                                        
                                    </div>

                                    <div class='col-md-2'>
                                        <label for='validationCustom04' class='form-label'>Proof Type</label>
                                        <select class='form-select spl' id='proof-type'>
                                            <option selected disabled value=''>Choose..</option>
                                            <option value='1'>License</option>
                                            <option value='2'>Aadhar</option>
                                            <option value='3'>PAN</option>
                                            <option value='4'>Photo</option>
                                        </select>
                                       
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom05' class='form-label'>Proof No</label>
                                        <input type='text' class='form-control spl input-only' id='proof-no' />
                                        
                                    </div>

                                    <div class='col-md-2'>
                                        <label for='validationCustom05' class='form-label'>Expiry Date</label>
                                        <input type='text' class='form-control spl input-only' id='expiry-date' />
                                        
                                    </div>

                                    <div class='col-md-4'>
                                        <label for='validationCustom05' class='form-label'>Password</label>
                                        <input type='text' class='form-control spl input-only' id='password' />
                                        
                                    </div>

                                    <div class='col-md-3'>
                                        <div class='input-group mb-3'>
                                            <input type='file' class='form-control input-only' id='file' name='file[]' multiple='true' />
                                            {{-- <label class='input-group-text' for='file'>Upload</label> --}}
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
                        <div class='mi-card-body card-pads'>
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>Sl No</th>
                                        <th>Name - Username</th>
                                        <th>Mobile</th>
                                        <th>User Type</th>
                                        <th>Email</th>
                                        <th>Address</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($languages) > 0){

                                        foreach($languages as $sepLanguages){

                                            $mbl = ''; $fnlAddr = ''; $addrV = [];

                                            if($sepLanguages->contactdetails != ''){
                                                $explMbl = explode(',',$sepLanguages->contactdetails);
                                                $explMblV = explode('/',$explMbl[0]);
                                                $preMbl = explode('=',$explMblV[0]);
                                                $mbl = $preMbl[1];
                                            }

                                            if($sepLanguages->address_details != ''){
                                               
                                                if(strpos($sepLanguages->address_details, ',') !== false){

                                                    $addr = explode(',',$sepLanguages->address_details);
                                                    $addrV = explode('/',$addr[0]);
                                                }else{
                                                    
                                                    $addrV = explode('/',$sepLanguages->address_details);
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
                                            <td><?= $sepLanguages->firstname.' - '.$sepLanguages->username ?></td>
                                            <td><?= $mbl ?></td>
                                            <td class='status'><?= ucfirst(strtolower($sepLanguages->usertyperesult)) ?></td>
                                            <td><?= $sepLanguages->email !== 'null' && $sepLanguages->email !== '' ? ucfirst($sepLanguages->email) : ''?></td>
                                            <td><?= $fnlAddr ?></td>
                                            <td class='status'><?= $sepLanguages->userstatus ?></td>
                                            <td data-json='<?= json_encode($sepLanguages) ?>'><i data-feather='edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editUser(this)'></i><i onclick ="return changeStatus('users', '<?= $sepLanguages->id ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i></td>
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