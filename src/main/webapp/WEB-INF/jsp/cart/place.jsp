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
            <h1 class="text-light-orange" style="color: blue "><i class="fa fa-low-vision text-orange-50 "></i>Tourist Place & Description Info</h1>
            <table class="styled-table" border="2" width="950" cellspacing="2" >
                <thead>
                    <tr>
                        <th>Place</th>
                        <th>Description</th>
                        <th>Arrival Date</th>
                        <th>Departure Date</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="mm" items="${map.pList}">
                        <tr> 
                            <td>${mm.place}</td>
                            <td>${mm.description}</td>
                            <td>${mm.arrivalDate}</td>
                            <td>${mm.departureDate}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>

