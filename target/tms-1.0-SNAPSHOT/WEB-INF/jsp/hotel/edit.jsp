<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-9">
            <div class="wizard-content">
                <form class="tab-wizard wizard-circle wizard vertical" action="/hotel/update" method="POST">
                    <h1 class="py-5" style="margin-top: 25px">Update Hotel Info</h1>
                    <div style="margin-left: 50px">
                        <img src="/resources/assets/h2.jpg" alt="Hotel 2"/>
                        <img src="/resources/assets/h1.jpg" alt="Hotel 1"/>
                    </div><br/>
                     <input type="hidden" class="form-control" name="id" value="${t.id}">
                    <section>
                        <div class="form-group col-md-9">
                            <label>Hotel Name:</label>
                            <select class="form-control" name="hName" value="${t.hName}">
                                <option>Select Hotel</option>
                                <option value="debit">Royal</option>
                                <option value="credit">Blue Bard</option>
                                <option value="paypal">Grand Sultan</option>
                                <option value="payoner">De-Cox</option>
                            </select>
                        </div>
                    </section>
                    <section>
                        <div class="row">
                            <div class="form-group col-md-9">
                                <div class="form-group">
                                    <label>Hotel Location</label>
                                    <select class="form-control" name="hLocation" value="${t.hLocation}">
                                        <option>Select Location</option>
                                        <option>Dhaka</option>
                                        <option>Khulna</option>
                                        <option>Cox-Bazar</option>
                                        <option>Rangamati</option>
                                        <option>Bandarban</option>
                                        <option>Sylhet</option>
                                        <option>Mowlovibazar</option>
                                        <option>Bogra</option>
                                        <option>Rongpur</option>
                                        <option>Barisal</option>	
                                        <option>Comilla</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section>
                        <div class="form-group col-md-6">
                            <label>Entry Date:</label>
                            <select class="form-control" name="entryDate" value="${t.entryDate}">
                                <option>Select Month</option>
                                <option>Jun</option>
                                <option>Feb</option>
                                <option>Mar</option>
                                <option>May</option>
                                <option>Jun</option>
                                <option>July</option>
                                <option>Aug</option>
                                <option>Sep</option>
                                <option>Oct</option>
                                <option>Nov</option>	
                                <option>Dec</option>
                            </select>
                            <select name="year" class="col-md-3">
                                <option>Select Year</option> <option>2015</option>
                                <option>2016</option><option>2017</option>
                                <option>2018</option><option>2019</option>
                                <option>2020</option> <option>2021</option>
                                <option>2022</option><option>2023</option>
                                <option>2024</option><option>2025</option>
                                <option>2029</option><option>2027</option>
                                <option>2028</option><option>2030</option>
                            </select>
                        </div>
                    </section>
                    <section>
                        <div class="form-group col-md-6">
                            <label>Expire Date:</label>
                            <select class="form-control" name="expireDate" value="${t.expireDate}">
                                <option>Select Month</option>
                                <option>Jun</option>
                                <option>Feb</option>
                                <option>Mar</option>
                                <option>May</option>
                                <option>Jun</option>
                                <option>July</option>
                                <option>Aug</option>
                                <option>Sep</option>
                                <option>Oct</option>
                                <option>Nov</option>	
                                <option>Dec</option>
                            </select>
                            <select name="year" class="col-md-3">
                                <option>Select Year</option> <option>2015</option>
                                <option>2016</option><option>2017</option>
                                <option>2018</option><option>2019</option>
                                <option>2020</option> <option>2021</option>
                                <option>2022</option><option>2023</option>
                                <option>2024</option><option>2025</option>
                                <option>2029</option><option>2027</option>
                                <option>2028</option><option>2030</option>
                            </select>
                        </div>
                    </section>
                    <section>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label>Description</label>
                                    <input class="form-control" id="caedno" name="description" placeholder="Description" required="" type="text" value="${t.description}">
                                </div>
                            </div>
                        </div>
                    </section>

                    <section>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label>Hotel Code No:</label>
                                    <input class="form-control" id="caedno" name="hCode" placeholder="Hotel Code Number" required="" type="number" value="${t.hCode}">
                                </div>
                            </div>
                        </div>
                    </section>
                    <section>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input class="form-control" id="caedno" name="phone" placeholder="Phone Number" required="" type="number" value="${t.phone}">
                                </div>
                            </div>
                        </div>
                    </section>
                    <section>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input class="form-control" id="caedno" name="email" placeholder="Email" required="" type="email" value="${t.email}">
                                </div>
                            </div>
                        </div>
                    </section>
                    <section>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="form-control" id="caedno" name="password" placeholder="Password/pin" required="" type="password" value="${t.password}">
                                </div>
                            </div>
                        </div>
                    </section>
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-danger">Reset</button>
                </form> 
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>


