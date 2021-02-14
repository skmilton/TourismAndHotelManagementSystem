

<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-9">
            <div class="wizard-content">
                <form class="tab-wizard wizard-circle wizard vertical" action="tourManager/update" method="POST">
                    <h1 class="py-5" style="margin-top: 25px">Update Tourist Manager Info</h1>
                    <section>
                        <div class="row">
                            <input type="hidden" class="form-control" name="id" value="${t.id}">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >First Name :</label>
                                    <input type="text" class="form-control" name="firstName" value="${t.firstName}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Last Name :</label>
                                    <input type="text" class="form-control" name="lastName" value="${t.lastName}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email Address :</label>
                                    <input type="email" class="form-control" name="email" value="${t.email}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Phone Number :</label>
                                    <input type="text" class="form-control" name="phone" value="${t.phone}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Select City :</label>
                                    <select class="custom-select form-control" name="city" value="${t.city}">
                                        <option value="">Select City</option>
                                        <option value="Amsterdam">Cox-Bazar</option>
                                        <option value="Berlin">Bandarbon</option>
                                        <option value="Frankfurt">Rangamati</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Date of Birth :</label>
                                    <input type="date" class="form-control date-picker" placeholder="Select Date" name="dob" value="${t.dob}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Nid :</label>
                                    <input type="number" class="form-control date-picker" placeholder="Nid" name="nid" value="${t.nid}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Joining Date :</label>
                                    <input type="text" class="form-control date-picker" placeholder="Joining Date" name="jDate" value="${t.jDate}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>User Name :</label>
                                    <input type="text" class="form-control date-picker" placeholder="User Name" name="username" value="${t.username}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Password :</label>
                                    <input type="password" class="form-control date-picker" placeholder="Password" name="password" value="${t.password}">
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

