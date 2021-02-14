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
    <div class="container">
        <div class="row">
            <c:forEach items="${map.tList}" var="rb">
            <div class="col-lg-2">
             <img src="/resources/roomBooking/img/${rb.image}" alt="Photo Error">
            
            </div>
            </c:forEach>
            <div class="col-lg-10">
                <style>
                    .styled-table {
                        border-collapse: collapse;
                        margin: 25px 0;
                        font-size: 0.9em;
                        font-family: sans-serif;
                        min-width: 400px;
                        box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
                    }
                    .styled-table thead tr {
                        background-color: #009879;
                        color: #ffffff;
                        text-align: left;
                    }
                    .styled-table th,
                    .styled-table td {
                        padding: 10px 12px;
                    }
                    .styled-table tbody tr {
                        border-bottom: 1px solid #dddddd;
                    }

                    .styled-table tbody tr:nth-of-type(even) {
                        background-color: #f3f3f3;
                    }

                    .styled-table tbody tr:last-of-type {
                        border-bottom: 2px solid #009879;
                    }
                </style>
                <div class="container py-3">
                    <div class="row mt-5 text-center">
                        <div class="col-md-5"></div>
                        <div class="col-md-9 py-5">
                            <h1 class="text-center pb-5"> Room Booking Package</h1>
                            <table border="2" width="650" cellspacing="2" class="styled-table">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Room Code</th>
                                        <th>Room Status</th>
                                        <th>Check In</th>
                                        <th>Check Out</th>
                                        <th>Room Type</th>
                                        <th>Bed Info</th>
                                        <th>Email</th>
                                        <th>Room Price</th>
                                        <th>Discount Amount</th>
                                        <th>Vat Amount</th>
                                        <th>Grand Total</th>
                                        <th>Image</th>

                                        <th>Invoice</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach  items="${map.roomList}" var="mm">
                                        <tr>
                                            <td>${mm.id}</td>
                                            <td>${mm.roomCode}</td>
                                            <td>${mm.roomStatus}</td>
                                            <td>${mm.checkIn}</td>
                                            <td>${mm.checkOut}</td>
                                            <td>${mm.roomType}</td>
                                            <td>${mm.bedInfo}</td>
                                            <td>${mm.email}</td>
                                            <td>${mm.roomPrice}</td>
                                            <td>${mm.tDiscount}</td>
                                            <td>${mm.tVat}</td>
                                            <td>${mm.grandTotal}</td>
                                            <td>${mm.image}</td>
                                            <td><button class="btn btn-info btn-sm"><a href="/roomBooking/invoice/${mm.id}"><i class="fa fa-edit" style="font-size:24px;"></i></a>Invoice</button></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>



    <!-- info section -->

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
                                <span> 196/3 Santinagar Malibag Dhaka-1217 </span>
                            </a>
                            <a href="">
                                <img src="/resources/assets/contact/images/call.png" alt="">
                                <span>+0088 01745067212</span>
                            </a>
                            <a href="">
                                <img src="/resources/assets/contact/images/mail.png" alt="">
                                <span> skmilton10@gmail.com</span>
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