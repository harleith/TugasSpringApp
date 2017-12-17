<%-- 
    Document   : registration
    Created on : Dec 12, 2017, 4:45:16 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Registration</title>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    </head>
    <body> 
        <div align="center">
                <legend>
                     Form Registration
                </legend>
        </div>
        <div class="container col-sm-4" style="padding: 40px" align="center">
                    <form:form action="register/save" modelAttribute="registerBean" method="POST" >
                        <table>
                            <div class="form-group">
                            <tr><td><form:label path="nama">Nama</form:label></td>
                                <td><form:input path="nama" cssClass="form-control"/></td></tr>
                            
                            <tr><td><form:label path="email">Email</form:label></td>
                                <td><form:input path="email" cssClass="form-control"/></td></tr>
                           <tr><td><form:label path="alamat">Alamat</form:label></td>
                                <td><form:input path="alamat" cssClass="form-control"/></td></tr>
                            <tr><td><form:label path="username">Username</form:label></td>
                                <td><form:input path="username" cssClass="form-control"/></td></tr>
                            <tr><td><form:label path="password">Password</form:label></td>
                                <td><form:password path="password" cssClass="form-control"/></td></tr>
                            <tr><td></td><td><form:button name="submitButton" value="Submit">Submit</form:button></td></tr>            
                            </table>   
                        
                    </form:form>
            
                </div>
            </div>
        </div>
    </body>
</html>
