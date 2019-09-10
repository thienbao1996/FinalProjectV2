<%-- 
    Document   : inventory
    Created on : Sep 7, 2019, 6:23:34 PM
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
        <title>Inventory Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <h1>Quản lý danh sách các đợt kiểm kê</h1>
        <div class="alert alert-info" role="alert">
            Danh sách các đợt kiểm kê
        </div>
        <c:if test="${not empty inventory}">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th scope="col">Mã kiểm kê</th>
                        <th scope="col">Ngày kiểm kê</th>
                        <th scope="col">Ghi chú</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${inventory}" var="c" varStatus="loop">
                        <tr>
                            <th scope="row">${c.id}</th>
                            <td>${c.createDate}</td>
                            <td>${c.note}</td>
                            <td>
                                <div class="con-but">
                                        <spring:url value="${c.id}" var="inventory"/>
                                    <button onclick="loadEditInventory(${inventory});" class="btn btn-success">
                                        Sửa
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            
        </c:if>
        <div class="con-but" style="margin-top: 30px;">
                <input onclick="loadAddInventory();" value="Thêm đợt kiểm kê" class="btn btn-success"/>
         </div>
    </body>
    <script>
        function loadAddInventory() {
            $.ajax({
                type: 'GET',
                url: "${pageContext.request.contextPath}/loadAddInventory",
                success: function (a) {
                    $("#con").html(a);
                }
            });
        }
        function loadEditInventory(id){
            $.ajax({
                type: 'GET',
                url: "${pageContext.request.contextPath}/loadEditInventory",
                data: {id : id},
                success: function(a){
                    $("#con").html(a);
                }
            });
        }
    </script>
</html>
