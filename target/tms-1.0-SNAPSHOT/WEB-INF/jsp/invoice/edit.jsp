<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>

<div class="main-container">
    <div class="pd-ltr-20 xs-pd-20-10">
        <div class="invoice-wrap">
            <div class="invoice-box">
                <div class="invoice-header">
                    <div class="logo text-center">
                        <img src="vendors/images/deskapp-logo.png" alt="">
                    </div>
                </div>
                <h3 class="text-center mb-30 weight-600">Milton's Tourism & Hotel Management System </h3>
                <h4 class="text-center mb-30 weight-600">INVOICE</h4>
                <div class="row pb-30">
                    <div class="col-md-6">
                        <h5 class="mb-15">${invoice.packageName}</h5>
                        <p class="font-14 mb-5">Date Issued: <strong class="weight-600">${invoice.invoiceDate}</strong></p>
                        <p class="font-14 mb-5">Invoice No: <strong class="weight-600">${invoice.id}</strong></p>
                    </div>
                    <div class="col-md-6">
                        <div class="text-right">
                            <p class="font-14 mb-5"><strong> Gast Name: ${invoice.cName} </strong></p>
                            <p class="font-14 mb-5">Gast Address: ${invoice.address}</p>
                            <p class="font-14 mb-5">Gast Phone:${invoice.phone}</p>
                            <p class="font-14 mb-5">Gast Email: ${invoice.gmail}</p>
                        </div>
                    </div>
                </div>
                <div class="invoice-desc pb-30">
                    <div class="invoice-desc-head clearfix">
                        <div class="invoice-sub">Description</div>
                        <!--                        <div class="invoice-rate">Discount</div>
                                                <div class="invoice-hours">Vat</div>-->
                        <div class="invoice-subtotal">Amount</div>
                    </div>
                    <div class="invoice-desc-body">
                        <ul>
                            <li class="clearfix">
                                <div class="invoice-sub">Room Charge</div>

                                <div class="invoice-subtotal"><span class="weight-600">${invoice.rRent}</span></div>
                            </li>
                            <li class="clearfix">
                                <div class="invoice-sub">Bus Charge</div>

                                <div class="invoice-subtotal"><span class="weight-600">${invoice.bus}</span></div>
                            </li>
                            <li class="clearfix">
                                <div class="invoice-sub">Train Charge</div>

                                <div class="invoice-subtotal"><span class="weight-600">${invoice.train}</span></div>
                            </li>
                            <li class="clearfix">
                                <div class="invoice-sub">Flight Charge</div>

                                <div class="invoice-subtotal"><span class="weight-600">${invoice.flightCost}</span></div>
                            </li>
                            <li class="clearfix">
                                <div class="invoice-sub">Food Charge</div>

                                <div class="invoice-subtotal"><span class="weight-600">${invoice.food}</span></div>
                            </li>
                            <li class="clearfix">
                                <div class="invoice-sub">Stay Amount</div>

                                <div class="invoice-subtotal"><span class="weight-600">${invoice.stayAmount}</span></div>
                            </li>
                        </ul>
                    </div>
                    <div class="invoice-desc-footer">
                        <div class="invoice-desc-head clearfix">
                            <div class="invoice-sub">Bank Info</div>
                            <div class="invoice-rate">Bill Info</div>
                            <div class="invoice-subtotal">Total(Collection): </div>
                        </div>
                        <div class="invoice-desc-body">
                            <ul>
                                <li class="clearfix">
                                    <div class="invoice-sub">
                                        <p class="font-14 mb-5">Account No: <strong class="weight-600">${invoice.accNo}</strong></p>
                                        <p class="font-14 mb-5">Code: <strong class="weight-600"></strong>${invoice.code}</p>
                                    </div>
                                    <div class="id" style="">
                                        <div class="invoice-rate font-20 weight-600">  
                                            <p class="font-14"><strong class="weight-600">Sales Amount : </strong></p>
                                            <p class="font-14"><strong class="weight-600">Discount:${invoice.discount}%</strong></p>
                                            <p class="font-14"><strong class="weight-600">Total : </strong></p>
                                            <p class="font-14"><strong class="weight-600"></strong>Vat : ${invoice.vat}%(+)</p>
                                            
                                            

                                        </div>
                                        <div class="invoice-rate font-20 weight-600">
                                             <p class="font-14"><strong class="weight-600">${invoice.total}</strong></p>
                                            <p class="font-14"><strong class="weight-600"></strong>${invoice.tDiscount}</p>
                                            <p class="font-14"><strong class="weight-600"></strong>${invoice.netTotal}</p>
                                            <p class="font-14"><strong class="weight-600">${invoice.tVat}</strong></p>
                                            
                                            
                                        </div>

                                        <div class="invoice-subtotal"><span class="weight-600 text-danger">${invoice.grandTotal}</span></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <h4 class="text-center pb-20">Thank You!!</h4>
            </div>
        </div>
    </div>
    <div class="footer-wrap pd-20 mb-20 card-box">
        DeskApp - Bootstrap 4 Admin Template By <a href="https://github.com/dropways" target="_blank">Ankit Hingarajiya</a>
    </div>
</div>



<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>