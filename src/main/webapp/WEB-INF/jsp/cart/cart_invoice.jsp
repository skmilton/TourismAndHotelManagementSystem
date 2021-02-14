<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>

<div class="main-container" id="printInvoice">
    <div class="pd-ltr-20 xs-pd-20-10">
        <div class="invoice-wrap">
            <div class="invoice-box">
                <div class="invoice-header">
                    <div class="logo text-center">
                        <img src="vendors/images/deskapp-logo.png" alt="">
                    </div>
                </div>
                <h3 class="text-center mb-30 weight-600" style="color: blueviolet">Milton's Tourism & Hotel Management System </h3>
                 <h3 class="text-center text-danger">"See More. Know More"</h3>
                <h4 class="text-center mb-30 weight-600">INVOICE</h4>
               
                <div class="row pb-30">
                    <div class="col-md-6">
                        <h5 class="mb-15">${t.place}</h5>

                        <p class="font-14 mb-5">Date Issued: <strong class="weight-600">${t.invoiceDate}</strong></p>
                        <p class="font-14 mb-5">Package Code:<strong class="weight-600">${t.code}</strong> </p>
                        <p class="font-14 mb-5">Arrival Date: <strong class="weight-600">${t.arrivalDate}</strong></p>
                        <p class="font-14 mb-5">Departure Date: <strong class="weight-600">${t.departureDate}</strong></p>
                    </div>
                    <div class="col-md-6">
                        <div class="text-right">

                            <p class="font-14 mb-5">Invoice No: <strong class="weight-600">${t.id}</strong></p>
                            <p class="font-14 mb-5">More-Info:<strong class="weight-600">196/3,Malibag,Dhaka.<br/> Hotline:02-992299</strong></p>
                            <p class="font-14 mb-5">Email:<strong class="weight-600">  m.tourism2021@gmail.com</strong></p>
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
                                <div class="invoice-sub">Bus Charge</div>
                                <div class="invoice-subtotal"><span class="weight-600">${t.bus}</span></div>
                            </li>
                            <li class="clearfix">
                                <div class="invoice-sub">Train Charge</div>
                                <div class="invoice-subtotal"><span class="weight-600">${t.train}</span></div>
                            </li>
                            <li class="clearfix">
                                <div class="invoice-sub">Flight Cost</div>
                                <div class="invoice-subtotal"><span class="weight-600">${t.flightCost}</span></div>
                            </li>
                            <li class="clearfix">
                                <div class="invoice-sub">Food Charge</div>
                                <div class="invoice-subtotal"><span class="weight-600">${t.food}</span></div>
                            </li>
                            <li class="clearfix">

                                <div class="invoice-sub">Stay Amount</div>
                                <div class="invoice-subtotal"><span class="weight-600">${t.stayAmount}</span></div> 
                            </li>
                            <li class="clearfix">

                                <div class="invoice-sub">Others</div>
                                <div class="invoice-subtotal"><span class="weight-600">${t.others}</span></div> 
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
                                        <p class="font-14 mb-5">Account No: <strong class="weight-600">${t.accNo}</strong></p>
                                        <p class="font-14 mb-5">Branch Name: <strong class="weight-600"></strong></p>
                                    </div>
                                    <div class="id" style="">
                                        <div class="invoice-rate font-20 weight-600">  
                                            <p class="font-14"><strong class="weight-600">Sales Amount:</strong></p>
                                            <p class="font-14"><strong class="weight-600">Discount:(-)${t.discount} %</strong></p>
                                            <p class="font-14"><strong class="weight-600">Total : </strong></p>
                                            <p class="font-14"><strong class="weight-600"></strong>Vat :(+)${t.vat}% </p>



                                        </div>
                                        <div class="invoice-rate font-20 weight-600">
                                            <p class="font-14"><strong class="weight-600">${t.total}</strong></p>
                                            <p class="font-14"><strong class="weight-600">${t.tDiscount}</strong></p>
                                            <p class="font-14"><strong class="weight-600">${t.netTotal}</strong></p>
                                            <p class="font-14"><strong class="weight-600">${t.tVat}</strong></p>


                                        </div>

                                        <div class="invoice-subtotal"><span class="weight-600 text-danger">${t.grandTotal} /=</span></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                                    <div class="btn-group btn-group-lg">
                    <button onclick="printInvoice1('printInvoice')" class="btn btn-info" style="height: auto;width: 250px; alignment-adjust: central">CSV</button>
                    <button onclick="printInvoice1('printInvoice')" class="btn btn-secondary" style="height: auto;width: 250px; alignment-adjust: central">PDF</button>
                    <button onclick="printInvoice1('printInvoice')" class="btn btn-success" style="height: auto;width: 250px; alignment-adjust: central"> Print</button>
                </div>
                                    <h4 class="text-center pb-20" style="color: #d9534f">Thank You!!</h4>
            </div>
        </div>
    </div>
    
</div>
<script>
    function printInvoice1(a) {
        var backup = document.body.innerHTML;
        var divContent = document.getElementById(a).innerHTML;
        document.body.innerHTML = divContent;
        window.print();
        document.body.innerHTML = backup;
    }

</script>


<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>