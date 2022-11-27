

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