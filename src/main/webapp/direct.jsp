<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<html>
<head>
    <title>Tag Example</title>
</head>
<body>
<%--<c:redirect url="http://www.baidu.com"/>--%>

<%--<c:import var="data" url="http://www.tutorialspoint.com"/>
<c:out value="${data}"/>--%>

<%--<a href="<c:url value="http://www.baidu.com"/>">TEST</a>--%>

${pageContext.request.queryString}
<br/><br/>
<p>${header["user-agent"]}</p>
<br/><br/>
<p>param:${param["username"]}</p>

</body>
</html>