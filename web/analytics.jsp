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
    google.charts.setOnLoadCallback(drawChart3);
    google.charts.setOnLoadCallback(drawChart4);
    google.charts.setOnLoadCallback(drawChart5);
    google.charts.setOnLoadCallback(drawChart6);
  
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
            'width' : 600, 
            'height' : 600 
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
 
           
          
            'width' : 600, 
            'height' : 600 
        };
        
     
        var chart = new google.visualization.BarChart(document.getElementById('chart_div2'));
        
        chart.draw(data, options);
    }
    
            function drawChart3() {
      
        var data = google.visualization.arrayToDataTable([
              ['Customer Name', 'Expenses(RM)'],
              <c:forEach items="${custPrice}" var="entry">
                  [ '${entry.getName()}', ${entry.getTotalPrice2()} ],
              </c:forEach>
        ]);
                    
        // Set chart options
        var options = {
            'title' : 'Earnings from each customer', 
 
           
          
            'width' : 600, 
            'height' : 600 
        };
        
     
        var chart = new google.visualization.BarChart(document.getElementById('chart_div3'));
        
        chart.draw(data, options);
    }
    
                function drawChart4() {
      
        var data = google.visualization.arrayToDataTable([
              ['Customer Name', 'Expenses(RM)'],
              <c:forEach items="${custPrice}" var="entry">
                  [ '${entry.getName()}', ${entry.getTotalPrice2()} ],
              </c:forEach>
        ]);
                    
        // Set chart options
        var options = {
              'title' : 'Percentage of Earnings from each Customer', 
            is3D : true, 
            pieSliceText: 'label', 
            tooltip :  {showColorCode: true}, 
            'width' : 600, 
            'height' : 600 
        };
        
     
        var chart = new google.visualization.PieChart(document.getElementById('chart_div4'));
        
        chart.draw(data, options);
    }
    
                function drawChart5() {
      
        var data = google.visualization.arrayToDataTable([
              ['Duration', 'Rent Quantity'],
              <c:forEach items="${countDuration}" var="entry">
                  [ ${entry.getDuration()}, ${entry.getQduration()} ],
              </c:forEach>
        ]);
                    
        // Set chart options
        var options = {
            'title' : 'Duration per Rent', 
 
           
          
            'width' : 600, 
            'height' : 600 
        };
        
     
        var chart = new google.visualization.BarChart(document.getElementById('chart_div5'));
        
        chart.draw(data, options);
    }
    
                function drawChart6() {
      
        var data = google.visualization.arrayToDataTable([
              ['Duration', 'Rent Quantity'],
              <c:forEach items="${countDuration}" var="entry">
                  [ '${entry.durationString()}', ${entry.getQduration()} ],
              </c:forEach>
        ]);
                    
        // Set chart options
        var options = {
              'title' : 'Percentage of Duration per Rent', 
            is3D : true, 
            pieSliceText: 'label', 
            tooltip :  {showColorCode: true}, 
            'width' : 600, 
            'height' : 600 
        };
        
     
        var chart = new google.visualization.PieChart(document.getElementById('chart_div6'));
        
        chart.draw(data, options);
    }
</script>
</head>
<body class="bg-light">
        <!-- Navigation -->
          <%@include file="navAdmin.jsp" %>
    <div class="container" style="margin-top: 50px">
            
        <table class="table table-striped table-hover" style="margin-bottom: 100px">
                <h2>Analysis of profit by car type</h2>
                <h5>The charts below shows the difference in our earnings depending on the type of car rented by customers.</h5>
                <tr>
                    <td style="width: 500">
                        <div id="chart_div"></div>
                    </td>
                    <td style="width: 500">
                        <div id="chart_div2"></div>
                    </td>
                </tr>
        </table>     
        <table class="table table-striped table-hover" style="margin-bottom: 100px">   
                <h2>Analysis of profit from each customer</h2>
                <h5>The charts below shows how much we earned from each customer.</h5>
                <tr>
                    <td>
                        <div id="chart_div4"></div>
                    </td>
                    <td>
                        <div id="chart_div3"></div>
                    </td>
                </tr>
        </table>
        <table class="table table-striped table-hover" style="margin-bottom: 100px">   
                <h2>Analysis of duration per rent</h2>
                <h5>The charts below shows the number of times a particular duration(hours) is chosen when a customer is renting a car.</h5>
                <tr>
                    <td>
                        <div id="chart_div6"></div>
                    </td>
                    <td>
                        <div id="chart_div5"></div>
                    </td>
                </tr>
        </table>
         
    </div>
</body>
</html>