<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The include Action Example</title>
</head>
<body>
<div style="text-align: center;">
    <h2>The include action Example</h2>
    <%--<jsp:include page="date.jsp" flush="false"/>--%>
    <jsp:forward page="date.jsp" />
</div>
</body>
</html>