<%-- 
    Document   : cartok
    Created on : Dec 16, 2017, 9:13:29 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h3><a href="#">Cart: ${cart.carts.size}</a></h3>
        <c:forEach var="c" items="${cart.carts.value()}">
            <label>Product Name: ${c.productNama}</label>
        </c:forEach>
    </body>
</html>
