<%-- 
    Document   : rentalHistory
    Created on : Jan 18, 2021, 12:36:43 PM
    Author     : Taufiiq Azman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.Car" %>
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
        <title>Manage Car</title>
    </head>
    <body class="bg-light">
        
        <!-- Navigation -->
          <%@include file="navAdmin.jsp" %>
          
            <!-- Title -->
  
            <div style="margin:100px; margin-top:50px">
               
                <a href="addCarAdmin.jsp"><button style="float: right; margin-bottom: 20px" type="button" class="btn btn-secondary d-flex justify-content-center align-content-between" >
                                 <span class="material-icons">add_circle_outline</span>
                                Add Car</button></a>
                <table class="table table-striped table-hover" >
                    <thead class="thead-dark">
                    <tr>
                        <th>No</th>
                        <th>Model</th>
                        <th>Type</th>
                        <th>Date Received</th>
                        <th>Rent Status</th>
                        <th>Image</th>
                        <th>Edit</th>
                        <th>Delete</th>
                        <th>Maintenance</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="Car" items="${carlist}" varStatus="loop">
                        <tr>  
                            
                            <td>${Car.getCarNo()}</td>
                            <td>${Car.getModel()}</td>
                            <td>${Car.getType()}</td>
                            <td>${Car.getDateReceived()}</td>
                            <td>${Car.getRentStatus()}</td>
                            <td><img src="image_car/${Car.getFile()}" alt="N/A" width="150" height="100"> </td> <!-- Tolong displaykan image, kau either summon filename or path from db -->
                                <td>
                                    <form method="get" action="editCarAdmin.jsp">
                                            <input type="hidden" name="carNo" value=${Car.getCarNo()}>
                                            <input type="hidden" name="model" value=${Car.getModel()}>
                                            <input type="hidden" name="type" value=${Car.getType()}>
                                        <button type="submit" class="btn btn-outline-primary d-flex justify-content-center align-content-between"><span class="material-icons">create</span>Edit</button>
                                    </form>
                            </td>
                            <td>
                                    <form method="post" action="DeleteCarController">
                                            <input type="hidden" name="carNo" value=${Car.getCarNo()}>
                                        <button type="submit" class="btn btn-outline-danger d-flex justify-content-center align-content-between"><span class="material-icons">delete</span>Delete</button>
                                    </form>
                            </td>
                            <td>
                                    <form method="post" action="maintenanceAdmin.jsp">
                                            <input type="hidden" name="carNo" value=${Car.getCarNo()}>
                                            <input type="hidden" name="model" value=${Car.getModel()}>
                                            <input type="hidden" name="type" value=${Car.getType()}>
                                        <button type="submit" class="btn btn-outline-warning d-flex justify-content-center align-content-between"><span class="material-icons">settings</span>Maintenance</button>
                                    </form>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div> 
    </body>
</html>
