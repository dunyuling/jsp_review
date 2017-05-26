<%@ page errorPage="ShowError.jsp" %>

<html>
<head>
    <title>Error Handling Example</title>
</head>
<body>
<%
    // Throw an exception to invoke the error page
    int x = 1;
    if (x == 1) {
        throw new RuntimeException("Error condition!!!");
    }
%>
<%--
<%
    try{
        int i = 1;
        i = i / 0;
        out.println("The answer is " + i);
    }
    catch (Exception e){
        out.println("An exception occurred: " + e.getMessage());
    }
%>--%>
</body>
</html>