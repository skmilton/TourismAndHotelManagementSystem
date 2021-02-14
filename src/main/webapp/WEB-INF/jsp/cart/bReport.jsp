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
        <div class="col-md-5 py-3"></div>
        <div class="col-md-9 py-3 ml-5">
            <h1 class="text-center pb-3 ml-5">Available Room Report</h1>
            <table border="2" width="1050" cellspacing="1" class="styled-table">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Room Code</th>
                        <th>Room Status</th>
                        <th>Arrival Date</th>
                        <th>Departure Date</th>
                        <th>Days</th>
                        <th>Total</th>
                        <th>Discount Amount</th>
                        <th>Net Amount</th>
                        
                        <th>Vat Amount</th>
                        <th>Grand Total</th>
                     </tr>
                </thead>
                <tbody>
                    <c:forEach items="${map.bList}" var="mm">
                        <tr>
                            <td>${mm.id}</td>
                            <td>${mm.code}</td>
                            <td>${mm.status}</td>
                            <td>${mm.arrivalDate}</td>
                            <td>${mm.departureDate}</td>
                            <td>${mm.days}</td>
                            <td>${mm.total}</td>
                            <td>${mm.tDiscount}</td>
                            <td>${mm.netTotal}</td>
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

