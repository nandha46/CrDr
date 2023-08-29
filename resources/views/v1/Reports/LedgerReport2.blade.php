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
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr id = 'row-{{$loop->index}}a'>
                                        <td class="red-cell">{{$fromDate}}</td>
                                        <td class="red-cell">Opening Balance</td>
                                        @if($accs->openingBalance > 0.0)
                                        <td class="red-cell">{{$accs->openingBalance == 0.00?'0.00': $accs->openingBalance}}</td>                
                                        <td class="red-cell"></td>
                                        @else
                                        <td class="red-cell"></td>                
                                        <td class="red-cell">{{-1*$accs->openingBalance}}</td>
                                        @endif
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    @endif
                                    @foreach($accs->books as $book)
                                    <tr id = 'row-{{$loop->index}}'>
                                        <td>{{$book->tDate}}</td>
                                        <td>{{$book->narration}}</td>
                                        <td>{{$book->drAmt == 0.00?'': $book->drAmt}}</td>                
                                        <td>{{$book->crAmt == 0.00?'': $book->crAmt}}</td>
                                        <td>{{$book->total}}</td>
                                        <td>Dr</td>
                                    </tr>
                                    @endforeach
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