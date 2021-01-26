<%-- 
    Document   : rentedListAdmin
    Created on : Jan 20, 2021, 12:43:23 AM
    Author     : pharveish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="css/rentalHistory.css">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <title>Rented Cars </title>
    </head>
    <body class="bg-light">
        
        <!-- Navigation -->
          <%@include file="navAdmin.jsp" %>
            <!-- Title -->
  
            <div style="margin:100px; margin-top:50px">
                <h2>Cars being Rented</h2>
                <table class="table table-striped table-hover" >
                    <thead class="thead-dark">
                    <tr>
                        <th>Rent ID</th>
                        <th>Car No.</th>
                        <th>Model</th>
                        <th>Type</th>
                        <th>Customer Firstname</th>
                        <th>Customer Lastname</th>
                        <th>Customer IC no.</th>
                        <th>Date of Rental</th>
                        <th>Starting time</th>
                        <th>Duration</th>
                        <th>Earnings</th>
                      
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="total" value="${0}"/>
                    <c:forEach var="Rent" items="${rentedcarlist}" varStatus="loop">
                        <tr>  
                            <td>${Rent.getRentID()}</td>
                            <td>${Rent.getCarNo()}</td>
                            <td>${Rent.getModel()}</td>
                            <td>${Rent.getType()}</td>
                            <td>${Rent.getFirstname()}</td>
                            <td>${Rent.getLastname()}</td>
                            <td>${Rent.getIc()}</td>
                            <td>${Rent.getRentDate()}</td>
                            <td>${Rent.getRentTime()}</td>
                            <td>${Rent.getDuration()}</td>
                            <td>RM${Rent.getTotalPrice()}</td>
                            
                          
                             <c:set var="total" value="${total + Rent.getTotalPrice()}" />
                        </tr>

                    </c:forEach>
                        <tr>                        
                            <td colspan="10"><b>Total Earnings</b></td>
                            <td>RM${total}</td>
                        </tr>
                    </tbody>
                </table>
            </div> 
    </body>
</html>
