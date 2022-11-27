<!DOCTYPE html>
<html lang='en'>

<head>
    <meta charset='UTF-8'>
    <title>Access Denied</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Arvo'>
    <link rel='stylesheet' href='{{asset('css/'.$appVersion.'/error_style.css')}}'>

</head>

<body>
    <section class='page_404'>
        <div class='container'>
            <div class='row'>
                <div class='col-sm-12 '>
                    <div class='col-sm-10 col-sm-offset-1  text-center'>
                        <div class='four_zero_four_bg'>
                            <h1 class='text-center '>403</h1>
                        </div>

                        <div class='contant_box_404'>
                            <h3 class='h2'>Access Denied</h3>

                            <br/>

                            <p>You do not have sufficient permission to access this page. Contact your administrator.</p>

                            <br/>You may have access to use this <br/>

                            <?php

                            if(strpos($urls, '&&') !== false){

                                $urlsNew = explode('&&', $urls);

                                foreach($urlsNew as $sepUrls){

                                    $urlsSep = explode(':', $sepUrls);

                                    $finalUrl = str_replace('%2F', '/', $urlsSep[1]);
                                ?>
                                    <a href='<?= $assesurl.$finalUrl?>' class='link_404'><?= ucfirst($finalUrl) ?></a>
                                <?php
                                    unset($urlsSep);
                                }
                            }else{

                                $urlsSep = explode(':', $urls);
                                
                                $finalUrl = str_replace('%2F', '/', $urlsSep[1]);
                            ?>
                                <a href='<?= $assesurl.$finalUrl?>' class='link_404'><?= ucfirst($finalUrl) ?></a>
                            <?php
                            }
                            ?>

                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- partial -->

</body>

</html>