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
    <div class="row lg-5 col-md-6">
        <div class="col-md-3"></div>

        <div class="col-md-9 px-5">
            <h1 class="text-center pb-5" > Invoice Details</h1>
            <h1 class="text-center pb-5" > <center> Invoice Details</center>  </h1>
            <table border="2" width="45px" cellspacing="2" class="styled-table" style="column-fill: balance">
                <thead>
                    <tr class="text-center">
                        <th>Invoice</th>
                        <th>Delete</th>
                        <th>Id</th>
                        <th>Customer Name</th>
                        <th>Package Name</th>
                        <th>Code</th>
                        <th>Gmail</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Invoice Date</th>
                        <th>Room Rent</th>
                        <th>Bus</th>
                        <th>Train</th>
                        <th>Flight Cost</th>
                        <th>Food</th>
                        <th>Stay Amount</th>
                        <th>Total</th>
                        <th>Discount</th>
                        <th>VAT</th>
                        <th>Others</th>
                        <th>Grand Total</th>
                        <th>Invoice</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="mm" items="${map.tList}">
                        <tr class="text-center">
                            <td><button class="btn btn-info btn-sm"><a href="/invoice/edit/${mm.id}"><i class="fa fa-edit" style="font-size:24px;"></i></a>Edit</button></td>
                            <td><button class="btn btn-danger btn-sm"><a href="/invoice/delete/${mm.id}"><i class="fa fa-trash" style="font-size:24px;"></i></a>Delete</button></td>

                            <td>${mm.id}</td>
                            <td>${mm.cName}</td>
                            <td>${mm.packageName}</td>
                            <td>${mm.code}</td>
                            <td>${mm.gmail}</td>
                            <td>${mm.address}</td>
                            <td>${mm.phone}</td>
                            <td>${mm.invoiceDate}</td>
                            <td>${mm.rCost}</td>
                            <td>${mm.bus}</td>
                            <td>${mm.train}</td>
                            <td>${mm.flightCost}</td>
                            <td>${mm.food}</td>
                            <td>${mm.stayAmount}</td>
                            <td>${mm.total}</td>
                            <td>${mm.discount}</td>
                            <td>${mm.vat}</td>
                            <td>${mm.others}</td>
                            <td>${mm.grandTotal}</td>


                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>

