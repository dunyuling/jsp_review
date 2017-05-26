<%@ page import="java.util.logging.Logger" %><%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 17-5-26
  Time: 下午4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>System.out.println</title></head>
<body>
<%--

<c:forEach var="counter" begin="1" end="10" step="1" >
    <c:out value="${counter-5}"/></br>
    <% System.out.println( "counter= " +
            pageContext.findAttribute("counter") ); %>
</c:forEach>
--%>


<% Logger logger = Logger.getLogger(this.getClass().getName());%>

<c:forEach var="counter" begin="1" end="10" step="1">
    <c:set var="myCount" value="${counter-5}"/>
    <c:out value="${myCount}"/></br>
    <% String message = "counter="
            + pageContext.findAttribute("counter")
            + " myCount="
            + pageContext.findAttribute("myCount");
        logger.info(message);

        
    %>
</c:forEach>
</body>
</html>