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
                                    <span class='text-update-add-edit'>Add Organizations</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateOrganizations();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>

                                    <div class='col-md-3'>
                                        <label for='validationCustom01' class='form-label'>Name</label>
                                        <input type='text' class='form-control spl input-only' id='firstname' value='' />
                                    </div>
                                    <div class='col-md-2'>
                                                    <label for='validationCustom02' class='form-label'>Medium</label>
                                                    <div class='display-flex mb-3 margin-top-18'>
                                                        
                                                        <div class='form-check form-check-inline'>
                                                                <input class='form-check-input' type='radio' name='gender' id='male' value='1' checked='checked'/>
                                                                <label class='form-check-label' for='male'>Tamil</label>
                                                            </div>
                                                            <div class='form-check form-check-inline'>
                                                                <input class='form-check-input' type='radio' name='gender' id='female' value='2' />
                                                                <label class='form-check-label' for='female'>English</label>
                                                            </div>
                                                            <div class='form-check form-check-inline'>
                                                                <input class='form-check-input' type='radio' name='gender' id='female' value='2' />
                                                                <label class='form-check-label' for='female'>Others</label>
                                                            </div>
                                                    </div>
                                            </div>

                                    <div class='col-md-12'>
                                        <label for='validationCustom01' class='form-label'>Address</label>
                                        <textarea type='text' class='form-control spl input-only' id='firstname' value=''></textarea>
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom02' class='form-label'>Contact Details 1</label>
                                        <input type='text' class='form-control spl input-only' id='middle' value='' />
                                       
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom02' class='form-label'>Contact Details 2</label>
                                        <input type='text' class='form-control spl input-only' id='lastname' value='' />
                                       
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom02' class='form-label'>Contact Details 3</label>
                                        <input type='text' class='form-control spl input-only' id='lastname' value='' />
                                       
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom03' class='form-label'>Head Master/Principal</label>
                                        <input type='text' class='form-control spl numbers-only input-only' id='p-mobile' />
                                        
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom03' class='form-label'>Correspondent</label>
                                        <input type='text' class='form-control spl numbers-only input-only' id='p-mobile' />
                                        
                                    </div>

                                    <div class='col-md-3'>
                                        <label for='validationCustom03' class='form-label'>Email</label>
                                        <input type='text' class='form-control spl input-only' id='email' />
                                        
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
                                        <label for='validationCustom05' class='form-label'>Started At</label>
                                        <input type='text' class='form-control spl input-only' id='date-of-birth' />
                                        
                                    </div>
                                    

                                    <div class='col-md-3'>
                                    <label for='validationCustom05' class='form-label'>Upload Images, Documents (Max size 10MB)</label>
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

                                    if(count($organizations) > 0){

                                        foreach($organizations as $sepOrganizations){

                                            $mbl = ''; $fnlAddr = ''; $addrV = [];

                                            if($sepOrganizations->contactdetails != ''){
                                                $explMbl = explode(',',$sepOrganizations->contactdetails);
                                                $explMblV = explode('/',$explMbl[0]);
                                                $preMbl = explode('=',$explMblV[0]);
                                                $mbl = $preMbl[1];
                                            }

                                            if($sepOrganizations->address_details != ''){
                                               
                                                if(strpos($sepOrganizations->address_details, ',') !== false){

                                                    $addr = explode(',',$sepOrganizations->address_details);
                                                    $addrV = explode('/',$addr[0]);
                                                }else{
                                                    
                                                    $addrV = explode('/',$sepOrganizations->address_details);
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
                                            <td><?= $sepOrganizations->firstname.' - '.$sepOrganizations->username ?></td>
                                            <td><?= $mbl ?></td>
                                            <td class='status'><?= ucfirst(strtolower($sepOrganizations->usertyperesult)) ?></td>
                                            <td><?= $sepOrganizations->email !== 'null' && $sepOrganizations->email !== '' ? ucfirst($sepOrganizations->email) : ''?></td>
                                            <td><?= $fnlAddr ?></td>
                                            <td class='status'><?= $sepOrganizations->userstatus ?></td>
                                            <td data-json='<?= json_encode($sepOrganizations) ?>'><i data-feather='edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editUser(this)'></i><i onclick ="return changeStatus('users', '<?= $sepOrganizations->id ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i></td>
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