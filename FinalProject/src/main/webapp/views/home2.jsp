<%-- 
    Document   : home2
    Created on : Sep 7, 2019, 9:52:03 PM
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
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">

            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-2 sidebar">
                    <ul class="nav nav-sidebar">                       
                        <li>
                            <a onclick="loadListInventory();">Danh sách các đợt kiểm kê kho</a>
                        </li>
                        <li>
                            <a onclick="loadListEmployees();">Quản lý danh sách nhân viên bán hàng</a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-10">
                    <div id="con">
                        <h1>Welcome!</h1>
                    </div>
                </div>
            </div>
        </div>        

        <script>
            function loadListEmployees(){
                $.ajax({
                   type: 'GET',
                   url: "${pageContext.request.contextPath}/listEmployee",
                   success: function (a){
                       $("#con").html(a);
                   }
                });
            }
            function loadListInventory(){
                $.ajax({
                   type: 'GET',
                   url: "${pageContext.request.contextPath}/listInventory",
                   success: function (a){
                       $("#con").html(a);
                   }
                });
            }
        </script>
    </body>
</html>
