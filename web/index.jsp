<%-- 
    Document   : index
    Created on : Jan 7, 2021, 8:24:30 PM
    Author     : user
--%>
<%
    if(session.getAttribute("login")!=null)//check login session user not access or back to register.jsp page
    {
        response.sendRedirect("welcome.jsp"); //session login user not back to index.jsp page or not type direct in url
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>SAK CRS Login Page</title>

	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/login-register.css">
	
	<script>
		
		function validate()// to validate login form
		{
			var email = document.myform.txt_email;
			var password = document.myform.txt_password;
				
			if (email.value == null || email.value == "") //check email textbox not blank
			{
				window.alert("please enter email ?"); //alert message
				email.style.background = '#f08080';
				email.focus();
				return false;
			}
			if (password.value == null || password.value == "") //check password textbox not blank
			{
				window.alert("please enter password ?"); //alert message
				password.style.background = '#f08080'; 
				password.focus();
				return false;
			}
		}
			
	</script>
	
</head>

<body>

    <br>

    <div class="main-content">

        <form class="form-register" method="post" name="myform" onsubmit="return validate();" action="LoginController">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Car Rental System Login</h1>
                        
                        <br>
                        <img src="img/caricon.webp" alt="Error displaying icon" class="caricon" style="width:200px">
                    </div>
					
					<p style="color:red">				   		
					<%--
					if(request.getAttribute("errorMsg")!=null)
					{
						out.println(request.getAttribute("errorMsg")); //error message for email or password 
					}
					--%>

                                        <%
                                            if(request.getAttribute("WrongLoginMsg")!=null)
                                                {
                                                        out.println(request.getAttribute("WrongLoginMsg")); //get login error message from LoginController
                                                }
                                            if(request.getAttribute("RegiseterSuccessMsg")!=null)
                                                {
                                                        out.println(request.getAttribute("RegiseterSuccessMsg")); //get register success message from RegisterController
                                                }
                                        %>
                                        
					</p>
				   
				   </br>

                    <div class="form-row">
                        <label>
                            <span>Email</span>
                            <input type="text" name="txt_email" id="email" placeholder="enter email">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Password</span>
                            <input type="password" name="txt_password" id="password" placeholder="enter password">
                        </label>
                    </div>

					<input type="submit" name="btn_login" value="Login">
                    
                </div>

				<a href="register.jsp" class="form-log-in-with-existing">You Don't have an account? <b> Register here </b></a>

            </div>

        </form>
              
        

    </div>

</body>

</html>
