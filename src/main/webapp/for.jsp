<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int fontSize; %>
<html>
<head><title>FOR LOOP Example</title></head>
<body>
<%for (fontSize = 1; fontSize <= 3; fontSize++) { %>
<span style="color: green; font-size:<%=fontSize*10 %>">
    JSP Tutorial
</span><br/>
<%}%>
</body>
</html>
