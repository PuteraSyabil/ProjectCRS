<%-- 
    Document   : carlist
    Created on : Jan 17, 2021, 7:55:29 PM
    Author     : pharveish
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.Car" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
                <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
                <title>Car List</title>
        </head>
        <body>
                <%@include file="nav.jsp" %>
               
                <div style="margin:100px; margin-top:50px">
                        <h2>Our Cars</h2>
                <table class="table table-striped table-hover" >
                    <thead class="thead-dark">
                    <tr>
                        <th>No</th>
                        <th>Model</th>
                        <th>Type</th>
                        <th>Image</th>
                        <th>Availability</th>
                    
                        
                    </tr>
                    </thead>
                    <tbody>
                            
                    <c:forEach var="Car" items="${carlist}">
                        <tr>  
                            <td>${Car.getCarNo()}</td>
                            <td>${Car.getModel()}</td>
                            <td>${Car.getType()}</td>
                            <td><img src="image_car/${Car.getFile()}" alt="N/A" width="150" height="100"> </td>
                            <td>${Car.getRentStatus()}</td>
                          
                          
                        </tr>
                    </c:forEach>
                            
                            
               
        
                    </tbody>
                </table>
                </div>
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        </body>
</html>
