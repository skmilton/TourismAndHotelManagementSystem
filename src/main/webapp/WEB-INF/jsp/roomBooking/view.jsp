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
<div class="container ml-20">
    <div class="row mt-5 text-center ml-5 pl-30">
        <div class="col-md-5"></div>
        <div class="col-md-9 py-5 ml-5">
            <h1 class="text-center pb-3"> Room Booking Package Info</h1>
            <table border="2" width="1070" cellspacing="2" class="styled-table">
                <thead>
                    <tr>
                        <th>Invoice</th>
                        <th>Delete</th>
                        <th>Edit</th>
                        <th>Id</th>
                        <th>Room Code</th>
                        <th>Room Status</th>
                        <th>Check In</th>
                        <th>Check Out</th>
                        <th>Days</th>
                        <th>Room Price</th>
                        <th>Discount Amount</th>
                        <th>Vat Amount</th>
                        <th>Grand Total</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach  items="${map.tList}" var="mm">
                        <tr>
                            <td><button class="btn btn-info btn-sm"><a href="/tourist/invoice1/${mm.id}"><i class="fa fa-envelope-open" style="font-size:24px;"></i></a>Invoice</button></td>
                            <td><button class="btn btn-danger btn-sm"><a href="/roomBooking/delete/${mm.id}"><i class="fa fa-trash" style="font-size:24px;"></i></a>Delete</button></td>
                            <td><button class="btn btn-success btn-sm"><a href="/roomBooking/editRoom/${mm.id}"><i class="fa fa-pencil-square" style="font-size:24px;"></i></a>Edit</button></td>

                            <td>${mm.id}</td>
                            <td>${mm.roomCode}</td>
                            <td>${mm.roomStatus}</td>
                            <td>${mm.checkIn}</td>
                            <td>${mm.checkOut}</td>
                            <td>${mm.days}</td>
                            <td>${mm.roomPrice}</td>
                            <td>${mm.tDiscount}</td>
                            <td>${mm.tVat}</td>
                            <td>${mm.grandTotal}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>

