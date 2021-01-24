<%-- 
    Document   : index
    Created on : Jan 7, 2021, 8:24:30 PM
    Author     : user
--%>
<%
    if(session.getAttribute("login")!=null)//check login session user not access or back to register.jsp page
    {
        response.sendRedirect("welcomeAdmin.jsp"); //session login user not back to index.jsp page or not type direct in url
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
		
		function validate()
                {
                        var username = document.LoginForm.txt_username; //get form name "LoginForm" and textbox name "txt_username" store in variable username
                        var password = document.LoginForm.txt_password; //get form name "LoginForm" and textbox name "txt_password" store in variable password
				
                     if (username.value == null || username.value == "") //check username textbox not blank
                        {
                            window.alert("please enter username ?"); //alert message
                            username.style.background = '#f08080'; //set textbox color
                            username.focus();
                            return false;
                        }
            if (password.value == null || password.value == "") //check password textbox not blank
            {
		window.alert("please enter password ?"); //alert message
		password.style.background = '#f08080'; //set textbox color
		password.focus();
		return false;
            }
	}
			
	</script>
	
</head>

<body>

    <br>

    <div class="main-content">

        <form class="form-register" method="post" name="myform" onsubmit="return validate();" action="LoginControllerAdmin">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Admin Login</h1>
                        <br>
                        <img src="img/admin.jpg" alt="Error displaying icon" class="caricon" style="width:200px">
                    </div>
					
					<p style="color:red">				   		
					

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
                            <span>Username</span>
                            <input type="text" name="txt_username" id="username" placeholder="enter username">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Password</span>
                            <input type="password" name="txt_password" id="password" placeholder="enter password">
                        </label>
                    </div>

					<input type="submit" name="btn_login" value="LoginAdmin">
                    
                </div>

				

            </div>

        </form>
              
        

    </div>

</body>

</html>
