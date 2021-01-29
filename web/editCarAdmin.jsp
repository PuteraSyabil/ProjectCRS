<%-- 
    Document   : editCarAdmin
    Created on : Jan 19, 2021, 10:44:12 PM
    Author     : pharveish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
         <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Edit Car</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        </head>
        <body>
                <%@include file="navAdmin.jsp" %>
                <% String carNo = request.getParameter("carNo"); %>
                <% String model = request.getParameter("model"); %>
                <% String type = request.getParameter("type"); %>
                <div style="margin:100px; margin-top:50px">
                <h2>Edit Car</h2>
                <form  method="post" action="EditCarController">
                    <div class="form-group row">
                      <label for="carNo" class="col-sm-2 col-form-label">Car No</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="carNo" value="<%=carNo%>" readonly>
                        </div>
                    </div>
                       
                   
                    <div class="form-group row">
                      <label for="Model" class="col-sm-2 col-form-label">Model</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="model" value="<%=model%>" required>
                        </div>
                    </div>
                    <div class="form-group row">
                      <label for="Type" class="col-sm-2 col-form-label">Type</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="exampleFormControlSelect1" name="type" required>
                              <option>Sedan</option>
                              <option>Hatchback</option>
                              <option>MPV</option>
                              <option>SUV</option>
                              <option>Sports</option>
                            </select>
                        </div>
                    </div>
                    
                    <button type="submit" name="btn_editcar" class="btn btn-outline-success mb-2">Edit Car</button>
                  </form>
                </div>
        </body>
</html>
