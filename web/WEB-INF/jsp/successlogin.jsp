<%-- 
    Document   : successlogin
    Created on : Dec 13, 2017, 9:52:33 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    </head>
    <body>
        
        <div class="container">
            <h1>${user.username}, Anda berhasil Login</h1>
             <c:if test="${not empty sessionScope.user}">
            <div><a href="${pageContext.request.contextPath}/logout">Logout</a></div>
        </c:if>
        </div>
    </body>
</html>

