<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%@ page import="java.text.NumberFormat,java.util.Date" %>

<%
    String title = "Locale Specific Currency";
    //Get the client's Locale
    Locale locale = request.getLocale( );
    NumberFormat nft = NumberFormat.getCurrencyInstance(locale);
    String formattedCurr = nft.format(1000000);
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
    <p>Formatted Currency: <%  out.print(formattedCurr); %></p>
</div>
</body>
</html>