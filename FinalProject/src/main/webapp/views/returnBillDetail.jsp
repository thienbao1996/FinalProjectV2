<%-- 
    Document   : returnBillDetail
    Created on : Sep 8, 2019, 6:18:05 PM
    Author     : baolu
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <h1 class="page-header">Return Bill Detail Management</h1>

        <div class="alert alert-info" role="alert">
            List Item
        </div>

        <c:if test="${not empty returnBillDetail}">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th scope="col">Product ID</th>
                        <th scope="col">Product</th>
                        <th scope="col">Quantity</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${returnBillDetail}" var="c" varStatus="loop">
                        <tr>
                            <td scope="row">
                                ${c.productId}
                            </td>
                            <td>${c.productName}</td>                                                  
                            <td>${c.quantity}</td>                                                  
                        </tr>
                    </c:forEach>
                </tbody>
            </table>            
        </c:if>
    </body>
</html>
