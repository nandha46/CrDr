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
                                    <span class='text-update-add-edit'>Promote Students</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdatePromotion();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                                    <div class="mi-form-area-container">
                                        <div class="mi-grid-4-layout">
                                    <div class=''>
                                        <label for='validationCustom04' class='form-label'>Standard</label>
                                        <select class='form-select spl' id='standard' onchange = 'return changeStandard()'>
                                            <option selected disabled value=''>Choose...</option>
                                            @foreach($standards as $standard)
                                            <option value='{{$standard->clssId}}'>{{$standard->clssName}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom05' class='form-label'>Section</label>
                                        <select class='form-select spl' id='section' onchange = 'return showStudentList()'>
                                            <option selected disabled value=''>Choose...</option>
                                            <?php

                                                foreach($sections as $key => $sepSections){
                                            ?>
                                                    <option value = '<?= $sepSections->secnId ?>'><?= $sepSections->secnSecName?></option>
                                            <?php
                                                }
                                            ?>
                                        </select>
                                    </div>
                                    </div>
                                    <div class="mi-grid-4-layout">
                                    <div class=''>
                                        <label for='validationCustom04' class='form-label'>Promotion Standard</label>
                                        <select class='form-select spl' id='to_standard'>
                                            <option selected disabled value=''>Choose...</option>
                                            @foreach($standards as $standard)
                                            <option value='{{$standard->clssId}}'>{{$standard->clssName}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom05' class='form-label'>Next Academic Year</label>
                                        <select class='form-select spl' id='academicYear'>
                                            <option selected value='{{date('Y').'-'.date('Y')+1}}'>{{date('Y').'-'.date('Y')+1}}</option>
                                        </select>
                                    </div>
                                </div>
                                    <div class='mi-btn-holder d-none'>
                                            <button class='mi-btn mi-btn-primary' type='submit'>Promote</button>
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
            <div class='row mi-table-space d-none'>
                <div class='mi-card'>
                    <div class='mi-card-body card-pads'>
                <div class='col-md-12 prvl-menu'>

                    <div class='privileges-table'>
                        <div class='row'>
                            <div class='col-12'>
                                <div class='table-responsive'>
                                    <table class='table table-bordered privileges stuListTable'>
                                        <thead>
                                            <tr>
                                                <th>Student</th>
                                                <th>Class</th>
                                                <th>Promotion</th>
                                                <th>Transfer</th>
                                            </tr>
                                            
                                        </thead>
                                        <tbody>
                                            <tr style="background: linear-gradient(90deg, hsla(333, 100%, 53%, 1) 0%, hsla(33, 94%, 57%, 1) 100%); color:white;" id='first-dt-row'>
                                                <td>All</td>
                                                <td> Current class</td>
                                                <td onclick = 'return promoteAll(this)' data-status="0"><i data-feather="chevrons-down"></i>
                                                </td>
                                                <td @if($transferClass) onclick = 'return transferAll(this)' data-status="0" @endif> 
                                                    @if($transferClass) <i data-feather="chevrons-down"></i> @endif
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                </div>
                
            </div>
            <!-- Second Review Ends Here -->

        </div>
    </div>
</div>

@include('v1.Modals.NoStudents')
@include('v1.Includes.Footer')