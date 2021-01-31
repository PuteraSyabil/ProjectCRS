<%-- 
    Document   : viewMaintenanceAdmin
    Created on : Jan 31, 2021, 4:40:13 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.Maintenance" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="css/rentalHistory.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href = "https://fonts.googleapis.com/icon?family=Material+Icons" rel = "stylesheet">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <title>View Maintenance Car</title>
    </head>
    <body class="bg-light">
        
        <!-- Navigation -->
          <%@include file="navAdmin.jsp" %>
          
            <!-- Title -->
  
            <div style="margin:100px; margin-top:50px">

                <table class="table table-striped table-hover" >
                    <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Car No</th>
                        <th>Model</th>
                        <th>Type</th>
                        <th>Time Sent</th>
                        <th>Date Sent</th>
                        <th>Issue</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="car" items="${carlist}" varStatus="loop">
                        <tr>  
                            
                            <td>${car.getMid()}</td>
                            <td>${car.getFk_carNo()}</td>
                            <td>${car.getModel()}</td>
                            <td>${car.getType()}</td>
                            <td>${car.getTimeSent()}</td>
                            <td>${car.getDateSent()}</td>
                            <td>${car.getIssue()}</td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div> 
    </body>
</html>
