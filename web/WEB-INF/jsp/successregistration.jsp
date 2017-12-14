<%-- 
    Document   : succsesregistration
    Created on : Dec 12, 2017, 4:46:36 PM
    Author     : user
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Registrasi berhasil</h1>
            ${data.nama}
            <p>
                <a href="${pageContext.request.contextPath}/login">Please Login</a>
            </p>
        </div>
    </body>
</html>
