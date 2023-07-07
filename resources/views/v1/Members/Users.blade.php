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
                                    <span class='text-update-add-edit'>Add User</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='addUpdateUsers();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                                    <div class="mi-form-area-container">
                                    <div class="mi-grid-4-layout">       
                                    <div class=''>
                                        <label for='validationCustom04' class='form-label required'>User Type</label>
                                        <select class='form-select spl' id='user-type' onchange = 'return changeUserType()'>
                                            <option selected disabled value=''>Choose...</option>
                                            @if($usertype == 1)
                                            <option value='2'>Admin</option>
                                            @elseif($usertype == 2)
                                            <option value='3'>Staff</option>
                                            @endif
                                        </select>
                                    </div>                                    
                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>First name</label>
                                        <input type='text' class='form-control spl input-only' id='firstname' value='' />
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label required'>Last name</label>
                                        <input type='text' class='form-control spl input-only' id='lastname' value='' />
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom03' class='form-label required'>Primary Mobile</label>
                                        <input type='text' class='form-control spl numbers-only input-only' id='p-mobile' minlength="10" maxlength="10" />
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom03' class='form-label'>Secondary Mobile</label>
                                        <input type='text' class='form-control spl numbers-only input-only' id='s-mobile' minlength="10" maxlength="10"/>
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom03' class='form-label required'>Email</label>
                                        <input type='text' class='form-control spl input-only' id='email'/>
                                    </div>
            
                                    <div class=''>
                                        <label for='validationCustom05' class='form-label'>Password</label>
                                        <input type='password' autocomplete="off" class='form-control spl input-only' id='password'/>
                                    </div>
                                </div>
                                    <div class='col-md-12 prvl-menu d-none'>

                                        <div class='privileges-table'>
                                            <div class='row'>
                                                <div class='col-12'>
                                                    <div class='table-responsive'>
                                                        <table class='table table-bordered privileges'>
                                                            <thead>
                                                                <tr>
                                                                    <th>Menu</th>
                                                                    <th>Add/Edit</th>
                                                                    <th>View</th>
                                                                    <th>Full Access</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>

                                                                <?php
                                                            
                                                            if(count($menu) > 0){

                                                                foreach($menu as $sepMenu){

                                                                    if($sepMenu->ismain == 1 && $sepMenu->isstatus == 1){

                                                                        if($sepMenu->isdirlink == 1){                                                               
                                                                ?>
                                                                        <td class='text-center spl'>
                                                                        <?=ucfirst($sepMenu->menuname) ?></td>
                                                                        <td><input class='form-check-input form-checkbox-input' type='checkbox'
                                                                            name='menu-add' id='inline-add-<?=$sepMenu->id ?>'
                                                                            value='' />
                                                                    </td>
                                                                    <td for=''><input class='form-check-input form-checkbox-input' type='checkbox'
                                                                            name='menu-view' id='inline-view-<?=$sepMenu->id ?>'
                                                                            value='' />
                                                                    </td>
                                                                    <td><input class='form-check-input form-checkbox-input' type='checkbox'
                                                                            name='menu-full' id='inline-full-<?=$sepMenu->id ?>'
                                                                            value='' />
                                                                    </td>
                                                                <?php        
                                                                        }else{
                                                                ?>
                                                                <tr>
                                                                    <td colspan='4' class='text-center spl'>
                                                                        <?=ucfirst($sepMenu->menuname) ?></td>
                                                                </tr>
                                                                <?php
                                                                        }
                                                                    }

                                                                    foreach($menu as $sepNMenu){

                                                                        if($sepMenu->id == $sepNMenu->mainid && $sepNMenu->ismain == 0 && $sepNMenu->isstatus == 1){
                                                                    ?>

                                                                <tr id='row-<?=$sepNMenu->id?>'>
                                                                    <td><?=ucfirst($sepNMenu->menuname) ?></td>
                                                                    <td onchange = 'return updateAddEditPrivileges(this)' ><input class='form-check-input' type='checkbox'
                                                                            name='menu_add' id='inline-add-<?=$sepMenu->id ?>'
                                                                            value='<?= $sepNMenu->id.'-'.$sepNMenu->mainid.'-false-add' ?>' />
                                                                    </td>
                                                                    <td onchange = 'return updateAddEditPrivileges(this)' ><input class='form-check-input' type='checkbox'
                                                                            name='menu_view' id='inline-view-<?=$sepMenu->id ?>'
                                                                            value='<?= $sepNMenu->id.'-'.$sepNMenu->mainid.'-false-edit' ?>' />
                                                                    </td>
                                                                    <td onchange = 'return updatePrivileges(this)'><input class='form-check-input' type='checkbox'
                                                                            name='menu_full' id='inline-full-<?=$sepMenu->id ?>'
                                                                            value='<?= $sepNMenu->id.'-'.$sepNMenu->mainid.'-false-view' ?>' />
                                                                    </td>
                                                                </tr>

                                                                <?php
                                                                        }
                                                                    }
                                                                }
                                                            }

                                                            ?>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                
                                    <div class='mi-btn-holder'>
                                            <button class='mi-btn mi-btn-primary button-add-edit' type='submit'>Add</button>
                                            <button class='mi-btn mi-btn-secondary' type='button'>Cancel</button>
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
                                        <th>Phone</th>
                                        <th>Username</th>
                                        <th>User Type</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($users) > 0){

                                        $usertypes = [1 => 'Super-Admin', 2 => 'Admin', 3 => 'Staff'];

                                        foreach($users as $sepUsers){
       
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepUsers->firstname.' '.$sepUsers->lastname ?></td>
                                            <td><?= $sepUsers->primary_mobile ?></td>
                                            <td><?= $sepUsers->username ?></td>
                                            <td class='status'><?= $usertypes[$sepUsers->usertype] ?></td>
                                            <td class='status'><?= $sepUsers->userstatus?'<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?></td>
                                            <td>
                                                {{-- <i data-bs-toggle="popover" data-feather='sunrise' color="gold" class='menu-icon-form-td-i cursor-pointer'></i> --}}
                                                <i color="blue" data-feather='edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editUser({{$sepUsers->userid}},{{$i}})'></i>
                                                <i color="red" onclick ="return changeStatus('users', '<?= $sepUsers->userid ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
                                                <i data-bs-toggle="modal" onclick="generateUserModal({{$sepUsers->userid}})" data-bs-target="#profileModal" data-feather='eye' color="green" class='menu-icon-form-td-i cursor-pointer'></i>
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
          <h4 class="modal-title">User Name</h4>
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
        </div>
    </div>
</div>

@include('v1.Includes.Footer')