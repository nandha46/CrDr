<!DOCTYPE html>
<html lang='en'>
    <head>
        <meta charset='utf-8' />
        <title>Admin | Dashboard</title>
        <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
        <meta content='Admin & Dashboard - Powered by SKAT Technologies' name='description' />
        <meta content='' name='author' />
        <meta http-equiv='X-UA-Compatible' content='IE=edge' />

        <link rel='shortcut icon' href='{{asset('./images/favicon.png')}}'>

        <link href='{{asset('css/'.$appVersion.'/jquery-jvectormap-2.0.2.css')}}' rel='stylesheet'>

        <link href='{{asset('css/'.$appVersion.'/bootstrap.min.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/'.$appVersion.'/icons.min.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/'.$appVersion.'/metisMenu.min.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/'.$appVersion.'/daterangepicker.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/'.$appVersion.'/app.min.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/'.$appVersion.'/style.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/'.$appVersion.'/loader.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/'.$appVersion.'/chosen/prism.css')}}' rel='stylesheet'  />
        <link href='{{asset('css/'.$appVersion.'/chosen/chosen.css')}}' rel='stylesheet'  />
        {{-- glow button --}}
        <link href='{{asset('css/'.$appVersion.'/custom1.css')}}' rel='stylesheet'  />
        {{-- Calendar TImetable --}}
        <link rel="stylesheet" href="{{asset('css/'.$appVersion.'/calendar/calendar.css')}}">
        <link rel="stylesheet" href="{{asset('css/'.$appVersion.'/calendar/theme.css')}}">
        <link rel="stylesheet" href="{{asset('css/'.$appVersion.'/calendar/spinner.css')}}">
        <link rel="stylesheet" href="{{asset('css/'.$appVersion.'/calendar/style.css')}}">
        {{-- Multiemail --}}
        <link rel="stylesheet" href="{{asset('css/'.$appVersion.'/multiemail/multiple-emails.css')}}">
        {{-- Jquery UI --}}
        <link href='{{asset('css/'.$appVersion.'/jquery-ui.min.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/'.$appVersion.'/jquery-ui.structure.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/'.$appVersion.'/jquery-ui.theme.css')}}' rel='stylesheet' type='text/css' />
        <link href='{{asset('css/'.$appVersion.'/jquery.timepicker.min.css')}}' rel='stylesheet' type='text/css' />

        {{-- Seat arrangement --}}
        {{-- <link href='{{asset('css/'.$appVersion.'/css/seat.css')}}' rel='stylesheet'  /> --}}
        {{-- <link href='{{asset('css/'.$appVersion.'/css/multiselect.css')}}' rel='stylesheet'  /> --}}

        {{--Multiselect CSS  --}}
        {{-- <link href='{{asset('css/'.$appVersion.'/multiselect/chosen.css')}}' rel='stylesheet'  /> --}}
        {{-- <link href='{{asset('css/'.$appVersion.'/multiselect/prism.css')}}' rel='stylesheet'  /> --}}
        {{-- <link href='{{asset('css/'.$appVersion.'/multiselect/style.css')}}' rel='stylesheet'  /> --}}

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
            let baseURL = '{{asset('/insight/')}}';
            let BasURL = '{{asset('')}}';
        </script>
    </head>
    <body>
