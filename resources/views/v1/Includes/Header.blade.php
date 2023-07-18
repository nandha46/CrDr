<!DOCTYPE html>
<html lang='en'>
    <head>
        <meta charset='utf-8' />
        <title>{{isset($pageTitle) ? $pageTitle:"Admin | Dashboard"}}</title>
        <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
        <meta content='Admin & Dashboard - Powered by SKAT Technologies' name='description' />
        <meta content='' name='author' />
        <meta http-equiv='X-UA-Compatible' content='IE=edge' />

        <link rel='shortcut icon' href='{{asset('./images/favicon.png')}}'>

        <link href='{{asset('css/v1/jquery-jvectormap-2.0.2.css')}}' rel='stylesheet'>

        <link href='{{asset('css/v1/bootstrap.min.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/v1/icons.min.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/v1/metisMenu.min.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/v1/daterangepicker.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/v1/app.min.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/v1/style.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/v1/loader.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/v1/chosen/prism.css')}}' rel='stylesheet'  />
        <link href='{{asset('css/v1/chosen/chosen.css')}}' rel='stylesheet'  />
        {{-- glow button --}}
        <link href='{{asset('css/v1/custom1.css')}}' rel='stylesheet'  />
        {{-- Calendar TImetable --}}
        <link rel="stylesheet" href="{{asset('css/v1/calendar/calendar.css')}}">
        <link rel="stylesheet" href="{{asset('css/v1/calendar/theme.css')}}">
        <link rel="stylesheet" href="{{asset('css/v1/calendar/spinner.css')}}">
        <link rel="stylesheet" href="{{asset('css/v1/calendar/style.css')}}">
        {{-- Multiemail --}}
        <link rel="stylesheet" href="{{asset('css/v1/multiemail/multiple-emails.css')}}">
        {{-- Jquery UI --}}
        <link href='{{asset('css/v1/jquery-ui.min.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/v1/jquery-ui.structure.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/v1/jquery-ui.theme.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/v1/jquery.timepicker.min.css')}}' rel='stylesheet' type='text/css' />

        <link rel='stylesheet' href='{{asset('./css/v1/updated-design/ui.css')}}'>
        <link rel='stylesheet' href='{{asset('./css/v1/updated-design/ui2.css')}}'>
        <link rel='stylesheet' href='{{asset('./css/v1/updated-design/ui3.css')}}'>
        <link rel='stylesheet' href='{{asset('./css/v1/updated-design/ui4.css')}}'>
        <link rel='stylesheet' href='{{asset('./css/v1/updated-design/ui5.css')}}'>
        <link rel='stylesheet' href='{{asset('./css/v1/updated-design/ui6.css')}}'>

        <link rel='stylesheet' href='{{asset('./css/v1/seating/seat.css')}}'>
        
        <link rel='stylesheet' href='{{asset('./css/v1/css-updated/interface.css')}}'>

        {{-- Datatables RowGroup Extension --}}
        <link rel="stylesheet" href="https://cdn.datatables.net/rowgroup/1.2.0/css/rowGroup.dataTables.min.css">
        
        <meta name='csrf-token' content='{{ csrf_token() }}' />

        <script>
            let baseURL = '{{asset('')}}';
            let BasURL = '{{asset('')}}';
        </script>
        <style>
            .left-sidenav{
                /* background: linear-gradient(180deg, rgba(237,50,55,1) 0%, rgba(165,22,27,1) 49%, rgba(128,8,12,1) 100%); */
                /* background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%); */
                background-image: linear-gradient(43deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);

            }
        </style>
    </head>
    <body>
