<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/c/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <!--<title> Login and Registration Form in HTML & CSS | CodingLab </title>-->
    <link rel="stylesheet" href="{{asset('./css/v1/newStudentLogin/style.css')}}" />
    <!-- Fontawesome CDN Link -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body style="background-image: url({{asset('./images/newStudentLogin/bg1.jpg')}}) no-repeat center">
    <div class="container">
      <input type="checkbox" id="flip" />
      <div class="cover">
        <div class="front">
          <img src="{{asset('./images/newStudentLogin/school.jpg')}}" alt="school img" />
          <div class="text">
            <span class="text-1"
              >Education is the passport to the future, for tomorrow belongs to
              those who prepare for it today</span
            >
          </div>
        </div>
      </div>
      <div class="forms">
        <div class="form-content">
          <div class="login-form">
            <img src="{{asset('./images/newStudentLogin/logo.png')}}" alt="logo" class="brand-logo-login" />
            <div class="title">Let's get connected</div>
            @if(Session::has('Msg'))
								<p class='mb-4 lgn-error msg'>{{Session::get('Msg')}}</p>
							@endif
            <form action="{{route('post-student-login')}}" method="POST">
              <input type='hidden' name='_token' value='{{csrf_token()}}'>
              <div class="input-boxes">
                <div class="input-box">
                  <i class="fas fa-user"></i>
                  <input
                    type="text"
                    placeholder="Enter your username" id='username' name='username'
                    required
                  />
                </div>
                <div class="input-box">
                  <i class="fas fa-lock"></i>
                  <input
                    type="password"
                    placeholder="Enter your password" id='password' name='password'
                    required
                  />
                </div>
                <div class='d-flex mb-5 align-items-center'>
                  <label class='control control--checkbox mb-0 d-none'><span class='caption'>Remember me</span>
                    <input type='checkbox' checked='checked'/>
                    <div class='control__indicator'></div>
                  </label>    
                  <!-- <span class='ml-auto'><a href='' class='forgot-pass'>Forgot Password</a></span>  -->
                </div>
                <div class="button input-box">
                  <input type="submit" value="Login" />
                </div>
                <div class="text sign-up-text">
                  v0.1.0 Powered by Hope Foundation
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
