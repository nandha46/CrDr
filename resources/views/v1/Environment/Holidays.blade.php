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
                                    <span class='text-update-add-edit'>Add Holidays</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateHolidays();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                            <div class="mi-form-area-container"> 
                                <div class="mi-grid-3-layout">
                                    <div class=''>
                                        <label for='validationCustom04' class='form-label required'>Year</label>
                                        <select class='form-select spl input-only' id='year'>
                                        <option value='2021'>2021</option>  
                                        <option value='2022'>2022</option>
                                        <option value='2023'>2023</option>
                                        <option value='2024'>2024</option>
                                        <option value='2025'>2025</option>
                                        <option value='2026'>2026</option>
                                        <option value='2027'>2027</option>
                                        <option value='2028'>2028</option>
                                        <option value='2029'>2029</option>
                                        <option value='2030'>2030</option>
                                        </select>
                                       
                                    </div>

                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>Name</label>
                                        <input type='text' class='form-control spl input-only' id='hname' value='' />
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label'>Description</label>
                                        <input type='text' class='form-control spl input-only' id='description' value='' />
                                       
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label required'>Date</label>
                                        <input type='text' class='form-control spl input-only date-input' id='datee' value='' />
                                       
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom03' class='form-label'>Messages</label>
                                        <input type='text' class='form-control spl input-only' id='message' />
                                        
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
                                        <th>Year</th>
                                        <th>Holiday Name</th>
                                        <th>Description</th>
                                        <th>Date</th>
                                        <th>Message</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($holiday) > 0){

                                        foreach($holiday as $sepHoliday){

                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepHoliday->orhlFinancialYear ?></td>
                                            <td><?= $sepHoliday->orhlName ?></td>
                                            <td><?= $sepHoliday->orhlDescription ?></td>
                                            <td><?= $sepHoliday->orhlDate ?></td>
                                            <td><?= $sepHoliday->orhlMessage ?></td>
                                            <td class='status'><?= $sepHoliday->orhlIsStatus? '<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?></td>
                                            <td>
                                                <i color="blue"  data-feather='edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editHoliday({{$sepHoliday->orhlId}}, {{$i}})'></i>
                                                <i color="red"   onclick ="return changeStatus('orgholidays', '<?= $sepHoliday->orhlId ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
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