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
                                <caption>From: {{$fromDate}} To: {{$toDate}}</caption>
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Narration</th>
                                        <th>Debit</th>
                                        <th>Credit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($daybooks as $daybook)
                                {{-- Opening Balance --}}
                                    @if($loop->first)
                                        <tr id = 'row-{{$loop->index}}'>
                                            <td>{{$daybook->tDate}}</td>
                                            <td>Opening Balance</td>
                                            <td>{{$daybook->drAmt == 0.00?'': $daybook->drAmt}}</td>                
                                            <td>{{$daybook->crAmt == 0.00?'': $daybook->crAmt}}</td>
                                        </tr>
                                        <tr id = 'row-{{$loop->index}}a'>
                                            <td class="red-cell">{{$daybook->tDate}} </td>
                                            <td class="red-cell">{{date('l' ,strtotime($daybook->tDate))}}</td>
                                            <td></td>                
                                            <td></td>
                                        </tr>
                                    {{-- Closing Balance --}}
                                    @elseif($loop->last)
                                        <tr id = 'row-{{$loop->index}}'>
                                            <td>{{$daybook->tDate}} </td>
                                            <td>Closing Balance</td>
                                            <td>{{$daybook->drAmt == 0.00?'': $daybook->drAmt}}</td>                
                                            <td>{{$daybook->crAmt == 0.00?'': $daybook->crAmt}}</td>
                                        </tr>

                                    {{-- Daily entries --}}
                                    @elseif($daybook->sno != null)
                                        <tr id ='row-{{$loop->index}}'>
                                            <td>{{$daybook->shortName}} </td>
                                            <td>{{$daybook->narration}} </td>
                                            <td>{{$daybook->drAmt == 0.00?'': $daybook->drAmt}}</td>                
                                            <td>{{$daybook->crAmt == 0.00?'': $daybook->crAmt}}</td>
                                        </tr>
                                    @else
                                    {{-- Daily closing balance --}}
                                        <tr id ='row-{{$loop->index}}'>
                                            <td></td>
                                            <td></td>
                                            <td class="green-cell">{{$daybook->drAmt == 0.00?'': $daybook->drAmt}}</td>                
                                            <td class="green-cell">{{$daybook->crAmt == 0.00?'': $daybook->crAmt}}</td>
                                        </tr>
                                        <tr id = 'row-{{$loop->index}}a'>
                                            <td></td>
                                            <td></td>
                                            @if($daybook->closeBal > 0)
                                            <td></td>
                                            <td class="red-cell">{{$daybook->closeBal}}</td>                
                                            @else
                                            <td class="red-cell">{{$daybook->closeBal}}</td>                
                                            <td></td>
                                            @endif
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