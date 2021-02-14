<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="/resources/assets/home/image/favicon.png" type="/resources/assets/home/image/png">
        <title>Tourism Management System</title>
        <!--modal-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="/resources/assets/home/css/bootstrap.css">
        <link rel="stylesheet" href="/resources/assets/home/css/linericon/style.css">
        <link rel="stylesheet" href="/resources/assets/home/css/font-awesome.min.css">
        <link rel="stylesheet" href="/resources/assets/home/css/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="/resources/assets/home/css/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="/resources/assets/home/css/nice-select//resources/assets/home/css/nice-select.css">
        <link rel="stylesheet" href="/resources/assets/home/css/owl-carousel/owl.carousel.min.css">
        <!-- main css -->
        <link rel="stylesheet" href="/resources/assets/home/css/style.css">
        <link rel="stylesheet" href="/resources/assets/home/css/responsive.css">
        <!--//modal-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


        <!-- slider stylesheet -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Raleway:400,700&display=swap" rel="stylesheet" />

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="/resources/assets/contact/css/bootstrap.css" />

        <!-- Custom styles for this template -->
        <link href="/resources/assets/contact/css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="/resources/assets/contact/css/responsive.css" rel="stylesheet" />
    </head>

    <body class="sub_page">
        <!--================Header Area =================-->
        <header class="header_area">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="index.html"><img src="/resources/assets/home/image/Logo.png" alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li> 
                            <li class="nav-item"><a class="nav-link" href="/package/create">Holiday Package</a></li>
                            <li class="nav-item"><a class="nav-link" href="/hotel/create">Hotel</a></li>
                            <li class="nav-item"><a class="nav-link" href="tour">Tour
                                </a></li>
                            <li class="nav-item"><a class="nav-link" href="/admin/dashbord">Admin</a></li>
                            <!--                            <li class="nav-item submenu dropdown">
                                                            <a href="/admin_dashboard/dashboard" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Admin DashBoard</a>
                                                            <ul class="dropdown-menu">
                                                                <li class="nav-item"><a class="nav-link" href="#">Admin</a></li>
                                                                <li class="nav-item"><a class="nav-link" href="/tourist/create">Tourist</a></li>
                                                                <li class="nav-item"><a class="nav-link" href="/product/create">Product</a></li>
                                                            </ul>
                                                        </li> -->
                            <li class="nav-item"><a class="nav-link" href="/login/login">Login</a>
                            <li class="nav-item submenu dropdown">
                                <a href="/login/login" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="#">Admin Login</a></li>
                                    <li class="nav-item"><a class="nav-link" href="/touristManager/create">Tourist Manager Login</a></li>
                                    <li class="nav-item"><a class="nav-link" href="/tourist/create">Tourist</a></li>
                                </ul>
                            </li>

                            </li>
                            <li class="nav-item"><a class="nav-link" href="/card/create">Card</a></li>
                            <li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>
                        </ul>
                    </div> 
                </nav>
            </div>
        </header>
        <!-- end header section -->
    </div>
    <!-- end hero area -->


    <!-- contact section -->

    <section class="contact_section layout_padding-bottom layout_padding2-top">
        <div class="container px-0">
            <div class="heading_container">
                <h2 class="">
                    Con<span>ta</span>ct Us 
                </h2>
            </div>

        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3>${map.success}</h3>
                    <h3 style="text-align: center; color: red">${map.failed}</h3>
                    
                </div>
                
            </div>
        </div>
    </section>

    <!-- end contact section -->

    <!-- client section -->

    

    <!-- end client section -->


    <!-- info section -->

<br/>
<br/>
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4">
        <form action="/tourist/invoice-page" method="post">
            <input class="form-control border-dark" type="text" name="phone" placeholder="Please enter your phone number">
            <br/><button  class="btn btn-info" type="submit">Invoice</button>
        </form>
    </div>
    <div class="col-md-4"></div>
</div>
<br/>

<br/>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
    <section class="info_section  layout_padding2-top">
        <div class="social_container">
            <div class="social_box">
                <a href="">
                    <img src="/resources/assets/contact/images/fb.png" alt="">
                </a>
                <a href="">
                    <img src="/resources/assets/contact/images/twitter.png" alt="">
                </a>
                <a href="">
                    <img src="/resources/assets/contact/images/linkedin.png" alt="">
                </a>
                <a href="">
                    <img src="/resources/assets/contact/images/youtube.png" alt="">
                </a>
            </div>
        </div>
        <div class="info_container ">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <h6>
                            ABOUT US
                        </h6>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doLorem ipsum dolor sit amet, consectetur adipiscing elit, sed doLorem ipsum dolor sit amet,
                        </p>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h6>
                            Instagram
                        </h6>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipi
                            scing elit, sed doLorem ipsum dolor sit
                        </p>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h6>
                            NEED HELP
                        </h6>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doLorem ipsum dolor sit amet, consectetur adipiscing elit, sed doLorem ipsum dolor sit amet,
                        </p>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h6>
                            CONTACT US
                        </h6>
                        <div class="info_link-box">
                            <a href="">
                                <img src="/resources/assets/contact/images/location.png" alt="">
                                <span> Gb road 123 london Uk </span>
                            </a>
                            <a href="">
                                <img src="/resources/assets/contact/images/call.png" alt="">
                                <span>+01 12345678901</span>
                            </a>
                            <a href="">
                                <img src="/resources/assets/contact/images/mail.png" alt="">
                                <span> demo@gmail.com</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer section -->
        <section class=" footer_section">
            <div class="container">
                <p>
                    &copy; <span id="displayYear"></span> All Rights Reserved By
                    <a href="https://html.design/">Free Html Templates</a>
                </p>
            </div>
        </section>
        <!-- footer section -->

    </section>

    <!-- end info section -->
    <script src="/resources/assets/home/js/jquery-3.2.1.min.js"></script>
    <script src="/resources/assets/home/js/popper.js"></script>
    <script src="/resources/assets/home/js/bootstrap.min.js"></script>
    <script src="/resources/assets/home/css/owl-carousel/owl.carousel.min.js"></script>
    <script src="/resources/assets/home/js/jquery.ajaxchimp.min.js"></script>
    <script src="/resources/assets/home/js/mail-script.js"></script>
    <script src="/resources/assets/home/css/bootstrap-datepicker/bootstrap-datetimepicker.min.js"></script>
    <script src="/resources/assets/home/js/jquery.nice-select.js"></script>
    <script src="/resources/assets/home/js/mail-script.js"></script>
    <script src="/resources/assets/home/js/stellar.js"></script>
    <script src="/resources/assets/home/css/lightbox/simpleLightbox.min.js"></script>
    <script src="/resources/assets/home/js/custom.js"></script>
    <!--map-->
    <script type="text/javascript" src="/resources/assets/contact/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="/resources/assets/contact/js/bootstrap.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
    </script>
    <script type="text/javascript" src="/resources/assets/contact/js/custom.js"></script>
</body>

</html>