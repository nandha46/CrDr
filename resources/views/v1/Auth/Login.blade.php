<!doctype html>
<html lang='en'>
  <head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap' rel='stylesheet'>

    <link rel='stylesheet' href='{{asset('./fonts/style.css')}}'>

    <link rel='stylesheet' href='{{asset('./css/owl.carousel.min.css')}}'>

    <!-- Bootstrap CSS -->
    <link rel='stylesheet' href='{{asset('./css/bootstrap.min.css')}}'>
    
    <!-- Style -->
    <link rel='stylesheet' href='{{asset('./css/style.css')}}'>

    <title>CrDr  - Login</title>
  </head>
  <body>
  
  <div class='content'>
    <div class='container login-bg'>
      <div class='row'>
        <div class='col-md-6 order-md-2 login-right-img'>
          <img src='{{asset('./images/login-bg.jpg')}}' alt='Image' class='img-fluid img-fluid-new'>
        </div>
        <div class='col-md-6 contents'>
          <div class='row justify-content-center'>
            <div class='col-md-8'>
              <div class='mb-4 text-center'>
              <img src='{{asset('/images/logo-sm.png')}}' alt='logo-small' class='logo-sm'>
              
              @if(Session::has('Msg'))
              <p class='mb-4 lgn-error msg'>{{Session::get('Msg')}}</p>

              @endif

              @if(Session::has('SMsg'))
              <p class='mb-4 lgn-success msg'>{{Session::get('SMsg')}}</p>

              @endif
            </div>
            <form action='{{route('post-login')}}' method='post'>

              <input type='hidden' name='_token' value='{{csrf_token()}}'>

              <div class='form-group first'>
                <input type='text' class='form-control' id='username' name='username' placeholder='Username'>
              </div>
              <div class='form-group mb-4'>
                <input type='password' class='form-control' id='password' name='password' placeholder='Password'>
              </div>
              <div class='form-group last row'>
                <div class="col">
                  <input type='text' class='form-control' id='captcha' name='captcha' placeholder='Captcha' minlength="6" maxlength="6">
                </div>
                <div class="col" style="margin: auto">
                  <img src="{{asset($captcha)}}" alt="captcha">
                </div>
              </div>
              
              
              <div class='d-flex mb-5 align-items-center'>
                <label class='control control--checkbox mb-0 d-none'><span class='caption'>Remember me</span>
                  <input type='checkbox' checked='checked'/>
                  <div class='control__indicator'></div>
                </label>    
                <!-- <span class='ml-auto'><a href='' class='forgot-pass'>Forgot Password</a></span>  -->
              </div>

              <input type='submit' value='Log In' class='btn text-white btn-block btn-primary login-button'>

              <span class='d-block text-right my-4 text-muted powered-by'>v1 Powered by Trident Softwares </span>
              
              
            </form>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>

  <script src='{{asset('./js/v1/jquery.min.js')}}'></script>

  <script type='text/javascript'>
    
    setTimeout( () => {

      $('.msg').fadeOut()
    }, 4000)  
  </script>

  </body>
</html>