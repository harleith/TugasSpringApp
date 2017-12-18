<%-- 
    Document   : tabelproduct
    Created on : Dec 16, 2017, 9:12:47 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Product</h1>
        <c:forEach var="c" items="${tabelproduct}">
            <p>
                <a href="{c.id}"> ${c.productNama}</a>
                <b><a href="${pageContext.request.contextPath}/cart/add/${c.id}"><button type="submit">TambahkanKeranjang</button> </a></b>
            </p>
        </c:forEach>
    </body>
</html>
