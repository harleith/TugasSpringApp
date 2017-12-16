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
        <c:forEach var="c" items="${Product}">
            <p>
                <a href="{c.id}"> ${c.productNama}</a>
                <a href="{pageContext.request.contextPath}/order/add/${c.id}">add to cart</a>
            </p>
        </c:forEach>
    </body>
</html>
