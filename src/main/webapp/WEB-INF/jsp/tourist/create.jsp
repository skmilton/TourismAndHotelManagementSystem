
<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-9">
            <div class="wizard-content">
                <form class="tab-wizard wizard-circle wizard vertical" action="/tourist/save" method="POST">
                    <h1 class="py-5" style="margin-top: 25px">Tourist Personal Info</h1>
                    <section>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >First Name :</label>
                                    <input type="text" class="form-control" name="firstName">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Last Name :</label>
                                    <input type="text" class="form-control" name="lastName">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email Address :</label>
                                    <input type="email" class="form-control" name="email">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Phone Number :</label>
                                    <input type="text" class="form-control" name="phone">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Select City :</label>
                                    <select class="custom-select form-control" name="city">
                                        <option >Select City</option>
                                        <option >Cox-Bazar</option>
                                        <option >Bandarbon</option>
                                        <option >Rangamati</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Date of Birth :</label>
                                    <input type="date" class="form-control date-picker" placeholder="Select Date" name="dob">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Nid :</label>
                                    <input type="text" class="form-control date-picker" placeholder="Nid" name="nid">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Joining Date :</label>
                                    <input type="date" class="form-control date-picker" placeholder="Joining Date" name="jDate">
                                </div>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>User Name :</label>
                                    <input type="text" class="form-control date-picker" placeholder="User Name" name="username">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Password :</label>
                                    <input type="password" class="form-control date-picker" placeholder="Password" name="password">
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

