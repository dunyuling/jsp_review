<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    // Set error code and reason.
//    response.sendError(200, "ok" );
    response.sendError(407, "Need authentication!!!");

%>
</body>
</html>