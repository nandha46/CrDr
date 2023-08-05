@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
    
    @include('v1.Includes.TopMenu')
    
    <div class='page-content bg-added'>
        <div class='container-fluid'>
            
            @include('v1.Includes.PageTitleBox')
            
            <!-- Second Review Starts Here -->

            <div class='row mi-table-space'>
            @if(Session::has('Msg'))
            <p class='mb-4 lgn-error msg'>{{Session::get('Msg')}}</p>
            @endif
            @if(Session::has('SMsg'))
            <p class='mb-4 lgn-success msg'>{{Session::get('SMsg')}}</p>
            @endif
                <div class='col-12'>
                    <div class='mi-card'>
                        <div class='mi-card-body card-pads'>
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Company Name</th>
                                        <th>Year</th>
                                        <th>Type</th>
                                        <th>From Date</th>
                                        <th>To Date</th>
                                        <th>Address</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($companies) > 0){

                                        foreach($companies as $company){
       
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $company->companyName ?></td>
                                            <td><?= $company->CompanyYear ?></td>
                                            <td><?= $company->companyType ?></td>
                                            <td><?= $company->fromDate ?></td>
                                            <td><?= $company->toDate ?></td>
                                            <td><?= $company->address1 ?> {{$company->address2}} {{$company->city}} {{$company->pincode}} {{$company->state}}</td>
                                            <td><?= $company->phone1 ?> <?= $company->phone2 ?></td>
                                            <td><?= $company->email ?></td>
                                            <td>
                                                <a href="{{route('delete-company', $company->id)}}" onclick="return confirm('Are you sure want to delete this company?');"><i color="red" data-feather='trash' class='menu-icon-form-td-i cursor-pointer'></i></a>
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