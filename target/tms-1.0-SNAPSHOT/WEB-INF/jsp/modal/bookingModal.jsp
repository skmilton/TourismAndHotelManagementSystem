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

    </head>
    <body>

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
                            <li class="nav-item"><a class="nav-link" href="/card/card">Card</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                        </ul>
                    </div> 
                </nav>
            </div>
        </header>
        <!--================Header Area =================-->
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-9">
                    <div class="wizard-content">
                        <form class="tab-wizard wizard-circle wizard vertical" action="/modal/bookingModal" method="POST" >
                            <h1 class="py-5" style="margin-top: 25px "> Room Details</h1>
                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">Modal Heading</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            Modal body..
                                        </div>

                                        <!-- Modal footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>