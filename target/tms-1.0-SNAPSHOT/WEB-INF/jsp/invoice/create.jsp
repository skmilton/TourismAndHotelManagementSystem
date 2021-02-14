<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-9">
            <div class="wizard-content">
                <form class="tab-wizard wizard-circle wizard vertical" action="/invoice/save" method="POST">
                    <h1 class="py-5" style="margin-top: 25px">Create Invoice</h1>
                    <section>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group"> 
                                    <label for="cName">Customer Name:</label>
                                    <input type="text" class="form-control" id="place" placeholder="Enter Customer Name" name="cName">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="packageName">Package Name:</label>
                                    <input type="text" class="form-control" id="description" placeholder="Enter Package Name" name="packageName">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="code">Code:</label>
                                    <input type="text" class="form-control" id="arrivalDate" placeholder="Enter code" name="code">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="gmail">Gmail:</label>
                                    <input type="gmail" class="form-control" id="departureDate" placeholder="Enter gmail" name="gmail">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="address">Address:</label>
                                    <input type="text" class="form-control" id="adult" placeholder="Enter address" name="address">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone">Phone:</label>
                                    <input type="text" class="form-control" id="children" placeholder="Enter phone" name="phone">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="invoiceDate">Invoice Date:</label>
                                    <input type="date" class="form-control" id="days" placeholder="Enter invoiceDate" name="invoiceDate">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="rRent">Room Rent:</label>
                                    <input type="text" class="form-control" id="night" placeholder="Enter Room Rent" name="rRent">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="bus">Bus:</label>
                                    <input type="text" class="form-control" id="bus" placeholder="Enter bus" name="bus">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="train">Train:</label>
                                    <input type="text" class="form-control" id="train" placeholder="Enter train" name="train">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="flightCost">Flight Cost:</label>
                                    <input type="text" class="form-control" id="flightCost" placeholder="Enter flightCost" name="flightCost">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="food">Food:</label>
                                    <input type="text" class="form-control" id="food" placeholder="Enter food" name="food">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="stayAmount">Stay Amount:</label>
                                    <input type="number" class="form-control" id="stayAmount" placeholder="Enter stayAmount" name="stayAmount">
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="discount">Others:</label>
                                    <input type="text" class="form-control" id="stayAmount" placeholder="Enter discount" name="others">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="vat">VAT:</label>
                                    <input type="text" class="form-control" id="stayAmount" placeholder="Enter VAT Amount" name="vat">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="others">Discount</label>
                                    <input type="text" class="form-control" id="stayAmount" placeholder="Enter Others Amount" name="discount">
                                </div>
                            </div>
                            
                    </section>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>

</div>

<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>

