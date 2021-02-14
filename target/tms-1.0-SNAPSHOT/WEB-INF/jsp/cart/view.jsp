<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .styled-table {
        border-collapse: collapse;
        margin: 12px 0;
        font-size: 0.9em;
        font-family: sans-serif;
        min-width: 300px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
    }
    .styled-table thead tr {
        background-color: #009879;
        color: #ffffff;
        text-align: center;
    }
    .styled-table th,
    .styled-table td {
        padding: 10px 12px;
        text-align: center;
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

<!--<div class="container-fluid">
    <div class="row mt-5">
        <div class="col-md-3"></div>
        <div class="col-md-9 py-5">-->
<div class="container ml-20">
    <div class="row mt-5 text-center ml-5 pl-30">
        <div class="col-md-5 py-3"></div>
        <div class="col-md-9 py-3 ml-5">
            <h1 class="text-light-orange" style="color: blue ">Tour Package List</h1>
            <table class="styled-table" border="1" width="30px" cellspacing="2" >
                <thead>
                    <tr class="text-center">
                        <th>Invoice</th>
                        <th>Delete</th>
                        <th>Id</th>
                        <th>Place</th>
                        <th>Code</th>
                        <th>Arrival Date</th>
                        <th>Departure Date</th>
                        <th>Bus</th>
                        <th>Train</th>
                        <th>Flight Cost</th>
                        <th>Food</th>
                        <th>Stay Amount</th>
                        <th>Others Cost</th>
                        <th>Total</th>
                        <th>Discount</th>
                        <th>Vat</th>
                        <th>Grand Total</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="mm" items="${map.cList}">
                        <tr class="text-center">
                            <td><button class="btn btn-info btn-sm"><a href="/cart/invoice/${mm.id}"><i class="fa fa-edit" style="font-size:24px;"></i></a>Invoice</button></td>
                            <td><button class="btn btn-danger btn-sm"><a href="/cart/delete/${mm.id}"><i class="fa fa-trash" style="font-size:24px;"></i></a>Delete</button></td>

                            <td>${mm.id}</td>
                            <td>${mm.place}</td>
                            <td>${mm.code}</td>
                            <td>${mm.arrivalDate}</td>
                            <td>${mm.departureDate}</td>
                            <td>${mm.bus}</td>
                            <td>${mm.train}</td>
                            <td>${mm.flightCost}</td>
                            <td>${mm.food}</td>
                            <td>${mm.stayAmount}</td>
                            <td>${mm.others}</td>
                            <td>${mm.total}</td>
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

