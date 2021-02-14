<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .styled-table {
        border-collapse: collapse;
        margin: 25px 0;
        font-size: 0.9em;
        font-family: sans-serif;
        min-width: 400px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }
    .styled-table thead tr {
        background-color: #009879;
        color: #ffffff;
        text-align: left;
    }
    .styled-table th,
    .styled-table td {
        padding: 10px 12px;
    }
    .styled-table tbody tr {
        border-bottom: 1px solid #dddddd;
    }

    .styled-table tbody tr:nth-of-type(even) {
        background-color: #f3f3f3;
    }

    .styled-table tbody tr:last-of-type {
        border-bottom: 2px solid #009879;
    }
</style>
<div class="container">
    <div class="row mt-5">
        <div class="col-md-3"></div>
        <div class="col-md-9 py-5">
            <h1 class="text-center pb-5"> Payment System Details</h1>
            <table border="1" width="650" cellspacing="1" class="styled-table">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Place</th>
                        <th>Description</th>
                        <th>Arrival Date</th>
                        <th>Departure Date</th>
                        <th>Adult</th>
                        <th>children</th>
                        <th>Days</th>
                        <th>Night</th>
                        <th>Bus</th>
                        <th>Train</th>
                        <th>Flight Cost</th>
                        <th>Food</th>
                        <th>Room Rent</th>
                        <th>Stay Amount</th>
                        <th>Image</th>

                        <th>Cart Type</th>
                        <th>Bank Name</th>
                        <th>Expire Date</th>
                        <th>Cart No</th>
                        <th>CVV No</th>

                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>City</th>
                        <th>DoB</th>
                        <th>NID</th>
                        <th>Joining Date</th>
                        <th>User Name</th>
                        <th>Password</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="mm" items="${map.tList}">
                        <tr>
                            <td>${mm.id}</td>
                            <td>${mm.place}</td>
                            <td>${mm.description}</td>
                            <td>${mm.arrivalDate}</td>
                            <td>${mm.departureDate}</td>
                            <td>${mm.adult}</td>
                            <td>${mm.children}</td>
                            <td>${mm.days}</td>
                            <td>${mm.night}</td>
                            <td>${mm.bus}</td>
                            <td>${mm.train}</td>
                            <td>${mm.flightCost}</td>
                            <td>${mm.food}</td>
                            <td>${mm.rCost}</td>
                            <td>${mm.stayAmount}</td>
                            <td>${mm.image}</td>

                            <td>${mm.cartType}</td>
                            <td>${mm.bankName}</td>
                            <td>${mm.expireDate}</td>
                            <td>${mm.cartNo}</td>
                            <td>${mm.cvvNo}</td>


                            <td>${mm.firstName}</td>
                            <td>${mm.lastName}</td>
                            <td>${mm.email}</td>
                            <td>${mm.phone}</td>
                            <td>${mm.city}</td>
                            <td>${mm.dob}</td>
                            <td>${mm.nid}</td>
                            <td>${mm.jDate}</td>
                            <td>${mm.username}</td>
                            <td>${mm.password}</td>
                            <td><button class="btn btn-info btn-sm"><a href="/packageSystem/approved/${mm.id}"><i class="fa fa-edit" style="font-size:24px;"></i></a>Approved</button></td>
                            <td><button class="btn btn-danger btn-sm"><a href="/packageSystem/delete/${mm.id}"><i class="fa fa-trash" style="font-size:24px;"></i></a>Delete</button></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>


