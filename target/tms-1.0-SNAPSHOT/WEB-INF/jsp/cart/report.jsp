<jsp:include page="/WEB-INF/jsp/common/dash/header.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .styled-table {
        border-collapse: collapse;
        margin: 20px 0;
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

<div class="container-fluid">
    <div class="row mt-5">
        <div class="col-md-3"></div>
        <div class="col-md-9 py-5">
            <h1 class="text-light-orange" style="color: blue ">Tour Package Sales Amount</h1>
            <table class="styled-table" border="1"  width="1050px"  cellspacing="2" >
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Place</th>
                        <th>Bus</th>
                        <th>Train</th>
                        <th>Flight Cost</th>
                        <th>Food</th>
                        <th>Stay Amount</th>
                        <th>Total</th>
                        <th>Discount</th>
                        <th>Vat</th>
                        <th>Grand Total</th>
                        
                    </tr>
                 
                </thead>
                <tbody>
                    <c:forEach var="mm" items="${map.cList}">
                        <tr>
                            <td>${mm.id}</td>
                            <td>${mm.place}</td>
                            <td>${mm.bus}</td>
                            <td>${mm.train}</td>
                            <td>${mm.flightCost}</td>
                            <td>${mm.food}</td>
                            <td>${mm.stayAmount}</td>
                            <td>${mm.total}</td>
                            <td>${mm.tDiscount}</td>
                            <td>${mm.tVat}</td>
                            <td class="bg-orange">${mm.grandTotal}</td>
                            
                        </tr>
                       
                    </c:forEach>
                        <tr>
                            <td colspan="10"class="text-center font-20"><strong>Total Sales</strong></td>
                            <td><strong>${map.totalSales}</strong></td>
                            
                        </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>

