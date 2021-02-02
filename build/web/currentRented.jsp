<%-- 
    Document   : currentRented
    Created on : Jan 30, 2021, 1:03:14 PM
    Author     : Taufiiq Azman
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.Rent" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <title>Current Rented</title>
    </head>
    <body class="bg-light">
        <%@include file="nav.jsp" %>
        
        
        <div style="margin:100px; margin-top:50px">
                <h2 class="text-center">My Current Rented Car</h2>
                <table class="table table-striped table-hover" >
                    <thead class="thead-dark">
                    <tr>
                        <th>Car No</th>
                        <th>Model</th>
                        <th>Image</th>                     
                        <th>Rent Date</th>
                        <th>Rent Time</th>
                        <th>Duration</th>
                    </tr>
                    </thead>
                    <tbody>
                            
                    <c:forEach var="Rent" items="${carlist}">
                        <tr>  
                            <td>${Rent.getCarNo()}</td>
                            <td>${Rent.getModel()}</td>
                            <td><img src="image_car/${Rent.getFilename()}" alt="N/A" width="150" height="100"></td>
                            <td>${Rent.getRentDate()}</td>
                            <td>${Rent.getRentTime()}</td>
                            <td>${Rent.getDuration()} hours</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
        </div>
    </body>
</html>
