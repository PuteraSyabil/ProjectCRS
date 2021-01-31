 <%-- 
    Document   : rentcheckout
    Created on : Jan 26, 2021, 5:54:17 PM
    Author     : pharveish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Checkout</title>
        </head>
        <body>
                <%@include file="nav.jsp" %>
                <%
                    String carNo = request.getParameter("carNo").toString();
                    String model = request.getParameter("model");
                    String type = request.getParameter("type");
                    double price = Double.parseDouble(request.getParameter("price"));
                    double duration = Double.parseDouble(request.getParameter("duration"));
                    
                    double totalPrice = price*duration;
                    
                %>
               <form  method="post" action="RentCarController">
                    <div style="margin:500px; margin-top:30px">
                        <div class="text-center">
                            <h2>Checkout</h2>
                        </div> 
                    <div class="form-group row">
                      <label for="Model" class="col-sm-2 col-form-label">Model</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="model" value="<%=model%>" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                      <label for="Type" class="col-sm-2 col-form-label">Type</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="exampleFormControlInput1" value="<%=type%>" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                      <label for="Duration" class="col-sm-2 col-form-label">Duration</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="duration" value="<%=duration%>" readonly>
                        </div>
                    </div>
                     <div class="form-group row">
                      <label for="Price" class="col-sm-2 col-form-label">Total</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="exampleFormControlInput1"  value="RM<%=totalPrice%>" readonly>
                        </div>
                    </div>
                    
                        <input type="hidden" name="carNo" value=<%=carNo%>>
                        <input type="hidden" name="total" value=<%=totalPrice%>>
                    <button type="submit" name="btn_rent" class="btn btn-outline-success mb-2">Rent Now</button>
                    </div>
                  </form>
        </body>
</html>
