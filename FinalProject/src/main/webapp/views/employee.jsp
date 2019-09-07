<%-- 
    Document   : employee
    Created on : Sep 6, 2019, 11:10:10 PM
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
        <title>Employee Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <h1>Quản lý danh sách nhân viên bán hàng</h1>
        <div class="alert alert-info" role="alert">
            Danh sách nhân viên bán hàng
        </div>
        <c:if test="${not empty listEmployee}">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th scope="col">Mã NVBH</th>
                        <th scope="col">Tên NVBH</th>
                        <th scope="col">Địa chỉ</th>
                        <th scope="col">Hạn mức nhận hàng</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Ghi chú</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listEmployee}" var="c" varStatus="loop">
                        <tr>
                            <th scope="row">${c.id}</th>
                            <td>${c.name}</td>
                            <td>${c.address}</td>
                            <td>${c.limit}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${c.status==1}">
                                        Đang hoạt động
                                    </c:when>    
                                    <c:otherwise>
                                        Ngừng hoạt động
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>${c.note}</td>
                            <td>
                                <div class="con-but">
                                    <spring:url value="${c.id}" var="employee"/>
                                    <button onclick="deleteEmployee(${employee});" class="btn btn-success">
                                        Xóa
                                    </button>
                                        <spring:url value="${c.id}" var="employee"/>
                                    <button onclick="loadEditEmployee(${employee});" class="btn btn-success">
                                        Sửa
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="con-but" style="margin-top: 30px;">
                <input onclick="loadAddEmployee();" value="Thêm NVBH" class="btn btn-success"/>
            </div>
        </c:if>
    </body>
    <script>
        
        function loadAddEmployee() {
            $.ajax({
                type: 'GET',
                url: "${pageContext.request.contextPath}/loadAddEmployee",
                success: function (a) {
                    $("#con").html(a);
                }
            });
        }
        function deleteEmployee(id){
            $.ajax({
                type: 'GET',
                url: "${pageContext.request.contextPath}/deleteEmployee",
                data: {id : id},
                success: function(a){
                    $("#con").html(a);
                }
            });
        }
        function loadEditEmployee(id){
            $.ajax({
                type: 'GET',
                url: "${pageContext.request.contextPath}/loadEditEmployee",
                data: {id : id},
                success: function(a){
                    $("#con").html(a);
                }
            });
        }
    </script>
</html>
