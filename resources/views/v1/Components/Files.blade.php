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
                                    <span class='text-update-add-edit'>Add Files</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateFiles();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                                <div class='mi-form-area-container'>
                                    <div class='mi-grid-3-layout'>
                                        <div class=''>
                                            <label for='validationCustom04' class='form-label'>Upload For</label>
                                            <select class='form-select spl' id='user-type' onchange = 'return changeUserType()'>
                                                <option selected disabled value=''>Choose...</option>
                                                <optgroup label='Members'>
                                                    <option value='1'>Students</option>
                                                    <option value='2'>Teachers</option>
                                                    <option value='3'>Users</option>
                                                </optgroup>
                                                <optgroup label='Components'>
                                                    <option value='4'>Subjects</option>
                                                    <option value='5'>Syllabus</option>
                                                    <option value='6'>Online-Tests</option>
                                                    <option value='7'>Videos</option>
                                                    <option value='8'>Documents</option>
                                                </optgroup>
                                                <optgroup label='Programs'>
                                                    <option value='9'>Events</option>
                                                    <option value='10'>Blogs</option>
                                                    <option value='11'>Announcements</option>
                                                    <option value='12'>Press-Releases</option>
                                                </optgroup>
                                                    
                                            </select>
                                        
                                        </div>

                                        <div class=''>
                                            <label for='validationCustom04' class='form-label'>Upload Files (Max size 10MB)</label>
                                            <div class='input-group mb-3'>
                                                <input type='file' class='form-control input-only upload' id='file' name='file[]' multiple='true' />
                                            </div>

                                        </div>
                                    </div>

                                    <div class='mi-btn-holder'>
                                            <button class='mi-btn mi-btn-primary' type='submit'>Add</button>
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
                            <table id='datatable-buttons-2' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>Sl No</th>
                                        <th>Upload For</th>
                                        <th>Review Format</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;
                                    $files = [
                                        '1' => 'Students',
                                        '2' => 'Teachers',
                                        '3' => 'Users',
                                        '4' => 'Subjects',
                                        '5' => 'Syllabus',
                                        '6' => 'Online-Tests',
                                        '7' => 'Videos',
                                        '8' => 'Documents',
                                        '9' => 'Events',
                                        '10' => 'Blogs',
                                        '11' => 'Announcements',
                                        '12' => 'Press-Releases',
                                    ];

                                    if(count($files) > 0){

                                        foreach($files as $key => $sepFiles){                 
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepFiles ?></td>
                                            <td data-json='<?= $key ?>'>
                                                <i data-feather='eye' color="green" class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editUser(this)'></i>
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