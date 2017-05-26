<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="#ffffff">
<form method="POST" action="j_security_check">
    <table border="0">
        <tr>
            <td>Login</td>
            <td><input type="text" name="j_username"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="j_password"></td>
        </tr>
    </table>
    <input type="submit" value="Login!">
    </center>
</form>

<%
    out.println(request.isUserInRole("tomcat"));
%>
</body>
</html>