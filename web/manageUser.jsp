<%-- 
    Document   : welcome
    Created on : Jan 19, 2021, 21:39:41 PM
    Author     : USER
--%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="bean.User" %>
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
        <%@include file="navAdmin.jsp" %>
            <!-- Title -->
            <div class="title1">
               
            </div>
            <div style="margin:100px; margin-top:50px">
                     <h2> Manage User </h2>
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
                   <% int counter = 0; %>
                    <c:forEach var="User" items="${userlist}">

                    <tr>
                        <td><input class="form-control" name="identification" id="i<%= counter%>" type="text" value="${User.getId()}" aria-label="Disabled input example" disabled></td>
                        <td><input class="form-control" name="firstname" id="f<%= counter%>" type="text" value="${User.getFirstname()}" aria-label="Disabled input example" disabled></td>
                        <td><input class="form-control" name="lastname" id="l<%= counter%>" type="text" value="${User.getLastname()}" aria-label="Disabled input example" disabled></td>
                        <td><input class="form-control" name="email" id="e<%= counter%>" type="text" value="${User.getEmail()}" aria-label="Disabled input example" disabled></td>
                        <td><input class="form-control" name="phonenum" id="p<%= counter%>" type="text" value="${User.getPhonenum()}" aria-label="Disabled input example" disabled></td>                    
                        <td><button name ="edit${User.getId()}" value="<%= counter%>" type="button" onclick="myFunction()" class="btn btn-outline-warning">Edit</button></td>
                        <td><button name ="delete" value="${User.getId()}" type="submit" class="btn btn-outline-danger">Delete</button></td>
                        <% counter++; %>
                    
                    
                    </tr>
                    </c:forEach>
                 
                </table>
                   <button name ="save" id="save" value="${User.getId()}" type="submit" class="btn btn-outline-success" disabled="true">Save</button>
                            </form>
            </div> 

    </body>
                        <script> 
                        $("button").click(function() {
                        var fired_button = $(this).val();
                        element = String(fired_button);
                        document.getElementById("i"+element).disabled = false;
                        document.getElementById("i"+element).readOnly = true;
                        document.getElementById("f"+element).disabled = false;
                        document.getElementById("l"+element).disabled = false;
                        document.getElementById("e"+element).disabled = false;
                        document.getElementById("p"+element).disabled = false;
                        document.getElementById("save").disabled = false;
                        });
                        function myFunction(){

                        }</script>  
</html>
