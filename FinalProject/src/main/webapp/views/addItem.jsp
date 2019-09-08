<%-- 
    Document   : addItem
    Created on : Sep 7, 2019, 12:41:54 AM
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
        <div class="container-fluid" id="con4">
            <div class="alert alert-info" role="alert">
                Add Order Detail
            </div>


            <input type="hidden" id="txtOrderId" value="${orderId}" />
            <label for="comment">Product:</label><br/>
            <select id="product_id">
                <c:forEach items="${products}" var="l">
                    <option value="${l.id}">${l.name}</option>
                </c:forEach>
            </select>
            <br/>
            <label for="comment">Quantity:</label><br/>
            <input type="text" id="txtQuantiry" placeholder="Quantity" class="form-control col-lg-12"/><br/>
            <div class="con-but" style="margin-top: 30px;">
                <input type="submit" value="Submit Button" class="btn btn-success" onclick="addItem()"/>
                <a href="/FinalProject/home">Finish</a>           
            </div>
        </div>

        <script>
            function addItem() {
                var id = document.getElementById("txtOrderId").value;
                var product = document.getElementById("product_id").value;
                var quantity = document.getElementById("txtQuantiry").value;
                $.ajax({
                    type: 'POST',
                    data: {
                        id: id,
                        product: product,
                        quantity: quantity
                    },
                    url: "${pageContext.request.contextPath}/addOrderDetail",
                    success: function (a) {
                        $("#con4").html(a);
                    }
                });
            }
        </script>
    </body>
</html>
