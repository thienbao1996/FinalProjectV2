<%-- 
    Document   : orders
    Created on : Sep 6, 2019, 11:12:33 PM
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
        <h1 class="page-header">List Order Management</h1>

        <div class="alert alert-info" role="alert">
            List Order
        </div>

        <c:if test="${not empty listOrder}">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th scope="col">ID Order</th>
                        <th scope="col">Create Date</th>
                        <th scope="col">Discount</th>
                        <th scope="col">Tax</th>
                        <th scope="col">Total</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listOrder}" var="c" varStatus="loop">
                        <tr>
                            <th scope="row">${c.id}</th>
                            <td>${c.createdate}</td>
                            <td>${c.discount}</td>
                            <td>${c.tax}</td>                           
                            <td>${c.total}</td>                           
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="con-but" style="margin-top: 30px;">
                <input onclick="loadAddOrderForm()" value="Add Order" class="btn btn-success"/>
            </div>
        </c:if>
        
        <script>
            function loadAddOrderForm() {
                $.ajax({
                    type: "GET",
                    url: "${pageContext.request.contextPath}/addOrderForm",
                    success: function (a) {
                        $("#con").html(a);
                    }
                });
            }
        </script>
    </body>
</html>
