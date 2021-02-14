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
<div class="container py-3">
    <div class="row mt-5 text-center">
        <div class="col-md-5"></div>
        <div class="col-md-9 py-5">
            <h1 class="text-center pb-5"> <i class="fa fa-user-circle-o text-success"></i> <strong>Visitor Feedback</strong> </h1>
            <table border="2" width="1050px" cellspacing="2" class="styled-table">
                <thead>
                    <tr class="text-center">
                        <th>Edit</th>
                        <th>Delete</th>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Message</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="mm" items="${map.tList}">
                        <tr class="text-center">
                            <td><button class="btn btn-info btn-sm"><a href="/contact/edit/${mm.id}"><i class="fa fa-edit" style="font-size:24px;"></i></a>Edit</button></td>
                            <td><button class="btn btn-danger btn-sm"><a href="/contact/delete/${mm.id}"><i class="fa fa-trash" style="font-size:24px;"></i></a>Delete</button></td>
                        
                            <td>${mm.id}</td>
                            <td>${mm.name}</td>
                            <td>${mm.email}</td>
                            <td>${mm.phone}</td>
                            <td>${mm.message}</td>
                            </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>

