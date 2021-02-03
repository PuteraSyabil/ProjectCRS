<%-- 
    Document   : analytics
    Created on : Feb 3, 2021, 12:12:45 AM
    Author     : pharveish
--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Analytics</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
           <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  
    google.charts.load('current', {'packages':['corechart']});
    
   
    google.charts.setOnLoadCallback(drawChart);
    google.charts.setOnLoadCallback(drawChart2);
    
  
    function drawChart() {
      
        var data = google.visualization.arrayToDataTable([
              ['Car Type', 'Earnings(RM)'],
              <c:forEach items="${pie}" var="entry">
                  [ '${entry.getType2()}', ${entry.getTotalPrice2()} ],
              </c:forEach>
        ]);
                    
        // Set chart options
        var options = {
            'title' : 'Percentage of Earnings by Car Type', 
            is3D : true, 
            pieSliceText: 'label', 
            tooltip :  {showColorCode: true}, 
            'width' : 1300, 
            'height' : 1000 
        };
        
     
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        
        chart.draw(data, options);
    }
    
        function drawChart2() {
      
        var data = google.visualization.arrayToDataTable([
              ['Car Type', 'Earnings(RM)'],
              <c:forEach items="${pie}" var="entry">
                  [ '${entry.getType2()}', ${entry.getTotalPrice2()} ],
              </c:forEach>
        ]);
                    
        // Set chart options
        var options = {
            'title' : 'Earnings by Car Type', 
 
           
          
            'width' : 1000, 
            'height' : 1000 
        };
        
     
        var chart = new google.visualization.BarChart(document.getElementById('chart_div2'));
        
        chart.draw(data, options);
    }
</script>
</head>
<body class="bg-light">
        <!-- Navigation -->
          <%@include file="navAdmin.jsp" %>
    <div class=" container" style="margin-top: 50px">
            
        <table class="table table-striped table-hover" >
                <h2>Analysis of percentage of sales by car type</h2>
                <tr>
                    <div id="chart_div"></div>
                </tr>
                <h2>Analysis of total sales by car type</h2>
                <tr>
                    <div id="chart_div2"></div>
                </tr>
        </table>
        
    </div>
</body>
</html>