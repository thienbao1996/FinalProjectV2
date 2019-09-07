<%-- 
    Document   : login
    Created on : Sep 7, 2019, 6:57:41 PM
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



        <div class="container-fluid" id="con2">
            <h2>Login Form</h2>
            <label for="uname"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" id="txtUsername" required>
            <br/>
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" id="txtPassword" required>
            <br/>
            <button type="submit" class="btn btn-success" onclick="login()">Login</button>
        </div>

        <script>
            function login() {              
                var user = document.getElementById("txtUsername").value;
                var pass = document.getElementById("txtPassword").value;
                $.ajax({
                    type: 'POST',
                    data: {
                        user: user,
                        pass: pass
                    },
                    url: "${pageContext.request.contextPath}/loginAction",
                    success: function (a) {
                        $("#con2").html(a);
                    }
                });
            }
        </script>
    </body>
</html>
