
    <footer id='contact-us'>
        <div class='container'>
            <div class='footer-content'>
                <div class='row'>
                    <!-- ***** Contact Form Start ***** -->
                    <div class='col-lg-6 col-md-12 col-sm-12'>
                        <div class='contact-form'>
                            <form id='contact' action='' method='post'>
                                <div class='row'>
                                    <div class='col-md-6 col-sm-12'>
                                        <fieldset>
                                            <input name='name' type='text' id='name' placeholder='Full Name' required=''
                                                style='background-color: rgba(250,250,250,0.3);'>
                                        </fieldset>
                                    </div>
                                    <div class='col-md-6 col-sm-12'>
                                        <fieldset>
                                            <input name='email' type='email' id='email' placeholder='E-Mail Address'
                                                required='' style='background-color: rgba(250,250,250,0.3);'>
                                        </fieldset>
                                    </div>
                                    <div class='col-lg-12'>
                                        <fieldset>
                                            <textarea name='message' rows='6' id='message' placeholder='Your Message'
                                                required='' style='background-color: rgba(250,250,250,0.3);'></textarea>
                                        </fieldset>
                                    </div>
                                    <div class='col-lg-12'>
                                        <fieldset>
                                            <button type='submit' id='form-submit' class='main-button' onclick="return false;">Send Message
                                                Now</button>
                                        </fieldset>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- ***** Contact Form End ***** -->
                    <div class='right-content col-lg-6 col-md-12 col-sm-12'>
                        <h2>More About <em><img src='{{asset('./images/access-panel/HFNewLogo.jpg')}}' width='30%' ><p>E-learning Program</p></em></h2>
                        <p>Phasellus dapibus urna vel lacus accumsan, iaculis eleifend leo auctor. Duis at finibus odio.
                            Vivamus ut pharetra arcu, in porta metus. Suspendisse blandit pulvinar ligula ut elementum.
                            <br><br>If you need this contact form to send email to your inbox, you may follow our <a
                                rel='nofollow' href='' target='_parent'>contact</a> page
                            for more detail.</p>
                        <ul class='social'>
                            <li><a href=''><i class='fa fa-facebook'></i></a></li>
                            <li><a href='#'><i class='fa fa-twitter'></i></a></li>
                            <li><a href='#'><i class='fa fa-linkedin'></i></a></li>
                            <li><a href='#'><i class='fa fa-rss'></i></a></li>
                            <li><a href='#'><i class='fa fa-dribbble'></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class='row'>
                <div class='col-lg-12'>
                    <div class='sub-footer'>
                        <p>Copyright &copy; 2022 Hope Foundation

                     
                    </div>
                </div>
            </div>
        </div>
        <section class="arrow-up">
<button class="main-button"><i class='fa fa-angle-up'></i></button>
</section>
    </footer>

    <!-- jQuery -->
    <script src='{{asset('./js/v1/access-panel/jquery-2.1.0.min.js')}}'></script>

    <!-- Bootstrap -->
    <script src='{{asset('./js/v1/access-panel/popper.js')}}'></script>
    <script src='{{asset('./js/v1/access-panel/bootstrap.min.js')}}'></script>

    <!-- Plugins -->
    <script src='{{asset('./js/v1/access-panel/owl-carousel.js')}}'></script>
    <script src='{{asset('./js/v1/access-panel/scrollreveal.min.js')}}'></script>
    <script src='{{asset('./js/v1/access-panel/waypoints.min.js')}}'></script>
    <script src='{{asset('./js/v1/access-panel/jquery.counterup.min.js')}}'></script>
    <script src='{{asset('./js/v1/access-panel/imgfix.min.js')}}'></script>

    <!-- Global Init -->
    <script src='{{asset('./js/v1/access-panel/custom.js')}}'></script>
    <script type='text/javascript'>
        (function($) {

        'use strict';

        var fullHeight = function() {

            $('.js-fullheight').css('height', $(window).height());
            $(window).resize(function(){
                $('.js-fullheight').css('height', $(window).height());
            });

        };
        fullHeight();

    })(jQuery);

    </script>
    </body>
</html>