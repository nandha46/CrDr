@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
    @include('v1.Includes.TopMenu')

    <div class='page-content'>
        <div class='container-fluid'>

            @include('v1.Includes.PageTitleBox')

            <!-- First Review Start Here -->
            <div class='row justify-content-center'>
                <div class='col-lg-12'>

                    <div class='mi-card'>
                        <div class='mi-card-body'>

                            <div class='form-add-edit '>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='addUpdateUsers();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>

                                    <div class='configurations-inputs'>
                                        <div class='col-md-3'>
                                            <label for='validationCustom04' class='form-label required'>Organizations</label>
                                            <select class='form-select spl' id='user-type' onchange = 'return changeUserType()'>
                                                <option selected disabled value=''>Choose...</option>
                                                
                                            </select>
                                        
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
                                                            
                                                            if(count($configurations) > 0){

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

        </div>
    </div>
</div>

@include('v1.Includes.Footer')