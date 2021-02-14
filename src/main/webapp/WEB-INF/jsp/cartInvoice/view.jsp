
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
        <div col-md-3>

        </div>
        <div col-md-9 px-10 my-10>
            <table class="styled-table">
                
                
            </table>
            
            
            
<a href="/cartInvoice/view" class="genric-btn success-border circle arrow">Success<span class="lnr lnr-arrow-right"></span></a>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/common/dash/footer.jsp"/>

