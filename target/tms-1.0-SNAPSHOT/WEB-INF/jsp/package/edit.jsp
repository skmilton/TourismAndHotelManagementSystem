<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-9">
            <div class="wizard-content">
                <form class="tab-wizard wizard-circle wizard vertical" action="/package/update" method="POST">
                    <h1 class="py-5" style="margin-top: 25px">Update Tourist Package</h1>
                    <section>
                        <div class="row">
                           <input type="hidden" class="form-control" id="id" placeholder="Enter place" name="id" value="${hp.id}">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="place">Place:</label>
                                    <input type="text" class="form-control" id="place" placeholder="Enter place" name="place" value="${hp.place}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="description">Description:</label>
                                    <input type="text" class="form-control" id="description" placeholder="Enter description" name="description" value="${hp.description}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="arrivalDate">Arrival Date:</label>
                                    <input type="date" class="form-control" id="arrivalDate" placeholder="Enter Arrival Date" name="arrivalDate" value="${hp.arrivalDate}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="departureDate">Departure Date:</label>
                                    <input type="date" class="form-control" id="departureDate" placeholder="Enter Departure Date" name="departureDate" value="${hp.departureDate}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="adult">Adult:</label>
                                    <input type="text" class="form-control" id="adult" placeholder="Enter adult" name="adult" value="${hp.adult}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="children">Children</label>
                                    <input type="text" class="form-control" id="children" placeholder="Enter children" name="children" value="${hp.children}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="days">Days:</label>
                                    <input type="text" class="form-control" id="days" placeholder="Enter days" name="days" value="${hp.days}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="night">Night:</label>
                                    <input type="text" class="form-control" id="night" placeholder="Enter night" name="night" value="${hp.night}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="bus">Bus:</label>
                                    <input type="number" class="form-control" id="bus" placeholder="Enter bus" name="bus" value="${hp.bus}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="train">Train:</label>
                                    <input type="number" class="form-control" id="train" placeholder="Enter train" name="train" value="${hp.train}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="flightCost">Flight Cost:</label>
                                    <input type="number" class="form-control" id="flightCost" placeholder="Enter flightCost" name="flightCost" value="${hp.flightCost}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="food">Food:</label>
                                    <input type="number" class="form-control" id="food" placeholder="Enter food" name="food" value="${hp.food}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="stayAmount">Stay Amount:</label>
                                    <input type="number" class="form-control" id="stayAmount" placeholder="Enter stayAmount" name="stayAmount" value="${hp.stayAmount}">
                                </div>
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

