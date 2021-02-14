
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

    </head>
    <body>

        <!--================Header Area =================-->
        <header class="header_area">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="index.html"><img src="/resources/lg.png" alt=""></a><br>
                    <p class="bg-success-light1"><strong style="font-size: 20px">Royal Tour & Hotel BD</strong></p>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li> 
                            <li class="nav-item"><a class="nav-link" href="https://beautifulbangladesh.gov.bd/page/about-bangladesh">About</a></li>
                            <li class="nav-item"><a class="nav-link" href="">Tourist Attraction</a></li>

                            <li class="nav-item"><a class="nav-link" href="/admin/dashbord">Admin</a></li>
                            <!--                            <li class="nav-item submenu dropdown">
                                                            <a href="/admin_dashboard/dashboard" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Admin DashBoard</a>
                                                            <ul class="dropdown-menu">
                                                                <li class="nav-item"><a class="nav-link" href="#">Admin</a></li>
                                                                <li class="nav-item"><a class="nav-link" href="/tourist/create">Tourist</a></li>
                                                                <li class="nav-item"><a class="nav-link" href="/product/create">Product</a></li>
                                                            </ul>
                                                        </li> -->

                            <li class="nav-item submenu dropdown">
                                <a href="/login/login" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="/admin/signIn">Admin Login</a></li>

                                    <li class="nav-item"><a class="nav-link" href="/login/signIn">Tourist</a></li>
                                </ul>
                            </li>

                            </li>

                            <li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>
                            <li class="nav-item"><a class="nav-link" href="/contact">Feedback</a></li>
                        </ul>
                    </div> 
                </nav>
            </div>
        </header>
        <!--================Header Area =================-->

        <section class="banner_area" id="div1">
            <div class="booking_table d_flex align-items-center">
                <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
                <div class="container">
                    <div class="banner_content text-center">
                        <h6>Away from monotonous life</h6>
                        <h2>Relax Your Mind</h2>
                        <p>If you are looking at blank cassettes on the web, you may be very confused at the<br> difference in price. You may see some for as low as $.17 each.</p>
                        <!--                        <a href="#" class="btn theme_btn button_hover" style="background-color: #f8bb00">Get Started</a>-->
                    </div>
                </div>
            </div>
            <div class="hotel_booking_area position">
                <div class="container">
                    <div class="hotel_booking_table">
                        <div class="col-md-3">

                            <h2>Book<br> Your Room</h2>
                        </div>
                        <div class="col-md-9">
                            <div class="boking_table">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="book_tabel_item">
                                            <div class="form-group">
                                                <div class="col-xl-12 ">
                                                    <label style="color: brown; font-size: 20px">Check In:</label>
                                                    <select class="form-control" name="checkIn" id="checkInVal">
                                                        <c:forEach var="f" items="${map.hList}">
                                                            <option value="${f.checkIn}">${f.checkIn}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xl-12 ">
                                                    <label style="color: brown; font-size: 20px"> Check Out:</label>
                                                    <select class="form-control" name="checkOut" id="checkOutVal">
                                                        <c:forEach var="f" items="${map.hList}">
                                                            <option value="${f.checkOut}">${f.checkOut}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="col-xl-12 ">
                                                <form action="/search" method="POST">
                                                    <input type="hidden" name="fromVal" id="fromVal" value=""/>
                                                    <input type="hidden" name="toVal" id="toVal" value=""/>
                                                    <div class="clo-lg-12">
                                                        <div class="about-btn pull-right">
                                                            <a href="/search/${f.checkIn}/${f.checkOut}"><button class="about-view btn-danger" style="height: 50px;width: 150px">
                                                                    search
                                                                </button>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="book_tabel_item">

                                            <button id="bookRoom" class="book_now_btn button_hover" type="button">Choose Room</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </section>


                            <!--================Banner Area =================-->
                            <marquee ng-blur="ACTION_ZOOM"> <h1 style="color: red; font-size:24px; "> Our  Tour Package are Available. Join Us Our All Are Attective Tour Package.</h1></marquee>
                            <!--================ Accomodation Area  =================-->
                            <section class="accomodation_area section_gap" id="div5">

                                <div class="container">
                                    <div class="section_title text-center">
                                        <h2 class="title_color">Join Us Our All Are Attective Tour Package Avaliable Hear</h2>
                                        <p>We all live in an age that belongs to the young at heart. Life that is becoming extremely fast, </p>
                                    </div>

                                    <div class="row mb_30">
                                        <c:forEach var="c" items="${map.cList}">
                                            <c:if test="${c.status  == 'Available'}">

                                                <div class="col-lg-3 col-sm-6">
                                                    <div class="accomodation_item text-center">
                                                        <div class="hotel_img">
                                                            <img src="/resources/cart/img/${c.image}" alt="Photo Error">
                                                            <a class="btn theme_btn button_hover" style="background-color: #f8bb00" data-toggle="modal" data-target="#myModal" onclick='showData(
                                                                            "${c.id}", "${c.place}", "${c.description}", "${c.arrivalDate}",
                                                                            "${c.departureDate}", "${c.adult}", "${c.children}",
                                                                            "${c.days}", "${c.night}", "${c.bus}", "${c.train}",
                                                                            "${c.flightCost}", "${c.food}", "${c.stayAmount}", "${c.code}", "${c.total}",
                                                                            "${c.discount}", "${c.vat}", "${c.others}", "${c.grandTotal}", "${c.tVat}",
                                                                            "${c.netTotal}", "${c.tDiscount}", "${c.accNo}", "${c.invoiceDate}")'>Book Now</a>
                                                        </div>
                                                        <a class="btn theme_btn button_hover" style="background-color: #f8bb00" data-toggle="modal" data-target="#myModal5" onclick='showData5("${c.place}", "${c.description}", "${c.arrivalDate}",
                                                                        "${c.departureDate}",
                                                                        "${c.days}", "${c.night}",
                                                                        "${c.code}",
                                                                        "${c.grandTotal}"
                                                                        )'>View Details</a>

                                                        <a href="payment/create"><h4 class="sec_h4">${c.place}</h4></a>
                                                        <h5>${c.days}Days<small>/${c.night} Night</small></h5>
                                                    </div>
                                                    <input type="hidden" id="place" value="${c.place}"/>
                                                </div>
                                            </c:if>
                                        </c:forEach>

                                    </div>
                                </div>
                            </section>
                            <!--================ Accomodation Area  =================-->

                            <!--================ Facilities Area  =================-->
                            <section class="facilities_area section_gap" id="div3">
                                <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background="">  
                                </div>
                                <div class="container">
                                    <div class="section_title text-center">
                                        <h2 class="title_w">Royal Facilities</h2>
                                        <p>Who are in extremely love with eco friendly system.</p>
                                    </div>
                                    <div class="row mb_30">
                                        <div class="col-lg-4 col-md-6">
                                            <div class="facilities_item">
                                                <h4 class="sec_h4"><i class="lnr lnr-dinner"></i>Restaurant</h4>
                                                <p>Usage of the Internet is becoming more common due to rapid advancement of technology and power.</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="facilities_item">
                                                <h4 class="sec_h4"><i class="lnr lnr-bicycle"></i>Sports CLub</h4>
                                                <p>Usage of the Internet is becoming more common due to rapid advancement of technology and power.</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="facilities_item">
                                                <h4 class="sec_h4"><i class="lnr lnr-shirt"></i>Swimming Pool</h4>
                                                <p>Usage of the Internet is becoming more common due to rapid advancement of technology and power.</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="facilities_item">
                                                <h4 class="sec_h4"><i class="lnr lnr-car"></i>Rent a Car</h4>
                                                <p>Usage of the Internet is becoming more common due to rapid advancement of technology and power.</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="facilities_item">
                                                <h4 class="sec_h4"><i class="lnr lnr-construction"></i>Gymnesium</h4>
                                                <p>Usage of the Internet is becoming more common due to rapid advancement of technology and power.</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="facilities_item">
                                                <h4 class="sec_h4"><i class="lnr lnr-coffee-cup"></i>Bar</h4>
                                                <p>Usage of the Internet is becoming more common due to rapid advancement of technology and power.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <!--================ Facilities Area  =================-->

                            <!--================ About History Area  =================-->
                            <section class="about_history_area section_gap" id="div2">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-6 d_flex align-items-center">
                                            <div class="about_content ">
                                                <h2 class="title title_color">About Us <br>Our History<br>Mission & Vision</h2>
                                                <p>inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially in the workplace. That’s why it’s crucial that, as women, our behavior on the job is beyond reproach. inappropriate behavior is often laughed.</p>
                                                <a href="#" class="button_hover theme_btn_two">Request Custom Price</a>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <img class="img-fluid" src="/resources/assets/home/image/about_bg.jpg" alt="img">
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <!--      ==========================room milton================  -->
                            <section class="accomodation_area section_gap" id="room">
                                <div class="container">
                                    <div class="section_title text-center">
                                        <h2 class="title_color">Toue Package Accomodation</h2>
                                        <p>We all live in an age that belongs to the young at heart. Life that is becoming extremely fast, </p>
                                    </div>
                                    <div class="row mb_30">
                                        <c:forEach var="rb" items="${map.hList}">
                                            <c:if test="${rb.roomStatus  == 'Available'}">


                                                <div class="col-lg-3 col-sm-6">
                                                    <div class="accomodation_item text-center">
                                                        <div class="hotel_img">
                                                            <img src="/resources/roomBooking/img/${rb.image}" alt="Photo Error">

                                                            <a href="/payment/create" class="btn theme_btn button_hover" style="background-color: #f8bb00" data-toggle="modal" data-target="#myModal2" onclick='showData2("${rb.roomCode}", "${rb.roomStatus}",
                                                                            "${rb.roomInfo}", "${rb.checkIn}", "${rb.checkOut}", "${rb.days}", "${rb.invoiceDate}", "${rb.roomPrice}", "${rb.total}", "${rb.tDiscount}", "${rb.tVat}", "${rb.grandTotal}", "${rb.discount}", "${rb.netTotal}", "${rb.vat}")'>Book Now</a>
                                                        </div>
                                                        <a href="/payment/create" class="btn theme_btn button_hover" data-toggle="modal" data-target="#myModal4" onclick='showData3("${rb.roomCode}", "${rb.roomStatus}",
                                                                        "${rb.roomInfo}", "${rb.checkIn}", "${rb.checkOut}", "${rb.days}", "${rb.invoiceDate}", "${rb.roomPrice}", "${rb.total}", "${rb.tDiscount}", "${rb.tVat}", "${rb.grandTotal}", "${rb.discount}", "${rb.netTotal}", "${rb.vat}")'><strong>View Details</strong></a>
                                                        <h5>${rb.roomInfo}-$${rb.roomPrice}<small>/${rb.days}</small></h5>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                            </section>
                            <!--================ About History Area  =================-->

                            <!--================ Testimonial Area  =================-->
                            <section class="testimonial_area section_gap">
                                <div class="container">
                                    <div class="section_title text-center">
                                        <h2 class="title_color">Testimonial from our Clients</h2>
                                        <p>The French Revolution constituted for the conscience of the dominant aristocratic class a fall from </p>
                                    </div>
                                    <div class="testimonial_slider owl-carousel">
                                        <div class="media testimonial_item">
                                            <img class="rounded-circle" src="/resources/assets/home/image/testtimonial-1.jpg" alt="">
                                            <div class="media-body">
                                                <p>As conscious traveling Paupers we must always be concerned about our dear Mother Earth. If you think about it, you travel across her face, and She is the </p>
                                                <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                                                <div class="star">
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                                </div>
                                            </div>
                                        </div>    
                                        <div class="media testimonial_item">
                                            <img class="rounded-circle" src="/resources/assets/home/image/testtimonial-1.jpg" alt="">
                                            <div class="media-body">
                                                <p>As conscious traveling Paupers we must always be concerned about our dear Mother Earth. If you think about it, you travel across her face, and She is the </p>
                                                <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                                                <div class="star">
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="media testimonial_item">
                                            <img class="rounded-circle" src="/resources/assets/home/image/testtimonial-1.jpg" alt="">
                                            <div class="media-body">
                                                <p>As conscious traveling Paupers we must always be concerned about our dear Mother Earth. If you think about it, you travel across her face, and She is the </p>
                                                <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                                                <div class="star">
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                                </div>
                                            </div>
                                        </div>    
                                        <div class="media testimonial_item">
                                            <img class="rounded-circle" src="/resources/assets/home/image/testtimonial-1.jpg" alt="">
                                            <div class="media-body">
                                                <p>As conscious traveling Paupers we must always be concerned about our dear Mother Earth. If you think about it, you travel across her face, and She is the </p>
                                                <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                                                <div class="star">
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <!--================ Testimonial Area  =================-->

                            <!--================ Latest Blog Area  =================-->
                            <section class="latest_blog_area section_gap">
                                <div class="container">
                                    <div class="section_title text-center">
                                        <h2 class="title_color">latest posts from blog</h2>
                                        <p>The French Revolution constituted for the conscience of the dominant aristocratic class a fall from </p>
                                    </div>
                                    <div class="row mb_30">
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-recent-blog-post">
                                                <div class="thumb">
                                                    <img class="img-fluid" src="/resources/assets/home/image/blog/blog-1.jpg" alt="post">
                                                </div>
                                                <div class="details">
                                                    <div class="tags">
                                                        <a href="#" class="button_hover tag_btn">Travel</a>
                                                        <a href="#" class="button_hover tag_btn">Life Style</a>
                                                    </div>
                                                    <a href="#"><h4 class="sec_h4">Low Cost Advertising</h4></a>
                                                    <p>Acres of Diamonds… you’ve read the famous story, or at least had it related to you. A farmer.</p>
                                                    <h6 class="date title_color">31st January,2018</h6>
                                                </div>	
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-recent-blog-post">
                                                <div class="thumb">
                                                    <img class="img-fluid" src="/resources/assets/home/image/blog/blog-2.jpg" alt="post">
                                                </div>
                                                <div class="details">
                                                    <div class="tags">
                                                        <a href="#" class="button_hover tag_btn">Travel</a>
                                                        <a href="#" class="button_hover tag_btn">Life Style</a>
                                                    </div>
                                                    <a href="#"><h4 class="sec_h4">Creative Outdoor Ads</h4></a>
                                                    <p>Self-doubt and fear interfere with our ability to achieve or set goals. Self-doubt and fear are</p>
                                                    <h6 class="date title_color">31st January,2018</h6>
                                                </div>	
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-recent-blog-post">
                                                <div class="thumb">
                                                    <img class="img-fluid" src="/resources/assets/home/image/blog/blog-3.jpg" alt="post">
                                                </div>
                                                <div class="details">
                                                    <div class="tags">
                                                        <a href="#" class="button_hover tag_btn">Travel</a>
                                                        <a href="#" class="button_hover tag_btn">Life Style</a>
                                                    </div>
                                                    <a href="#"><h4 class="sec_h4">It S Classified How To Utilize Free</h4></a>
                                                    <p>Why do you want to motivate yourself? Actually, just answering that question fully can </p>
                                                    <h6 class="date title_color">31st January,2018</h6>
                                                </div>	
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <!--================ Recent Area  =================-->

                            <!--================ start footer Area  =================-->	
                            <footer class="footer-area section_gap">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-3  col-md-6 col-sm-6">
                                            <div class="single-footer-widget">
                                                <h6 class="footer_title">About Agency</h6>
                                                <p>The world has become so fast paced that people don’t want to stand by reading a page of information, they would much rather look at a presentation and understand the message. It has come to a point </p>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="single-footer-widget">
                                                <h6 class="footer_title">Navigation Links</h6>
                                                <div class="row">
                                                    <div class="col-4">
                                                        <ul class="list_style">
                                                            <li><a href="#">Home</a></li>
                                                            <li><a href="#">Feature</a></li>
                                                            <li><a href="#">Services</a></li>
                                                            <li><a href="#">Portfolio</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-4">
                                                        <ul class="list_style">
                                                            <li><a href="#">Team</a></li>
                                                            <li><a href="#">Pricing</a></li>
                                                            <li><a href="#">Blog</a></li>
                                                            <li><a href="#">Contact</a></li>
                                                        </ul>
                                                    </div>										
                                                </div>							
                                            </div>
                                        </div>							
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="single-footer-widget">
                                                <h6 class="footer_title">Newsletter</h6>
                                                <p>For business professionals caught between high OEM price and mediocre print and graphic output, </p>		
                                                <div id="mc_embed_signup">
                                                    <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative">
                                                        <div class="input-group d-flex flex-row">
                                                            <input name="EMAIL" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email">
                                                            <button class="btn sub-btn"><span class="lnr lnr-location"></span></button>		
                                                        </div>									
                                                        <div class="mt-10 info"></div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="single-footer-widget instafeed">
                                                <h6 class="footer_title">InstaFeed</h6>
                                                <ul class="list_style instafeed d-flex flex-wrap">
                                                    <li><img src="/resources/assets/home/image/instagram/Image-01.jpg" alt=""></li>
                                                    <li><img src="/resources/assets/home/image/instagram/Image-02.jpg" alt=""></li>
                                                    <li><img src="/resources/assets/home/image/instagram/Image-03.jpg" alt=""></li>
                                                    <li><img src="/resources/assets/home/image/instagram/Image-04.jpg" alt=""></li>
                                                    <li><img src="/resources/assets/home/image/instagram/Image-05.jpg" alt=""></li>
                                                    <li><img src="/resources/assets/home/image/instagram/Image-06.jpg" alt=""></li>
                                                    <li><img src="/resources/assets/home/image/instagram/Image-07.jpg" alt=""></li>
                                                    <li><img src="/resources/assets/home/image/instagram/Image-08.jpg" alt=""></li>
                                                </ul>
                                            </div>
                                        </div>						
                                    </div>
                                    <div class="border_line"></div>
                                    <div class="row footer-bottom d-flex justify-content-between align-items-center">
                                        <p class="col-lg-8 col-sm-12 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                                        <div class="col-lg-4 col-sm-12 footer-social">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-dribbble"></i></a>
                                            <a href="#"><i class="fa fa-behance"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </footer>
                            <!--================ End footer Area  =================-->
                            <!--================ Start Modal Area  =================-->

                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h6 class="modal-title">Milton's Tourism & Hotel Management System</h6>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body     cart -->
                                        <div class="modal-body">

                                            <form action="/cart/cartUpdate" method="POST">
                                                <!--                        Modal body-->
                                                <h3>  Cart (Package) Info..</h3>
                                                <div class="container" id="packageInfo">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="row">
                                                                <div class="col-md-6">

                                                                    <input type="hidden" class="input-group-addon" name="id" id="aa"/>
                                                                    <input type="hidden" class="input-group-addon" name="place" id="a"/>
                                                                    <input type="hidden" class="input-group-addon" name="description" id="b"/>
                                                                    <input type="hidden" class="input-group-addon" name="arrivalDate" id="c"/>
                                                                    <input type="hidden" class="input-group-addon" name="departureDate" id="d"/>
                                                                    <input type="hidden" class="input-group-addon" name="adult" id="e"/>
                                                                    <input type="hidden" class="input-group-addon" name="children" id="f"/>
                                                                    <input type="hidden" class="input-group-addon" name="days" id="g"/>
                                                                    <input type="hidden" class="input-group-addon" name="night" id="h"/>
                                                                    <input type="hidden" class="input-group-addon" name="bus" id="i"/>
                                                                    <input type="hidden" class="input-group-addon" name="train" id="j"/>
                                                                    <input type="hidden" class="input-group-addon" name="flightCost" id="k"/>
                                                                </div>   
                                                                <div class="col-md-6">

                                                                    <input type="hidden" class="input-group-addon" name="food" id="l"/>
                                                                    <input type="hidden" class="input-group-addon" name="stayAmount" id="m"/>
                                                                    <input type="hidden" class="input-group-addon" name="code" id="n"/>
                                                                    <input type="hidden" class="input-group-addon" name="total" id="o"/>
                                                                    <input type="hidden" class="input-group-addon" name="discount" id="p"/>
                                                                    <input type="hidden" class="input-group-addon" name="vat" id="q"/>
                                                                    <input type="hidden" class="input-group-addon" name="others" id="r"/>
                                                                    <input type="hidden" class="input-group-addon" name="grandTotal" id="s"/>
                                                                    <input type="hidden" class="input-group-addon" name="tVat" id="t"/>
                                                                    <input type="hidden" class="input-group-addon" name="netTotal" id="u"/>
                                                                    <input type="hidden" class="input-group-addon" name="tDiscount" id="v"/>
                                                                    <input type="hidden" class="input-group-addon" name="accNo" id="w"/>
                                                                    <input type="hidden" class="input-group-addon" name="invoiceDate" id="x"/>



                                                                </div> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!--Collect Tourist Info-->
                                                <div class="container" >

                                                    <div class="row" id="tour2">

                                                        <div class="col-md-12">
                                                            <div class="wizard-content">

                                                                <div>
                                                                    <section>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" name="firstName" placeholder="First Name">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" name="lastName" placeholder="Last Name">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="email" class="form-control" name="email" placeholder="Email">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" name="phone" placeholder="Phone">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" name="city" placeholder="City">

                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="date"  class="form-control date-picker" placeholder="Death of Birth " name="dob" >
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Nid" name="nid">
                                                                                </div>
                                                                            </div>


                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="User Name" name="username">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-12">
                                                                                <div class="form-group">
                                                                                    <input type="password" class="form-control" placeholder="Password" name="password">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </section>
                                                                </div>
                                                                <!--Payment-->
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <br/>
                                                    <h4 style="font-weight: bold; color: #761c19">Provide Your Card Information</h4>
                                                    <div class="row">
                                                        <div class="col-md-12" style="margin-left: 80px">
                                                            <img src="/resources/assets/card.jpg" alt="Master Card"/>

                                                        </div>

                                                    </div><br/>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label>Cart Type:</label>
                                                            <select class="form-control" name="cartType">
                                                                <option>Select Card</option>
                                                                <option value="debit">Debit Card</option>
                                                                <option value="credit">Credit Card</option>
                                                                <option value="paypal">Paypal</option>
                                                                <option value="payoner">Payoner</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label>Expire Date:</label>
                                                            <input class="form-control" name="expireDate" placeholder="expireDate"  type="date">

                                                        </div>
                                                        <div class="col-md-6">
                                                            <label>Cart No:</label>
                                                            <input class="form-control" name="cartNo" placeholder="Cart Number"  type="text">

                                                        </div>
                                                        <div class="col-md-6">
                                                            <label>CVV No:</label>
                                                            <input class="form-control" name="cvvNo" placeholder="CVV Number" type="text">

                                                        </div>
                                                    </div>
                                                    <br/>
                                                    <button type="submit" class="btn btn-success">Request to Book</button>
                                                </div>


                                            </form>        

                                        </div>

                                    </div>
                                </div>
                            </div>
                            <=======modal room booking=========>
                            <!-- Modal header     room booking -->
                            <div class="modal" id="myModal2">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4>Please Provide you Information</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body     room booking -->
                                        <div class="modal-body">

                                            <form action="/tourist/save" method="POST">

                                                <div class="container" id="packageInfo2">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="row">
                                                                <div class="col-md-6">

                                                                    <input type="hidden" class="input-group-addon" name="roomCode" id="roomCode"/>
                                                                    <input type="hidden" class="input-group-addon" name="roomStatus" id="roomStatus"/>
                                                                    <input type="hidden" class="input-group-addon" name="roomInfo" id="roomInfo"/>

                                                                    <input type="hidden" class="input-group-addon" name="discount" id="discount"/>

                                                                    <input type="hidden" class="input-group-addon" name="days" id="days"/>

                                                                </div>   
                                                                <div class="col-md-6">
                                                                    <input type="hidden" class="input-group-addon" name="invoiceDate" id="invoiceDate"/>
                                                                    <input type="hidden" class="input-group-addon" name="checkIn" id="checkIn"/>
                                                                    <input type="hidden" class="input-group-addon" name="checkOut" id="checkOut"/>
                                                                    <input type="hidden" class="input-group-addon" name="roomPrice" id="roomPrice"/>
                                                                    <input type="hidden" class="input-group-addon" name="total" id="total"/>
                                                                    <input type="hidden" class="input-group-addon" name="tVat" id="tVat"/>
                                                                    <input type="hidden" class="input-group-addon" name="tDiscount" id="tDiscount"/>

                                                                    <input type="hidden" class="input-group-addon" name="vat" id="vat"/>
                                                                    <input type="hidden" class="input-group-addon" name="netTotal" id="netTotal"/>
                                                                    <input type="hidden" class="input-group-addon" id="grandTotal" name="grandTotal"/>

                                                                </div> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!--Collect Tourist Info-->
                                                <div class="container" >

                                                    <div class="row" id="tour2">

                                                        <div class="col-md-12">
                                                            <div class="wizard-content">

                                                                <div>
                                                                    <section>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" name="firstName" placeholder="First Name">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" name="lastName" placeholder="Last Name">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="email" class="form-control" name="email" placeholder="Email">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" name="phone" placeholder="Phone">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" name="city" placeholder="City">

                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="date"  class="form-control date-picker" placeholder="Death of Birth " name="dob" >
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Nid" name="nid">
                                                                                </div>
                                                                            </div>


                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="User Name" name="username">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-12">
                                                                                <div class="form-group">
                                                                                    <input type="password" class="form-control" placeholder="Password" name="password">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </section>
                                                                </div>
                                                                <!--Payment-->
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <br/>
                                                    <h4 style="font-weight: bold; color: #761c19">Provide Your Card Information</h4>
                                                    <div class="row">
                                                        <div class="col-md-12" style="margin-left: 80px">
                                                            <img src="/resources/assets/card.jpg" alt="Master Card"/>

                                                        </div>

                                                    </div><br/>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label>Cart Type:</label>
                                                            <select class="form-control" name="cartType">
                                                                <option>Select Card</option>
                                                                <option value="debit">Debit Card</option>
                                                                <option value="credit">Credit Card</option>
                                                                <option value="paypal">Paypal</option>
                                                                <option value="payoner">Payoner</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label>Expire Date:</label>
                                                            <input class="form-control" name="expireDate" placeholder="expireDate"  type="date">

                                                        </div>
                                                        <div class="col-md-6">
                                                            <label>Cart No:</label>
                                                            <input class="form-control" name="cartNo" placeholder="Cart Number"  type="text">

                                                        </div>
                                                        <div class="col-md-6">
                                                            <label>CVV No:</label>
                                                            <input class="form-control" name="cvvNo" placeholder="CVV Number" type="text">

                                                        </div>
                                                    </div>
                                                    <br/>
                                                    <button type="submit" class="btn btn-success">Request to Book</button>
                                                </div>

                                            </form>


                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--View Details modal-->

                            <div class="modal fade" id="myModal5" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"></button>
                                            <h4 class="modal-title text-center">Tour Package Info...</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="row">
                                                        <div class="col-md-6">

                                                            Place :<input type="text" class="input-group-addon" name="place" id="aaa"/>
                                                            Description : <input type="text" class="input-group-addon" name="description" id="bb"/>

                                                            Arrival Date : <input type="text" class="input-group-addon" name="arrivalDate" id="cc"/>
                                                            Departure Date : <input type="text" class="input-group-addon" name="departureDate" id="dd"/>

                                                            <input type="hidden" class="input-group-addon" name="id" id="aa"/>

                                                            <input type="hidden" class="input-group-addon" name="adult" id="e"/>
                                                            <input type="hidden" class="input-group-addon" name="children" id="f"/>

                                                            <input type="hidden" class="input-group-addon" name="bus" id="i"/>
                                                            <input type="hidden" class="input-group-addon" name="train" id="j"/>
                                                            <input type="hidden" class="input-group-addon" name="flightCost" id="k"/>
                                                        </div>   
                                                        <div class="col-md-6">
                                                            Number of Days : <input type="text" class="input-group-addon" name="days" id="ee"/>
                                                            Number of Night : <input type="text" class="input-group-addon" name="night" id="ff"/>
                                                            <input type="hidden" class="input-group-addon" name="food" id="l"/>
                                                            <input type="hidden" class="input-group-addon" name="stayAmount" id="m"/>
                                                            Code:<input type="text" class="input-group-addon" name="code" id="gg"/>
                                                            <input type="hidden" class="input-group-addon" name="total" id="o"/>
                                                            <input type="hidden" class="input-group-addon" name="discount" id="p"/>
                                                            <input type="hidden" class="input-group-addon" name="vat" id="q"/>
                                                            <input type="hidden" class="input-group-addon" name="others" id="r"/>
                                                            Grand Total:<input type="text" class="input-group-addon" name="grandTotal" id="hh"/>
                                                            <input type="hidden" class="input-group-addon" name="tVat" id="t"/>
                                                            <input type="hidden" class="input-group-addon" name="netTotal" id="u"/>
                                                            <input type="hidden" class="input-group-addon" name="tDiscount" id="v"/>
                                                            <input type="hidden" class="input-group-addon" name="accNo" id="w"/>
                                                            <input type="hidden" class="input-group-addon" name="invoiceDate" id="x"/>


                                                        </div>   

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="modal fade" id="myModal4" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"></button>
                                            <h4 class="modal-title text-center">Room Information</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="row">
                                                        <div class="col-md-6">

                                                            Room Code :<input type="text" class="input-group-addon" name="roomCode" id="roomCode3"/>
                                                            Room Status : <input type="text" class="input-group-addon" name="roomStatus" id="roomStatus3"/>
                                                            Room Info : <input type="text" class="input-group-addon" name="roomInfo" id="roomInfo3"/>
                                                            Check In : <input type="text" class="input-group-addon" name="checkIn" id="checkIn3"/>
                                                            Check Out : <input type="text" class="input-group-addon" name="checkOut" id="checkOut3"/>
                                                            Number of Days : <input type="text" class="input-group-addon" name="days" id="days3"/>

                                                        </div>   
                                                        <div class="col-md-6">
                                                            <input type="hidden" class="input-group-addon" name="invoiceDate" id="invoiceDate3"/>
                                                            Room Price : <input type="text" class="input-group-addon" name="roomPrice" id="roomPrice3"/>
                                                            Total : <input type="text" class="input-group-addon" name="total" id="total3"/>
                                                            Vat : <input type="text" class="input-group-addon" name="tVat" id="tVat3"/>
                                                            Discount : <input type="text" class="input-group-addon" name="tDiscount" id="tDiscount3"/>
                                                            Grand Total : <input type="text" class="input-group-addon" name="grandTotal" id="grandTotal3"/>
                                                            <input type="hidden" class="input-group-addon" name="discount" id="discount3"/>
                                                            <input type="hidden" class="input-group-addon" name="netTotal" id="netTotal3"/>
                                                            <input type="hidden" class="input-group-addon" name="vat" id="vat3"/>
                                                        </div> 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>

                                </div>
                            </div>


                            <!--================ End Modal Area  =================-->
                            <!-- Optional JavaScript -->
                            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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

                            <script>
                                                $("#room").hide();
                                                $("#bookRoom").on("click", function () {
                                                    $("#div1").hide();
                                                    $("#div2").hide();
                                                    $("#div3").hide();
                                                    $("#div5").hide();
                                                    $("#room").show();
                                                });
                                                function showData(aa, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x) {
                                                    $("#aa").val(aa);
                                                    $("#a").val(a);
                                                    $("#b").val(b);
                                                    $("#c").val(c);
                                                    $("#d").val(d);
                                                    $("#e").val(e);
                                                    $("#f").val(f);
                                                    $("#g").val(g);
                                                    $("#h").val(h);
                                                    $("#i").val(i);
                                                    $("#j").val(j);
                                                    $("#k").val(k);
                                                    $("#l").val(l);
                                                    $("#m").val(m);
                                                    $("#n").val(n);
                                                    $("#o").val(o);
                                                    $("#p").val(p);
                                                    $("#q").val(q);
                                                    $("#r").val(r);
                                                    $("#s").val(s);
                                                    $("#t").val(t);
                                                    $("#u").val(u);
                                                    $("#v").val(v);
                                                    $("#w").val(w);
                                                    $("#x").val(x);

                                                    alert(a);
                                                }
                                                $("#tour1").hide();
                                                $("#paymentDiv").hide();
                                                $("#proceed1").on("click", function () {
                                                    $("#tour1").show();
                                                    $("#paymentDiv").hide();
                                                    $("#packageInfo").hide();
                                                });
                                                $("#btnContinue").on("click", function () {
                                                    $("#tour1").hide();
                                                    $("#paymentDiv").show();
                                                    $("#packageInfo").hide();
                                                });
                                                function showData2(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o) {

                                                    $("#roomCode").val(a);
                                                    $("#roomStatus").val(b);
                                                    $("#roomInfo").val(c);
                                                    $("#checkIn").val(d);
                                                    $("#checkOut").val(e);
                                                    $("#days").val(f);
                                                    $("#invoiceDate").val(g);
                                                    $("#roomPrice").val(h);
                                                    $("#total").val(i);
                                                    $("#tDiscount").val(j);
                                                    $("#tVat").val(k);
                                                    $("#grandTotal").val(l);
                                                    $("#discount").val(m);
                                                    $("#netTotal").val(n);
                                                    $("#vat").val(o);
                                                }

                                                function alertt() {
                                                    alert("Room Booking");
                                                }


                                                function showData3(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o) {

                                                    $("#roomCode3").val(a);
                                                    $("#roomStatus3").val(b);
                                                    $("#roomInfo3").val(c);
                                                    $("#checkIn3").val(d);
                                                    $("#checkOut3").val(e);
                                                    $("#days3").val(f);
                                                    $("#invoiceDate3").val(g);
                                                    $("#roomPrice3").val(h);
                                                    $("#total3").val(i);
                                                    $("#tDiscount3").val(j);
                                                    $("#tVat3").val(k);
                                                    $("#grandTotal3").val(l);
                                                    $("#discount3").val(m);
                                                    $("#netTotal3").val(n);
                                                    $("#vat3").val(o);
                                                    alert(a);
                                                }
                                                function showData5(aaa, bb, cc, dd, ee, ff, gg, hh) {

                                                    $("#aaa").val(aaa);
                                                    $("#bb").val(bb);
                                                    $("#cc").val(cc);
                                                    $("#dd").val(dd);
                                                    $("#ee").val(ee);
                                                    $("#ff").val(ff);
                                                    $("#gg").val(gg);
                                                    $("#hh").val(hh);
                                                    alert(aaa);
                                                }



                                                $("#checkInVal").on("change", function () {
                                                    $("#fromVal").val(this.value);
                                                    console.log(this.value)
                                                })

                                                $("#checkOutVal").on("change", function () {
                                                    $("#toVal").val(this.value);
                                                    console.log(this.value)
                                                })


                            </script>

                            </body>
                            </html>