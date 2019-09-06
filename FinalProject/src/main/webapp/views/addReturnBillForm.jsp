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
        <div class="alert alert-info" role="alert">
            Add Return Bill
        </div>

        <form:form action="${pageContext.request.contextPath}/addReturnBill" modelAttribute="ReturnBill" method="POST">
            <label for="comment">Create Date:</label><br/>
            <form:input path="createdate" type="text" id="createdate" placeholder="Create Date" class="form-control col-lg-12"/><br/>
            <br/>
            <div class="con-but" style="margin-top: 30px;">
                <input type="submit" value="Submit Button" class="btn btn-success"/>
                <input type="reset" value="Reset Button" class="btn btn-success"/>
            </div>
        </form:form>
    </body>
</html>
