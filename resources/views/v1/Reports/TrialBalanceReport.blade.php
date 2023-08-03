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
                                        <th>Account Name</th>
                                        <th>Debit</th>
                                        <th>Credit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($trialBalances as $accs)
                                    @if($loop->index == 1)
                                    <tr id = 'row-{{$loop->index}}'>
                                        <td style="text-align: left" class="red-cell padding1">Cash on Hand</td>
                                        <td>{{$closeBal > 0 ? $closeBal: ''}}</td>                
                                        <td>{{$closeBal < 0 ? $closeBal: ''}}</td>
                                    </tr>
                                    @endif
                                    <tr id = 'row-{{$loop->index}}'>
                                        <td style="text-align: left" @class(['red-cell' => $accs->acccode == 0, 'padding1' => $accs->level1 == 2, 'padding2' => $accs->level1 == 3,])>{{$accs->accName}}</td>
                                        <td>{{$accs->drTotal}}</td>                
                                        <td>{{$accs->crTotal}}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Second Review Ends Here -->
        </div>
    </div>
</div>

@include('v1.Includes.Footer')