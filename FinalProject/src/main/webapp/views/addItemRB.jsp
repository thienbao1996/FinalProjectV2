<%-- 
    Document   : addItemRB
    Created on : Sep 7, 2019, 3:39:33 AM
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
        <div id="con">
            <div class="alert alert-info" role="alert">
                Add Return Bill Detail
            </div>


            <input type="hidden" id="txtReturnBillId" value="${id}" /><br/>
            <label for="comment">Product ID:</label><br/>
            <input type="text" id="txtProductId" placeholder="Product ID" class="form-control col-lg-12"/><br/>
            <label for="comment">Product Name:</label><br/>
            <input type="text" id="txtProductName" placeholder="Product Name" class="form-control col-lg-12"/><br/>
            <label for="comment">Quantity:</label><br/>
            <input type="text" id="txtQuantiry" placeholder="Quantity" class="form-control col-lg-12"/><br/>
            <div class="con-but" style="margin-top: 30px;">
                <input type="submit" value="Submit Button" class="btn btn-success" onclick="addItems()"/>
                <a href="/FinalProject/home">Finish</a>           
            </div>
        </div>

        <script>
            function addItems() {
                var id = document.getElementById("txtReturnBillId").value;
                var proId = document.getElementById("txtProductId").value;
                var proName = document.getElementById("txtProductName").value;
                var quantity = document.getElementById("txtQuantiry").value;
                $.ajax({
                    type: 'GET',
                    data: {
                        id: id,
                        proId: proId,
                        proName: proName,
                        quantity: quantity
                    },
                    url: "${pageContext.request.contextPath}/Detail",
                    success: function (a) {
                        $("#con").html(a);
                    }
                });
            }
        </script>
    </body>
</html>
