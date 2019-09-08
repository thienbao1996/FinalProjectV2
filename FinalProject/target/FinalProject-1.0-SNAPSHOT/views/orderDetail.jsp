<%-- 
    Document   : orderDetail
    Created on : Sep 8, 2019, 4:02:54 PM
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
        <h1 class="page-header">Order Detail Management</h1>

        <div class="alert alert-info" role="alert">
            List Item
        </div>

        <c:if test="${not empty orderDetail}">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th scope="col">Product</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Company</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${orderDetail}" var="c" varStatus="loop">
                        <tr>
                            <th scope="row">
                                ${c.product.name}
                            </th>
                            <td>${c.quantity}</td>                                                  
                            <td>${c.company}</td>                                                  
                        </tr>
                    </c:forEach>
                </tbody>
            </table>            
        </c:if>
    </body>
</html>
