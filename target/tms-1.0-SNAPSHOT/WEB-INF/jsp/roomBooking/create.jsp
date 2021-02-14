<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>
<form class="tab-wizard wizard-circle wizard vertical" action="/roomBooking/store" method="POST" enctype="multipart/form-data">
    <div class="container" id="div1">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-9">
                <div class="wizard-content">
                    <h1 class="py-5" style="margin-top: 25px">Room Booking</h1>
                    <div style="margin-left: 50px">
                        <img src="/resources/assets/room1.jpg" alt="Master Card"/>
                        <img src="/resources/assets/room2.jpg" alt="Master Card"/>
                    </div><br/>

                    <h3 class="py-5" style="margin-top: 25px">Create Room </h3>
                    <section>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="in">Room Code:</label> 
                                    <input class="form-control" id="da1" name="roomCode" placeholder="roomCode" type="text">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="in">Room Status:</label> 

                                    <select class="form-control" name="roomStatus">
                                        <option value="Available">Available</option>
                                        <option value="Booked">Booked</option>

                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="in">Check In:</label> 
                                    <input class="form-control" id="da2" name="checkIn" placeholder="2015-06-05"  type="datetime-local"> 
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="in">Check out:</label> 
                                    <input class="form-control" id="da2" name="checkOut" placeholder="2015-06-05"  type="datetime-local"> 
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Room Info:</label>
                                    <input class="form-control" id="da2" name="roomInfo" placeholder="Room Info"  type="text"> 
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Number of Days & Night:</label>
                                    <input class="form-control" id="roomPrice" name="days" placeholder="Number of Days & Night" type="text">

                                </div>
                            </div>
                        </div>
                        <!--    //invoice Date-->          
                        <input class="form-control" id="invoiceDate" name="invoiceDate" placeholder="Invoice Date"  type="hidden">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Room Price:</label>
                                    <input class="form-control" id="roomPrice" name="roomPrice" placeholder="Room Rent" type="text">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Discount:</label>
                                    <input class="form-control" id="discount" name="discount" placeholder="discount(%)"  type="text">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Vat:</label>
                                    <input class="form-control" id="roomPrice" name="vat" placeholder="VAT(%)" type="text">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Image:</label>
                                    <input class="form-control" id="image" name="image" placeholder="Image" type="file">
                                </div>
                            </div>
                        </div>
                    </section>
                    <button type="submit" class="btn btn-primary">Create</button>
                    <button type="reset" class="btn btn-danger">Reset</button>

                    <!--                    <button type="button" class="btn btn-primary" id="btnProcced">Proceed</button>-->

                </div>
            </div>
        </div>
    </div>
    <!--
    <div class="container" id="div2">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-9">
                <div class="wizard-content">
                                        <form class="tab-wizard wizard-circle wizard vertical" action="/payment/save" method="POST">
                    <h1 class="py-5" style="margin-top: 25px">Payment Info</h1>
                    <div style="margin-left: 50px">
                        <img src="/resources/assets/card.jpg" alt="Master Card"/>
                        <img src="/resources/assets/images.png" alt="Master Card"/>
                    </div><br/>
                    <section>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Card Type:</label>
                                    <select class="form-control" name="cardType">
                                        <option>Select Card</option>
                                        <option value="debit">Debit Card</option>
                                        <option value="credit">Credit Card</option>
                                        <option value="paypal">Paypal</option>
                                        <option value="payoner">Payoner</option>
                                    </select> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Card No:</label>
                                    <input class="form-control" id="caedno" name="cardNo"  type="text">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Expire Date:</label>
                                    <input class="form-control" id="caedno" name="expireDate"  type="date">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>CVV No:</label>
                                    <input class="form-control" id="caedno" name="cvvNo"  type="text">
                                </div>
                            </div>
                        </div>
                        
                    </section>
    
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-danger">Reset</button>
                    
                </div>
            </div>
        </div>
    </div>-->
</form> 


<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>
<!--
<script>
    $("#div2").hide();
    $("#btnProcced").on("click", function () {
        $("#div1").hide();
        $("#div2").show();
    });
</script>-->