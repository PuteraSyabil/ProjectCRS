<%-- 
    Document   : rentCar
    Created on : Jan 26, 2021, 3:25:25 AM
    Author     : pharveish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Rent Car</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        </head>
        <body>
                <%@include file="nav.jsp" %>
                <%
                    String carNo = request.getParameter("carNo").toString();
                    String model = request.getParameter("model");
                    String type = request.getParameter("type");
                    String sprice = request.getParameter("sprice");
                    double price = Double.parseDouble(request.getParameter("price"));
                %>
                <div style="margin:100px; margin-top:50px">
                <h2>Rent Car</h2>
                
                <form  method="post" action="rentcheckout.jsp">
                    <div class="form-group row">
                      <label for="Model" class="col-sm-2 col-form-label">Model</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="model" value="<%=model%>" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                      <label for="Type" class="col-sm-2 col-form-label">Type</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="type" value="<%=type%>" readonly>
                        </div>
                    </div>
                     <div class="form-group row">
                      <label for="Price" class="col-sm-2 col-form-label">Price per hour</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="sprice" value="RM<%=sprice%>" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                      <label for="Duration" class="col-sm-2 col-form-label">Duration(hours)</label>
                        <div class="col-sm-10">
                            <input type="number" min="1" max="12" step="1" name="duration" required>
                        </div>
                    </div>
                        <input type="hidden" name="carNo" value=<%=carNo%>>
                        <input type="hidden" name="price" value=<%=price%>>
                    <button type="submit" name="btn_addcar" class="btn btn-outline-success mb-2">Rent Now</button>
                  </form>
                </div>
        </body>
</html>
