<%-- 
    Document   : welcome.jsp
    Created on : Jan 18, 2021, 12:47:24 AM
    Author     : pharveish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Home</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        </head>
        <body>
                <%
                    if(session.getAttribute("login")==null || session.getAttribute("login")=="") //check if condition for unauthorize user not direct access welcome.jsp page
                    {
                        response.sendRedirect("index.jsp");
                    }
                %>
                <div id="nav-placeholder">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <a class="navbar-brand" href="welcome.jsp">Car Rental System</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a class="nav-link" href="profile.jsp">Profile</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="CarListController">Car List</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="ToRentController">Rent Now</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="ViewCurrentRentedController">Current Rent</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="userHistoryController">Rent History</a>
                        </li>
                        
                      </ul>
                    </div>
                      <form class="form-inline" action="logout.jsp">
                        
                        <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Logout</button>
                      </form>
                  </nav>
                </div>
                  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        </body>
</html>
