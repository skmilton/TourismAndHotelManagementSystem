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
    <h1 class="text-center">Tourist Information</h1>
    <div class="row">
        
        <div class="col-md-2">

        </div>
        <div class="col-md-8">
            <table class="styled-table" border="1" width="450" cellspacing="1" cellpadding="2">
                <thead>
                    <tr>
                        <th>Id</th>
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
                             <td><button class="btn btn-info btn-sm"><a href="/tourManager/edit/${mm.id}"><i class="fas fa-edit" style="font-size:24px;"></i></a>Edit</button></td>
                            <td><button class="btn btn-danger btn-sm"><a href="/tourManager/delete/${mm.id}"><i class="fas fa-trash" style="font-size:24px;"></i></a>Delete</button></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-md-2">

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>

