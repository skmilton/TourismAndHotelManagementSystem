<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/resources/assets/dash/vendors/styles/core.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/dash/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/dash/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/dash/src/plugins/datatables/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/dash/vendors/styles/style.css">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>

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

                <h4 class="text-center mb-30 weight-600">INVOICE</h4>
                <div class="row pb-30">
                    <div class="col-md-6">
                        <h5 class="mb-15">Room Name</h5>

                        <p class="font-14 mb-5">Date Issued: <strong class="weight-600">${t.invoiceDate}</strong></p>
                        <p class="font-14 mb-5">Room Code:<strong class="weight-600">${t.roomCode}</strong> </p>
                        <p class="font-14 mb-5">Check In: <strong class="weight-600">${t.checkIn}</strong></p>
                        <p class="font-14 mb-5">Check Out: <strong class="weight-600">${t.checkOut}</strong></p>
                    </div>
                    <div class="col-md-6">
                        <div class="text-right">

                            <p class="font-14 mb-5">Invoice No: <strong class="weight-600">${t.id}</strong></p>
                            <p class="font-14 mb-5">More-Info:<strong class="weight-600">196/3,Malibag,Dhaka.<br/> Hotline:02-992299</strong></p>
                            <p class="font-14 mb-5"><strong class="weight-600"> Email: m.tourism2021@gmail.com</strong></p>
                        </div>
                    </div>
                </div>
                <div class="invoice-desc pb-30">
                    <div class="invoice-desc-head clearfix">
                        <div class="invoice-sub">Description</div>

                        <div class="invoice-subtotal">Amount</div>
                    </div>
                    <div class="invoice-desc-body">
                        <ul>
                            <li class="clearfix">
                                <div class="invoice-sub">Room Charge</div>

                                <div class="invoice-subtotal"><span class="weight-600">${t.roomPrice}</span></div>
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
                                        <p class="font-14 mb-5">Account No: <strong class="weight-600"></strong></p>
                                        <p class="font-14 mb-5">Branch Name: <strong class="weight-600"></strong></p>
                                    </div>
                                    <div class="id" style="">
                                        <div class="invoice-rate font-20 weight-600">  
                                            <p class="font-14"><strong class="weight-600">Sales Amount:</strong></p>
                                            <p class="font-14"><strong class="weight-600">Discount: ${t.discount}%</strong></p>
                                            <p class="font-14"><strong class="weight-600">Total :</strong></p>
                                            <p class="font-14"><strong class="weight-600"></strong>Vat:(+)${t.vat}%</p>
                                        </div>
                                        <div class="invoice-rate font-20 weight-600">
                                            <p class="font-14"><strong class="weight-600">${t.roomPrice} /=</strong></p>
                                            <p class="font-14"><strong class="weight-600">${t.tDiscount} /=</strong></p>
                                            <p class="font-14"><strong class="weight-600">${t.netTotal} /=</strong></p>
                                            <p class="font-14"><strong class="weight-600">${t.tVat} /=</strong></p>
                                        </div>

                                            <div class="invoice-subtotal"><span class="weight-600 text-danger"><strong style="font-size: 23px"> ${t.grandTotal} /= </strong></span></div>
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
                <h4 class="text-center pb-20">Thank You!!</h4>

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


