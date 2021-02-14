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
            <h1 class="text-center pb-5">Hotel Info</h1>
            <table border="1" width="650" cellspacing="1" class="styled-table">
                <thead>
                    <tr class="text-center">
                        <th>Edit</th>
                        <th>Delete</th>
                        <th>Id</th>
                        <th>hName</th>
                        <th>hLocation</th>
                        <th>entryDate</th>
                        <th>expireDate</th>
                        <th>description</th>
                        <th>hCode</th>
                        <th>phone</th>
                        <th>email</th>
                        <th>password</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="mm" items="${map.tList}">
                        <tr class="text-center">
                            <td><button class="btn btn-info btn-sm"><a href="/hotel/edit/${mm.id}"><i class="fa fa-edit" style="font-size:24px;"></i></a>Edit</button></td>
                            <td><button class="btn btn-danger btn-sm"><a href="/hotel/delete/${mm.id}"><i class="fa fa-trash" style="font-size:24px;"></i></a>Delete</button></td>

                            <td>${mm.id}</td>
                            <td>${mm.hName}</td>
                            <td>${mm.hLocation}</td>
                            <td>${mm.entryDate}</td>
                            <td>${mm.expireDate}</td>
                            <td>${mm.description}</td>
                            <td>${mm.hCode}</td>
                            <td>${mm.phone}</td>
                            <td>${mm.email}</td>
                            <td>${mm.password}</td>

                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>

