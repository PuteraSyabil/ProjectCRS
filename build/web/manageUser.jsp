<%-- 
    Document   : welcome
    Created on : Jan 19, 2021, 21:39:41 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="css/rentalHistory.css">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <title>Manage User</title>
    </head>
    <body class="bg-light">
        
        <!-- Navigation -->
        <div id="nav-placeholder">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <a class="navbar-brand" href="welcome.jsp">Car Rental System</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a class="nav-link" href="welcomeAdmin.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#">Manage User</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="RentalHistoryController">Rental History</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#">Pricing</a>
                        </li>
                        
                      </ul>
                    </div>
                      <form class="form-inline" action="logoutAdmin.jsp">
                        
                        <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Logout</button>
                      </form>
                  </nav>
            </div>
            <!-- Title -->
            <div class="title1">
                <h4> Manage User </h4>
            </div>
            <div style="margin:100px; margin-top:50px">
                <table class="table table-dark table-striped" >
                    <form action="ManageUserController" method="post">
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Putera</td>
                        <td>Syabil</td>
                        <td>Putera1999@graduate.utm.my</td>
                        <td>0122991249</td>                    
                        <td><button name ="edit1" type="submit" class="btn btn-outline-warning">Edit</button></td>
                        <td><button name ="delete1" type="submit" class="btn btn-outline-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Pharveish</td>
                        <td>Selvam</td>
                        <td>pharveish@example.com</td>
                        <td>0123456789</td>                    
                        <td><button name ="edit2" type="button" class="btn btn-outline-warning">Edit</button></td>
                        <td><button name ="delete2" type="button" class="btn btn-outline-danger">Delete</button></td>
                    </tr>
                </form>
                </table>
            </div> 
    </body>
</html>
