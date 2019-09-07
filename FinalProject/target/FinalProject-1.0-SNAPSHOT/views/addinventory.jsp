<%-- 
    Document   : addinventory
    Created on : Sep 7, 2019, 6:35:25 PM
    Author     : My PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Inventory Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="alert alert-info" role="alert">
            Thêm nhân đợt kiểm kê
        </div>

        <form:form action="${pageContext.request.contextPath}/addInventory" modelAttribute="inventory" >
            <label for="comment">Mã kiểm kê:</label><br/>
            <form:input path="id" type="text" id="id" placeholder="Mã kiểm kê" class="form-control col-lg-12"/><br/>
            <label for="comment">Ngày kiểm kê:</label><br/>
            <form:input path="createDate" type="date" id="createDate" placeholder="Ngày kiểm kê" class="form-control col-lg-12"/><br/>
            <label for="comment">Ghi chú:</label><br/>
            <form:input path="note" type="text" id="note" placeholder="Ghi chú" class="form-control col-lg-12"/><br/>
            <label for="comment">Mã hàng:</label><br/>
            <form:input path="product_id" type="text" id="product_id" placeholder="Mã hàng" class="form-control col-lg-12"/><br/>
            <label for="comment">Đơn vị tính:</label><br/>
            <form:input path="unit" type="text" id="unit" placeholder="Đơn vị tính" class="form-control col-lg-12"/><br/>
            <label for="comment">Số lượng:</label><br/>
            <form:input path="amount" type="text" id="amount" placeholder="số lượng" class="form-control col-lg-12"/><br/>
            <br/><br/>
            <div class="con-but" style="margin-top: 30px;">
                <input type="submit" value="Submit Button" class="btn btn-success"/>
                <input type="reset" value="Reset Button" class="btn btn-success"/>
            </div>
        </form:form>
    </body>
</html>
