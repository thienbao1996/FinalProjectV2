<%-- 
    Document   : addReturnBillForm
    Created on : Sep 7, 2019, 3:30:31 AM
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
        <div id="con5" class="container-fluid">
            <div class="alert alert-info" role="alert">
                Add Return Bill
            </div>

            <label for="comment">Create Date:</label><br/>
            <input type="text" id="txtCreatedate" placeholder="Create Date" class="form-control col-lg-12"/><br/>
            <br/>
            <div class="con-but" style="margin-top: 30px;">
                <input type="submit" value="Submit Button" class="btn btn-success" onclick="addReturnBill()"/>
                <input type="reset" value="Reset Button" class="btn btn-success"/>
            </div>
        </div>

        <script>
            function addReturnBill() {
                var date = document.getElementById("txtCreatedate").value;
                $.ajax({
                    type: 'POST',
                    data: {
                        date: date
                    },
                    url: "${pageContext.request.contextPath}/addReturnBill",
                    success: function (a) {
                        $("#con5").html(a);
                    }
                });
            }
        </script>
    </body>
</html>
