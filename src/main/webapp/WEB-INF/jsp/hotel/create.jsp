<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>
<div class="container">
    <h1 class="py-5" style="margin-top: 40px; text-align: center">Hotel Info</h1>
    <div class="row text-center" style="margin-left: 100px">
        <div class="col-md-6"> 
            <img height="80%" width="70%" src="/resources/assets/h2.jpg" alt="Hotel 2"/>
        </div>
        <div class="col-md-6 "> 
            <img height="80%" width="70%" src="/resources/assets/h1.jpg" alt="Hotel 1"/>
        </div>
    </div>


    <div class="row mt-5">
        <div class="col-md-2 pl-5">
        </div>
        <div class="col-md-10 ml-auto">
            <form class="form-group" action="/hotel/save" method="POST">
                <div class="row pl-5">
                    <div class="col-md-6 pl-10">
                        <label>Hotel Name:</label>
                        <select class="form-control" name="hName">
                            <option>Select Hotel</option>
                            <option >Royal</option>
                            <option >Blue Bard</option>
                            <option >Grand Sultan</option>
                            <option >De-Cox</option>
                        </select>
                        <label>Hotel Location</label>
                        <select class="form-control" name="hLocation">
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
                        <label>Phone</label>
                        <input class="form-control" id="caedno" name="phone" placeholder="Phone Number" type="number">
                        <label>Entry Date:</label>
                        <input class="form-control" id="caedno" name="entryDate" placeholder="Entry Date"  type="date">
                        <label>Expire Date:</label>
                        <input class="form-control" id="caedno" name="expireDate" placeholder="Expire Date"  type="date">
                    </div>
                    <div class="col-md-6 pl-5">
                        <label>Description</label>
                        <input class="form-control" id="caedno" name="description" placeholder="Description"  type="text">
                        <label>Hotel Code No:</label>
                        <input class="form-control" id="caedno" name="hCode" placeholder="Hotel Code Number"  type="number">
                        <label>Email</label>
                        <input class="form-control" id="caedno" name="email" placeholder="Email"  type="email">
                        <label>Password</label>
                        <input class="form-control" id="caedno" name="password" placeholder="Password/pin"  type="password">
                    </div>
                </div>
                <!--                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-danger">Reset</button>-->

                <div class="btn-group btn-group-justified">
                    <input class="btn btn-success" type="submit" value="Create">
                    <a href="#" class="btn btn-danger">Reset</a>
                </div>
            </form>

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>
