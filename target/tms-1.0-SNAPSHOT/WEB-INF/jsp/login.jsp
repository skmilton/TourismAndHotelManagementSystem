<%-- 
    Document   : login
    Created on : Jan 28, 2021, 3:34:52 PM
    Author     : B-7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<form name='loginForm' action="<c:url value='login'/>" method='POST'>
    <table>
        <tr>
            <td>User:</td>
            <td><input type='text' name='username' value=''>
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <input type='password' name='password' />
            </td>
        </tr>
        <tr>
            <td>
                <input name="submit" type="submit"
                       value="submit" />
            </td>
            <td>
                <input name="reset" type="reset" />
            </td>
        </tr>
    </table>
</form>
