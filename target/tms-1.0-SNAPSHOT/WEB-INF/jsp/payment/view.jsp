<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<div class="container-fluid mt-5">
    <h1 class="text-center py-5">Payment Information</h1>
    <div class="row">

        <div class="col-md-4">

        </div>
        <div class="col-md-4">
            <table border="1" width="450" cellspacing="1" cellpadding="2" class="styled-table">
                <thead>
                    <tr class="text-center">
                        <th>Edit</th>
                        <th>Delete</th>
                        <th>Id</th>
                        <th>Cart Type</th>
                        <th>Bank Name</th>
                        <th>Expire Date</th>
                        <th>Cart No</th>
                        <th>CVV No</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="mm" items="${map.tList}">
                        <tr class="text-center">
                            <td><button class="btn btn-info btn-sm"><a href="/payment/edit/${mm.id}"><i class="fa fa-edit" style="font-size:24px;"></i></a>Edit</button></td>
                            <td><button class="btn btn-danger btn-sm"><a href="/payment/delete/${mm.id}"><i class="fa fa-trash" style="font-size:24px;"></i></a>Delete</button></td>

                            <td>${mm.id}</td>
                            <td>${mm.cartType}</td>
                            <td>${mm.bankName}</td>
                            <td>${mm.expireDate}</td>
                            <td>${mm.cartNo}</td>
                            <td>${mm.cvvNo}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-md-4">

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>

