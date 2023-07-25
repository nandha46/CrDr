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
                                    <span class='text-update-add-edit'>Add Events</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='addUpdateEvents();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                                    <div class="mi-form-area-container">
                                    <div class='mi-grid-4-layout'>
                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>Event name</label>
                                        <input type='text' class='form-control spl input-only' id='eventname' value='' />
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>Event Type</label>
                                        <select class='form-select spl' id='event-type' onchange = 'changeQuestionType(this)'>
                                            <option value="" disabled selected>Choose...</option>
                                            <option value="Cultural" selected>Cultural</option>
                                            <option value="Sport" selected>Sport</option>
                                            <option value="Seminar" selected>Seminar</option>
                                            <option value="Others" selected>Others</option>
                                        </select>
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label required'>Event Date</label>
                                        <input type='text' class='form-control spl input-only date-input' id='date' value='' />
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label required'>Cheif Guest</label>
                                        <input type='text' class='form-control spl input-only' id='chiefguest' value='' />
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>Description</label>
                                        <textarea class="form-control" rows="5" id="description" value='' placeholder="Enter the event description here..."></textarea>
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label required'>Start Time</label>
                                        <input type='time' class='form-control spl input-only' id='start' value='' />
                                       
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label required'>End Time</label>
                                        <input type='time' class='form-control spl input-only' id='end' value='' />
                                       
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom03' class='form-label required'>Place</label>
                                        <input type='text' class='form-control spl input-only' id='place' />
                                        
                                    </div>

                                    <div class=''>
                                        <label for='validationCustom03' class='form-label'>Sponsored By</label>
                                        <input type='text' class='form-control spl input-only' id='sponsored' />
                                       
                                    </div>

                                    <div class=''>
                                        <label for='validationCustom03' class='form-label required'>Organized by</label>
                                        <input type='text' class='form-control spl input-only' id='organized' />
                                        
                                    </div>

                                    <div class=''>
                                        <label for='validationCustom03' class='form-label'>Registration From</label>
                                        <input type='text' class='form-control spl input-only date-input' id='registration' />
                                        
                                    </div>

                                    <div class=''>
                                        <label for='validationCustom05' class='form-label'>Upload Registration Form (Max size 10MB)</label>
                                        <div class='input-group mb-3'>
                                            <input type='file' class='form-control input-only' id='file' name='file[]' multiple='true' />
                                            {{-- <label class='input-group-text' for='file'>Upload</label> --}}
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
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Event Type</th>
                                        <th>Event Name</th>
                                        <th>Date</th>
                                        <th>Description</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($events) > 0){

                                        foreach($events as $sepEvents){
                                                      
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepEvents->evntType ?></td>
                                            <td><?= $sepEvents->evntName ?></td>
                                            <td><?= $sepEvents->evntDate ?></td>
                                            <td><?= $sepEvents->evntDescription ?></td>
                                            <td class='status'><?= $sepEvents->evntIsStatus== 0 ?'<span class="badge bg-danger text-bg-success">In-Active</span>':'<span class="badge bg-success text-bg-success">Active</span>' ?></td>
                                            <td>
                                                <i color="blue" data-feather='edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editEvent({{$sepEvents->id}}, {{$i}})'></i>
                                                <i color="red" onclick ="return changeStatus('events', '<?= $sepEvents->id ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
                                                <i data-bs-toggle="modal" onclick="generateEventsModal({{$sepEvents->id}})" data-bs-target="#eventsModal" data-feather='eye' color="purple" class='menu-icon-form-td-i cursor-pointer'></i>
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
        {{-- Modal Star --}}
            <div class="modal" id="eventsModal">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title">Event Name</h4>
                    </div>
                    <div class="card" style="margin: 0%">
                        <img class="card-img-top" src="{{asset('./images/programs media/cultural.jfif')}}" alt="Event Image" id="event_id" style="width:100%">
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