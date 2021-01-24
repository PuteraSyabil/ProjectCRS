<%-- 
    Document   : welcome
    Created on : Jan 18, 2021, 1:39:41 AM
    Author     : pharveish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                
               <div class="jumbotron">
                       <h1 class="display-4">Welcome, <%=session.getAttribute("login")%> </h1>
                <p class="lead">This is a website for you to rent cars based on hourly rates. We have different types of cars from different models for you to choose from.</p>
                <hr class="my-4">
                <p>Start by simply browsing our car list!</p>
                <p class="lead">
                  <a class="btn btn-outline-dark btn-lg" href="CarListController" role="button">View cars</a>
                </p>
              </div>
        
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        </body>
</html>
