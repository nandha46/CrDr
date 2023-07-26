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
                                <caption>From: {{$fromDate}} <br>To: {{$toDate}}</caption>
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Narration</th>
                                        <th>Debit</th>
                                        <th>Credit</th>
                                        <th>Balance</th>
                                        <th>D/C</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($ledger as $accs)
                                    @if($accs->tDate == null)
                                    <tr id = 'row-{{$loop->index}}'>
                                        <td></td>
                                        <td style="font-weight: bold">{{$accs->accName}}</td>
                                        <td></td>                
                                        <td></td>
                                        <td>{{$accs->sno}}</td>
                                        <td>{{$accs->asno}}</td>
                                    </tr>
                                    <tr id = 'row-{{$loop->index}}a'>
                                        <td class="red-cell">{{$fromDate}}</td>
                                        <td class="red-cell">Opening Balance</td>
                                        <td class="red-cell">{{$accs->drAmt == 0.00?'0.00': $accs->drAmt}}</td>                
                                        <td class="red-cell">{{$accs->crAmt == 0.00?'0.00': $accs->crAmt}}</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    @else
                                    <tr id = 'row-{{$loop->index}}'>
                                        <td>{{$accs->tDate}}</td>
                                        <td>{{$accs->accName}}</td>
                                        <td>{{$accs->drAmt == 0.00?'': $accs->drAmt}}</td>                
                                        <td>{{$accs->crAmt == 0.00?'': $accs->crAmt}}</td>
                                        <td>{{$accs->sno}}</td>
                                        <td>{{$accs->asno}}</td>
                                    </tr>
                                    @endif
                                        
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