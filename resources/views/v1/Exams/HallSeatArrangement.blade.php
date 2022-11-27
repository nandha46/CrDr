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

                    <div class='card'>
                        <div class='card-body'>

                            <p class='msg-to-view d-none'></p>

                            <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateSeatArrangement();return false;'>
                                @csrf
                                <input type='hidden' id='_id' class='input-only' value=''>
                                <input type='hidden' class='input-only current-row' value=''>
                                <div class='col-md-3'>
                                    <label for='validationCustom04' class='form-label'>Exam</label>
                                    <select class='form-select spl input-only' id='exam'>
                                        <option selected disabled value=''>Choose...</option>
                                        <?php

                                        foreach ($exams as $key => $sepExam) {
                                        ?>
                                            <option value='<?= $sepExam->id ?>'><?= $sepExam->name ?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class='col-md-3'>
                                    <label for='validationCustom04' class='form-label'>Slot</label>
                                    <select class='form-select spl input-only' id='exam'>
                                            <option value='FN'>Forenoon</option>
                                            <option value='AN'>Afternoon</option>
                                    </select>
                                </div>
                               
                            <div class="row">
                                <div class='col-md-3'>
                                    <label for='validationCustom04' class='form-label'>Room</label>
                                    <select class='form-select spl' id='rooms' onchange='return viewSeatByRoom(this); return false;'>
                                        <option selected disabled value=''>Choose...</option>
                                        <?php

                                        foreach ($rooms as $key => $sepRoom) {
                                        ?>
                                            <option value='<?= $sepRoom->id ?>' data-maxcap="{{$sepRoom->max_capacity}}" data-avlcap="{{$sepRoom->available_capacity}}"><?= $sepRoom->room_name ?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </div>

                                <div class='col-md-3'>
                                    <label for='validationCustom01' class='form-label'>Total Seats</label>
                                    <input type='text' class='form-control spl input-only' id='total-seats' disabled/>
                                </div>
                                <div class='col-md-3'>
                                    <label for='validationCustom01' class='form-label'>Available Seats</label>
                                    <input type='text' class='form-control spl input-only' id='available-seats' disabled/>
                                </div>
                            </div>
                            
                            <div class='col-md-3'>
                                <label for='validationCustom04' class='form-label'>Classes</label>
                                <select data-placeholder="Choose Classes..." class="chosen-class-select" id='classes' name="classes[]" multiple tabindex="4" onchange='classAllocation()'>
                                    <option value=""></option>
                                    <?php

                                    foreach ($classes as $key => $sepClass) {
                                    ?>
                                        <option value='<?= $sepClass->count ?>' > {{ $sepClass->clssName }} - {{$sepClass->secnSecName}}</option>
                                    <?php
                                    }
                                    ?>
                                </select>

                            </div>
                            <div class="row">
                                <div class='col-md-3 d-none' id="mcq1">
                                    <label for='validationCustom04' class='form-label' id='cla1'> Class Strength</label>
                                    <input type='text' class='form-control spl input-only' id='class1' disabled value='' />

                                </div>
                                <div class='col-md-3 d-none' id="mcq2">
                                    <label for='validationCustom04' class='form-label' id='cla2'> Class Strength</label>
                                    <input type='text' class='form-control spl input-only' id='class2' disabled value='' />

                                </div>
                                <div class='col-md-3 d-none' id="mcq3">
                                    <label for='validationCustom04' class='form-label' id='cla3'> Class Strength</label>
                                    <input type='text' class='form-control spl input-only' id='class3' disabled value='' />

                                </div>
                            </div>
                                <div class="row">
                                    <div class='col-md-3 d-none' id="rem1">
                                        <label for='validationCustom04' class='form-label' id='cla4'> Class Remaining Strength</label>
                                        <input type='text' class='form-control spl input-only' id='class4' value='' disabled />

                                    </div>
                                    <div class='col-md-3 d-none' id="rem2">
                                        <label for='validationCustom04' class='form-label' id='cla5'> Class Remaining Strength</label>
                                        <input type='text' class='form-control spl input-only' id='class5' value='' disabled />

                                    </div>
                                    <div class='col-md-3 d-none' id="rem3">
                                        <label for='validationCustom04' class='form-label' id='cla6'> Class Remaining Strength</label>
                                        <input type='text' class='form-control spl input-only' id='class6' value='' disabled />

                                    </div>
                                </div>
                                <div class="row d-none" style="padding: 2rem" id="arrangement-div">
                                    <label for='validationCustom02' class='form-label'>Arrangement</label>
                                    <div class='col-md-6'>
                                        <div class='form-check form-check-inline'>
                                            <input class='form-check-input' type='radio' name='invididual-split' id='invididual' value='1' checked='checked' onchange='changeSeatingArrangement(this)' />
                                            <label class='form-check-label' for='invididual'>Invididual</label>
                                        </div>
                                        <div class='form-check form-check-inline'>
                                            <input class='form-check-input' type='radio' name='invididual-split' id='split2' value='2' onchange='changeSeatingArrangement(this)' />
                                            <label class='form-check-label' for='split2'>2 Per Row</label>
                                        </div>
                                        <div class='form-check form-check-inline'>
                                            <input class='form-check-input' type='radio' name='invididual-split' id='split3' value='3' onchange='changeSeatingArrangement(this)' />
                                            <label class='form-check-label' for='split3'>3 Per Row</label>
                                        </div>
                                    </div>
                            </div>
                            <div class="row d-none" id="class-selection">
                                <div class='col-md-3' id="left">
                                    <label for='validationCustom04' class='form-label'>Left <i data-feather="arrow-left" color="teal"></i></label>
                                    <select class='form-select spl' id='left2'>
                                        <option selected disabled value=''>Choose...</option>
                                    </select>
                                </div>             
                                <div class='col-md-3' id="center" style="margin: auto">
                                    <label for='validationCustom04' class='form-label'>center <i data-feather="arrow-down" color="teal"></i></label>
                                    <select class='form-select spl' id='center1'>
                                        <option selected disabled value=''>Choose...</option>
                                    </select>
                                </div>
                                <div class='col-md-3' id="right" style="margin-left: auto">
                                    <label for='validationCustom04' class='form-label'>Right <i data-feather="arrow-right" color="teal"></i></label>
                                    <select class='form-select spl' id='right2'>
                                        <option selected disabled value=''>Choose...</option>
                                    </select>
                                </div>
                            </div>
                                <div class='col-12 display-flex-space'>
                                    <div class='col-md-6'>
                                        <button class='btn btn-primary first button-add-edit' type='submit'>Allot</button>
                                    </div>
                                    <div class='col-md-6'>
                                        <button class='btn btn-primary cancel' type='button'>Cancel</button>
                                    </div>
                                </div>
                            </form>
                            <!--  </div>  -->
                        </div>
                    </div>
                </div>

            </div>

            <!-- First Review End Here -->
            <!--Arjun Design---->
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Booking</title>
                <link rel="stylesheet" href="style.css" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
            </head>

            <body>
                <div class="mi-container-area">
                    <div class="booking-container">
                        <div class="black-board-area">
                            <p>Black Board ( Class - VII )</p>
                        </div>
                        <div class="seat-main-container">
                            <div class="seat-listing-space">
                                <div class="seat-left">
                                    <div class="desk-row">
                                        <div class="seat">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>A1</p>
                                            </div>
                                        </div>
                                        <div class="seat">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>A2</p>
                                            </div>
                                        </div>
                                        <div class="seat">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>A3</p>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="desk-row">
                                        <div class="seat">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>A4</p>
                                            </div>
                                        </div>
                                        <div class="seat">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>A5</p>
                                            </div>
                                        </div>
                                        <div class="seat">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>A6</p>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                                <div class="seat-right">
                                    <div class="desk-row">
                                        <div class="seat">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>B1</p>
                                            </div>
                                        </div>
                                        <div class="seat active">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>B2</p>
                                            </div>
                                        </div>
                                        <div class="seat">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>B3</p>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="desk-row">
                                        <div class="seat">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>B4</p>
                                            </div>
                                        </div>
                                        <div class="seat">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>B5</p>
                                            </div>
                                        </div>
                                        <div class="seat">
                                            <div class="seat-chair">
                                                <i class="fa-solid fa-chair"></i>
                                            </div>
                                            <div class="seat-number">
                                                <p>B6</p>
                                            </div>

                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
            </body>

            </html>
            <!---Arjun Finish--->



        </div>
    </div>
</div>
<!--<script>
$(document).ready(function(){
 $('#classes').multiselect({
  nonSelectedText: 'Select Classes',
  enableFiltering: true,
  enableCaseInsensitiveFiltering: true,
  buttonWidth:'400px'
 });
});
</script>-->
@include('v1.Includes.Footer')