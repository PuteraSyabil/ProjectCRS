<%-- 
    Document   : navAdmin
    Created on : Jan 19, 2021, 9:26:49 PM
    Author     : pharveish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
                 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        </head>
        <body>
                   <%
                    if(session.getAttribute("login")==null || session.getAttribute("login")=="") //check if condition for unauthorize user not direct access welcome.jsp page
                    {
                        response.sendRedirect("indexAdmin.jsp");
                    }
                %>
    
        <!-- Navigation -->
        <div id="nav-placeholder">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <a class="navbar-brand" href="welcomeAdmin.jsp">Admin</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a class="nav-link" href="ManageUserController">Manage Users</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="CurrentlyRentedAdminController">Currently on Rent</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="RentedListController">Rental History</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="RentalHistoryController">Manage Car</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="viewMaintenanceController">Car on Maintenance</a>
                        </li>
                        
                        
                      </ul>
                    </div>
                      <form class="form-inline" action="logoutAdmin.jsp">
                        
                        <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Logout</button>
                      </form>
                  </nav>
                </div>
        </body>
</html>
