<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%
    // Set response content type
    response.setContentType("text/html");
    // Set spanish language code.
    response.setHeader("Content-Language", "es");
    String title = "En Español";

%>
<html>
<head>
    <title><%  out.print(title); %></title>
</head>
<body>
<div style="text-align: center;">
    <h1><%  out.print(title); %></h1>
</div>
<div align="center">
    <p>En Español</p>
    <p>¡Hola Mundo!</p>
</div>
</body>
</html>
