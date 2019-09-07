<%-- 
    Document   : addemployeeform
    Created on : Sep 7, 2019, 12:40:00 AM
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
        <title>Add Employee Pages</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="alert alert-info" role="alert">
            Thêm nhân viên bán hàng
        </div>

        <form:form action="${pageContext.request.contextPath}/addEmployee" modelAttribute="employee" method="POST">
            <label for="comment">Mã NVBH:</label><br/>
            <form:input path="id" type="text" id="id" placeholder="Mã NVBH" class="form-control col-lg-12"/><br/>
            <label for="comment">Tên NVBH:</label><br/>
            <form:input path="name" type="text" id="name" placeholder="Tên NVBH" class="form-control col-lg-12"/><br/>
            <label for="comment">Địa chỉ:</label><br/>
            <form:input path="address" type="text" id="address" placeholder="Địa chỉ" class="form-control col-lg-12"/><br/>
            <label for="comment">Hạn mức nhận hàng:</label><br/>
            <form:input path="limit" type="text" id="limit" placeholder="Hạn mức nhận hàng" class="form-control col-lg-12"/><br/>
            <label for="comment">Trạng thái:</label><br/>
            <form:select path="status" name="status">
                <form:option value="1">Đang hoạt động</form:option>
                <form:option value="0">Ngừng hoạt động</form:option>
            </form:select>
            <br/>
            <label for="comment">Ghi chú:</label><br/>
            <form:input path="note" type="text" id="note" placeholder="Ghi chú" class="form-control col-lg-12"/><br/>
            <br/><br/>
            <div class="con-but" style="margin-top: 30px;">
                <input type="submit" value="Submit Button" class="btn btn-success"/>
            </div>
        </form:form>
    </body>
</html>
