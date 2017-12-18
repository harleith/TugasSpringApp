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
        <div>Total belanjaan Anda: ${cartok}</div>
        <h3><a href="#">Cart: ${cart.carts.size()}</a></h3>
                <c:forEach var="c" items="${cart.carts.values()}">
                    <label>Product Name: ${c.namaProduct} Harga: ${c.harga}</label><br> 
                                  
                </c:forEach>
    </body>
</html>
