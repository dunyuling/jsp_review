<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>

<html>
<head>
    <title>Applcation object in JSP</title>
</head>
<body>
<script>
    function aa() {
        console.log("aa\n");
    }
    aa();
</script>
<%
    Integer hitsCount =
            (Integer) application.getAttribute("hitCounter");
    if (hitsCount == null || hitsCount == 0) {
       /* First visit */
        out.println("Welcome to my website!");
        hitsCount = 1;
    } else {
       /* return visit */
        out.println("Welcome back to my website!");
        hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
<div style="text-align: center;">
    <p>Total number of visits: <%=hitsCount%>
    </p>
</div>
</body>
</html>