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
                                    <span class='text-update-add-edit'>Schedule Emails</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateReportSchedules();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                                <div class="mi-form-area-container"> 
                                    <div class="mi-grid-3-layout">
                                        <div class=''>
                                            <label for='validationCustom01' class='form-label required'>Task Name</label>
                                            <input type="text" class="form-control spl input-only" id="name" value='' />
                                        
                                        </div>
                                        <div class=''>
                                            <label for='validationCustom04' class='form-label required'>Report</label>
                                            <select class='form-select spl' id='report'>
                                                <option selected disabled value=''>Choose...</option>
                                                <option value='1'>Progress Details</option>
                                                <option value='2'>Student Reports</option>
                                                <option value='3'>Staff Reports</option>
                                                <option value='4'>Teacher Reports</option>
                                                <option value='5'>Exam Reports</option>
                                            </select>
                                        </div>
                                        <div class=''>
                                            <label for='validationCustom04' class='form-label required'>Send Mode</label>
                                            <select class='form-select spl' id='frequency'>
                                                <option selected disabled value=''>Choose...</option>
                                                <option value='1'>Daily</option>
                                                <option value='2'>Weekly</option>
                                                <option value='3'>15days</option>
                                                <option value='4'>Monthly</option>
                                                <option value='5'>3 Months</option>
                                                <option value='6'>6 Months</option>
                                                <option value='7'>Yearly</option>
                                            </select>
                                        </div>
                                    </div>
                                        <div class=''>
                                            <label for='validationCustom01' class='form-label'>To</label>
                                            <input type="text" class="form-control input-only" id="to_emails" value='' />
                                        </div>
                                        <div class=''>
                                            <label for='validationCustom01' class='form-label'>cc</label>
                                            <input type="text" class="form-control input-only" id="cc_emails" value='' />
                                        </div>
                                        <div class=''>
                                            <label for='validationCustom01' class='form-label'>bcc</label>
                                            <input type="text" class="form-control input-only" id="bcc_emails" value='' />
                                        </div>
                                    </div>
                                    
                                    <div class='mi-btn-holder'>
                                            <button class='mi-btn mi-btn-primary button-add-edit' type='submit'>Add</button>
                                            <button class='mi-btn mi-btn-secondary' type='button'>Cancel</button>
                                        </div>
                                    </div>
                                </div>
                                </form>
                            </div>
                    </div>
                </div>
            </div>

            <!-- First Review End Here -->

            <div class='row mi-table-space'>
                <div class='col-12'>
                    <div class='mi-card'>
                        <div class='mi-card-body card-pads'>
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Task Name</th>
                                        <th>Report</th>
                                        <th>Mode</th>
                                        <th>To</th>
                                        <th>CC</th>
                                        <th>BCC</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($schedules) > 0){

                                        foreach($schedules as $sepSchedules){
                                        
                                            switch ($sepSchedules->reportid) {
                                                case '1':
                                                    $report = 'Progress Details';
                                                    break;
                                                case '2':
                                                    $report = 'Student Reports';
                                                    break;
                                                case '3':
                                                    $report = 'Staff Reports';
                                                    break;
                                                case '4':
                                                    $report = 'Teacher Reports';
                                                    break;
                                                case '5':
                                                    $report = 'Exam Reports';
                                                    break;
                                                default:
                                                    $report = 'NA';
                                                    break;
                                            }
                                        switch ($sepSchedules->sendmode) {
                                            case '1':
                                                $mode = 'Daily';
                                                break;
                                            case '2':
                                                $mode = 'Weekly';
                                                break;
                                            case '3':
                                                $mode = '15days';
                                                break;
                                            case '4':
                                                $mode = 'Monthly';
                                                break;
                                            case '5':
                                                $mode = '3 Months';
                                                break;
                                            case '6':
                                                $mode = '6 Months';
                                                break;
                                            case '7':
                                                $mode = 'Yearly';
                                                break;
                                            default:
                                                $mode = 'NA';
                                                break;
                                        }
         
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepSchedules->name ?></td>
                                            <td><?= $report ?></td>
                                            <td><?= $mode ?></td>
                                            <td><?= $sepSchedules->toaddress ?></td>
                                            <td><?= $sepSchedules->cc_address ?></td>
                                            <td><?= $sepSchedules->bcc_address ?></td>
                                            <td class='status'><?= $sepSchedules->status== 0 ?'<span class="badge bg-danger text-bg-success">In-Active</span>':'<span class="badge bg-success text-bg-success">Active</span>' ?></td>
                                            <td>
                                                <i color="blue"  data-feather='edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editReportSchedule({{$sepSchedules->id}}, {{$i}})'></i>
                                                <i color="red"   onclick ="return changeStatus('reportschedules', '<?= $sepSchedules->id ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
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