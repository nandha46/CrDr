@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
    @include('v1.Includes.TopMenu')

    <div class='page-content bg-added'>
        <div class='container-fluid'>

            @include('v1.Includes.PageTitleBox')

            <!-- Second Review Starts Here -->
            <div class='row mi-table-space'>
                <div class='col-12'>
                    <div class='mi-card'>
                        <div class='mi-card-body card-pads' id="calendar">

                        </div>
                    </div>
                </div>
            </div>
            <!-- Second Review Ends Here -->
        </div>
    </div>
</div>

@include('v1.Includes.Footer')