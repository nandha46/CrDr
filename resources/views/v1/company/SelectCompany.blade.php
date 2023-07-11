@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
    
    @include('v1.Includes.TopMenu')
    
    <div class='page-content bg-added'>
        <div class='container-fluid'>
            
            @include('v1.Includes.PageTitleBox')
            
            <!-- Second Review Starts Here -->

            <div class='row mi-table-space'>
                {{-- <div class='col-12'> --}}
                    <div class='mi-card'>
                        <div class='mi-card-body card-pads' style="flex-direction: row">
                            <div class="list-group col-6">
                                <a href="#" class="list-group-item"><h4 class="mb-1">Company Name</h4></a>
                                @foreach($companies as $company)
                                <a href="#" class="list-group-item list-group-item-action" id="company{{$loop->index}}" onclick="loadCompanyYear('{{$company->companyName}}', 'company{{$loop->index}}');">{{$company->companyName}}</a>
                                @endforeach
                            </div>
                            <div class="list-group col-6" id="years-list">
                                <a href="#" class="list-group-item list-group-item-action"><h4 class="mb-1">Select Year</h4></a>
                            </div>
                        </div>
                        <div class="mi-card-body card-pads d-none" id="company-submit-button">
                            <div class="col-12 d-grid" style="justify-content: center">
                                <button class='mi-btn mi-btn-ternary' type="button" onclick="submitCompany()">Open Company</button>
                            </div>
                        </div>
                    </div>
                {{-- </div> --}}
            </div>
            <!-- Second Review Ends Here -->
        </div>
    </div>
</div>

@include('v1.Includes.Footer')