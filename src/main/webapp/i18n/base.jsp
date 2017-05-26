<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Locale" %>
<%
    //Get the client's Locale
    Locale locale = request.getLocale();
    String language = locale.getLanguage();
    String country = locale.getCountry();
%>
<html>
<head>
    <title>Detecting Locale</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Detecting Locale</h1>
</div>
<p align="center">
    <%
        out.println("Language : " + language + "<br />");
        out.println("Country  : " + country + "<br />");
    %>
</p>
</body>
</html>