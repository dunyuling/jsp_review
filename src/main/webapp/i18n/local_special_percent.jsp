<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%@ page import="java.text.NumberFormat,java.util.Date" %>

<%
    String title = "Locale Specific Percentage";
    //Get the client's Locale
    Locale locale = request.getLocale( );
    NumberFormat nft = NumberFormat.getPercentInstance(locale);
    String formattedPerc = nft.format(0.51);
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
    <p>Formatted Percentage: <%  out.print(formattedPerc); %></p>
</div>
</body>
</html>