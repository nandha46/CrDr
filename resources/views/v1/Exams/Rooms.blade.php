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
                                    <span class='text-update-add-edit'>Add Rooms</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='addUpdateRooms();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                                    
                                    <div class='col-md-3'>
                                        <label for='validationCustom04' class='form-label required'>Room Type</label>
                                        <select class='form-select spl' id='room-type'>
                                            <option selected disabled value=''>Choose...</option>
                                            @foreach($roomTypes as $i=>$val)
                                            <option value='{{$i}}'>{{$val}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom01' class='form-label required'>Room Name</label>
                                        <input type='text' class='form-control spl input-only' id='room-name' value='' />
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom02' class='form-label required'>Seating Type</label>
                                        <div class='display-flex mb-3 margin-top-18'>
                                            <div class='form-check form-check-inline'>
                                                    <input class='form-check-input' onchange="changeSeatType(this)" type='radio' name='seat-type' id='chair' value='Chair' checked='checked'/>
                                                    <label class='form-check-label' for='chair'>Chair</label>
                                                </div>
                                                <div class='form-check form-check-inline'>
                                                    <input class='form-check-input' onchange="changeSeatType(this)" type='radio' name='seat-type' id='bench' value='Bench' />
                                                    <label class='form-check-label' for='bench'>Bench</label>
                                                </div>
                                        </div>
                                    </div>
                                    <div class='col-md-3 d-none' id="bench-cap">
                                        <label for='validationCustom02' class='form-label required'>Bench Capacity</label>
                                        <div class='display-flex mb-3 margin-top-18'>
                                            <div class='form-check form-check-inline'>
                                                    <input class='form-check-input' type='radio' onchange="changeBenchCapacity()" name='bench-capacity' id='2c' value='2' checked='checked'/>
                                                    <label class='form-check-label' for='2c'>2</label>
                                                </div>
                                                <div class='form-check form-check-inline'>
                                                    <input class='form-check-input' type='radio' onchange="changeBenchCapacity()" name='bench-capacity' id='3c' value='3' />
                                                    <label class='form-check-label' for='3c'>3</label>
                                                </div>
                                        </div>
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom01' class='form-label required'>No of Chair</label>
                                        <input type='text' class='form-control spl numbers-only' onkeyup="calculateMaxCapacity(this)" id='benchCount' value='' />
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom01' class='form-label required'>Max Capacity</label>
                                        <input type='text' class='form-control spl numbers-only' id='max-cap' value='' disabled/>
                                    </div>
                                    <div class='col-md-3'>
                                        <label for='validationCustom01' class='form-label required'>Available Capacity</label>
                                        <input type='text' class='form-control spl numbers-only' id='avl-cap' value='' />
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

            <div class='row mi-table-space'>
                <div class='col-12'>
                    <div class='mi-card'>
                        <div class='mi-card-body card-pads'>
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Room Type</th>
                                        <th>Room Name</th>
                                        <th>Seat Type</th>
                                        <th>No of Seats</th>
                                        <th>Max Capacity</th>
                                        <th>Available Capacity</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($rooms) > 0){

                                        foreach($rooms as $sepRooms){
                                            $sType = $sepRooms->seating_type;
                                            if ($sepRooms->seating_type == 'Bench'){
                                                $sType = $sepRooms->bench_capacity.' Person Bench';
                                            }

                                                   
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $roomTypes[$sepRooms->room_type] ?></td>
                                            <td><?= $sepRooms->room_name ?></td>
                                            <td><?= $sType ?></td>
                                            <td><?= $sepRooms->no_of_seats ?></td>
                                            <td><?= $sepRooms->max_capacity ?></td>
                                            <td><?= $sepRooms->available_capacity ?></td>
                                            <td class='status'><?= $sepRooms->status?'<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?></td>
                                            <td>
                                                @if(!$sepRooms->status)
                                                <i color="grey" data-feather='edit' data-toggle="tooltip" title='Cannot Edit In-Active Record.' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editRooms({{$sepRooms->id}}, {{$i}})'></i>
                                                @else
                                                <i color="blue" data-feather='edit' data-toggle="tooltip" title='Edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editRooms({{$sepRooms->id}}, {{$i}})'></i>
                                                @endif
                                                <i color="red" data-toggle="tooltip" title='Change Status' onclick ="return changeStatus('rooms', '<?= $sepRooms->id ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
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