<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>Dashtreme - Multipurpose Bootstrap4 Admin Template</title>
        <!-- loader-->
        <link href="/resources/loginAssets/css/pace.min.css" rel="stylesheet"/>
        <script src="/resources/loginAssets/js/pace.min.js"></script>
        <link rel="icon" href="/resources/loginAssets/images/favicon.ico" type="image/x-icon">
        <!-- Bootstrap core CSS-->
        <link href="/resources/loginAssets/css/bootstrap.min.css" rel="stylesheet"/>
        <!-- animate CSS-->
        <link href="/resources/loginAssets/css/animate.css" rel="stylesheet" type="text/css"/>
        <!-- Icons CSS-->
        <link href="/resources/loginAssets/css/icons.css" rel="stylesheet" type="text/css"/>
        <!-- Custom Style-->
        <link href="/resources/loginAssets/css/app-style.css" rel="stylesheet"/>

    </head>

    <body class="bg-theme bg-theme7">

        <!-- Start wrapper-->
        <div id="wrapper">

            <div class="height-100v d-flex align-items-center justify-content-center">
                <div class="card card-authentication1 mb-0">
                    <div class="card-body">
                        <div class="card-content p-2">
                            <div class="card-title text-uppercase pb-2">Admin Sign In</div>
                            <p class="pb-2">Please enter your email address & password </p>
                            <p class="pb-2">${map.status} </p>
                            <form action="/admin/login" method="POST">
                                <div class="form-group">
                                    <label for="exampleInputEmailAddress" class="">Email Address</label>
                                    <div class="position-relative has-icon-right">
                                        <input type="text" id="exampleInputEmailAddress" class="form-control input-shadow" placeholder="Email Address" name="username">
                                        <div class="form-control-position">
                                            <i class="icon-envelope-open"></i>
                                        </div>
                                    </div>
                                    <label for="exampleInputPassword" class="">Password</label>
                                    <div class="position-relative has-icon-right">
                                        <input type="password" id="exampleInputEmailAddress" class="form-control input-shadow" placeholder="Password" name="password">
                                        <div class="form-control-position">

                                        </div>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-light btn-block mt-3">Sign In</button>
                            </form>
                        </div>
                    </div>
                    <div class="card-footer text-center py-3">
                        <p class="text-warning mb-0">New User or Forgat Password<a href=""> Sign Up</a></p>
                    </div>
                </div>
            </div>

            <!--Start Back To Top Button-->
            <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
            <!--End Back To Top Button-->

            <!--start color switcher-->
            <div class="right-sidebar">
                <div class="switcher-icon">
                    <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
                </div>
                <div class="right-sidebar-content">

                    <p class="mb-0">Gaussion Texture</p>
                    <hr>

                    <ul class="switcher">
                        <li id="theme1"></li>
                        <li id="theme2"></li>
                        <li id="theme3"></li>
                        <li id="theme4"></li>
                        <li id="theme5"></li>
                        <li id="theme6"></li>
                    </ul>

                    <p class="mb-0">Gradient Background</p>
                    <hr>

                    <ul class="switcher">
                        <li id="theme7"></li>
                        <li id="theme8"></li>
                        <li id="theme9"></li>
                        <li id="theme10"></li>
                        <li id="theme11"></li>
                        <li id="theme12"></li>
                        <li id="theme13"></li>
                        <li id="theme14"></li>
                        <li id="theme15"></li>
                    </ul>

                </div>
            </div>
            <!--end color switcher-->

        </div><!--wrapper-->

        <!-- Bootstrap core JavaScript-->
        <script src="/resources/loginAssets/js/jquery.min.js"></script>
        <script src="/resources/loginAssets/js/popper.min.js"></script>
        <script src="/resources/loginAssets/js/bootstrap.min.js"></script>

        <!-- sidebar-menu js -->
        <script src="/resources/loginAssets/js/sidebar-menu.js"></script>

        <!-- Custom scripts -->
        <script src="/resources/loginAssets/js/app-script.js"></script>


    </body>
</html>
