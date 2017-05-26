<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%@ page import="java.text.DateFormat,java.util.Date" %>

<%
    String title = "Locale Specific Dates";
    //Get the client's Locale
    Locale locale = request.getLocale( );
    String date = DateFormat.getDateTimeInstance(
            DateFormat.FULL,
            DateFormat.SHORT,
            locale).format(new Date( ));
%>
<html>
<head>
    <title><% out.print(title); %></title>
</head>
<body>
<div style="text-align: center;">
    <h1><% out.print(title); %></h1>
</div>
<div align="center">
    <p>Local Date: <%  out.print(date); %></p>
</div>
</body>
</html>