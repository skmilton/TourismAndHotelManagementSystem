
<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>
fahim
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-9">
            <div class="wizard-content">
                <form class="tab-wizard wizard-circle wizard vertical" action="/payment/update" method="POST">
                    <h1 class="py-5" style="margin-top: 25px">Payment Info</h1>
                    <div style="margin-left: 50px">
                        <img src="/resources/assets/card.jpg" alt="Master Card"/>
                        <img src="/resources/assets/images.png" alt="Master Card"/>
                    </div><br/>
                    <section>
                         <input type="hidden" class="form-control" name="id" value="${p.id}">
                        <div class="form-group col-md-9">
                            <label>Cart Type:</label>
                            <select class="form-control" name="cartType" value="${p.cartType}">
                                <option>Select Card</option>
                                <option value="debit">Debit Card</option>
                                <option value="credit">Credit Card</option>
                                <option value="paypal">Paypal</option>
                                <option value="payoner">Payoner</option>
                            </select>
                        </div>
                        </section>
                        <section>
                        <div class="form-group col-md-9">
                            <label>Bank Name:</label>
                            <select class="form-control" name="bankName" value="${p.bankName}">
                                <option>Select Bank</option>
                                <option value="dbbl">DBBL</option>
                                <option value="ibbl">IBBL</option>
                                <option value="jamuna">JAMUNA BANK</option>
                                <option value="payoner">SONALI BANK</option>
                                <option value="jonata">JANOTA BANK</option>
                                <option value="pubali">PUBALI BANK</option>
                                <option value="standerd">STANDARD CHARTERD</option>
                                <option value="abBank">AB BANK</option>
                                <option value="basic">BASIC BANK</option>
                                <option value="rupali">RUPALI BANK</option>	
                                <option value="bankAsia">BANK ASIA</option>
                            </select>
                        </div>
                     </section>
                   <section>
                        <div class="form-group col-md-9">
                            <label>Expire Date:</label>
                            <select class="form-control" name="expireDate" value="${p.expireDate}">
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
                        </div>
                        </section>
                     <section>
                        <div class="form-group col-md-9">
                            <label>Expire Year</label>
                            <select class="form-control" name="expireYear" value="${p.expireYear}">
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
                                    <label>Cart No:</label>
                                    <input class="form-control" id="cartNo" name="cartNo" placeholder="Cart Number" required="" type="text" value="${p.cartNo}">
                                </div>
                            </div>
                        </div>
                    </section>

                    <section>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label>CVV No:</label>
                                    <input class="form-control" id="caedno" name="cvvNo" placeholder="CVV Number" required="" type="text" value="${p.cvvNo}">
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