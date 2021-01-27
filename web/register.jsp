<%
if(session.getAttribute("login")!=null) //check login session user not access or back to register.jsp page
{
	response.sendRedirect("welcome.jsp");//session login user not back to index.jsp page or not type direct in url
}
%>

<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>Register Page</title>

	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/login-register.css">
	
	<!-- javascript for registeration form validation-->
	<script>	
	
		function validate()
		{
			var first_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
			var last_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
			var email_valid= /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/; //pattern valid email validation
			var password_valid=/^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/; //pattern password allowed A to Z, a to z, 0-9, !@#$%&*()<> charecter 
			var icnum_valid = /^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/;
                        var pnum_valid = /^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/;
                        
			var fname = document.getElementById("fname"); //textbox id fname
                        var lname = document.getElementById("lname"); //textbox id lname
                        var email = document.getElementById("email"); //textbox id email
                        var password = document.getElementById("password"); //textbox id password
			var icnum = document.getElementById("icnum");//textbox id icnum
                        var pnum=document.getElementById("pnum");//textbox id pnum
                        
                        
	if(!first_name.test(fname.value) || fname.value=='') 
            {
				alert("Enter Firstname Alphabet Only....!");
                fname.focus();
                fname.style.background = '#f08080';
                return false;                    
            }
	if(!last_name.test(lname.value) || lname.value=='') 
            {
				alert("Enter Lastname Alphabet Only....!");
                lname.focus();
                lname.style.background = '#f08080';
                return false;                    
            }
	if(!email_valid.test(email.value) || email.value=='') 
            {
				alert("Enter Valid Email....!");
                email.focus();
                email.style.background = '#f08080';
                return false;                    
            }
	if(!password_valid.test(password.value) || password.value=='') 
            {
				alert("Password Must Be 6 to 12 and allowed !@#$%&*()<> character");
                password.focus();
                password.style.background = '#f08080';
                return false;                    
            }
        if(!icnum_valid.test(icnum.value) || icnum.value=='') 
            {
				alert("Enter number only....!");
                icnum.focus();
                icnum.style.background = '#f08080';
                return false;                    
            }
        if(!pnum_valid.test(pnum.value) || pnum.value=='') 
            {
				alert("Enter number only....!");
                pnum.focus();
                pnum.style.background = '#f08080';
                return false;                    
            }
		}
		
	</script>	

</head>

<body>

    <br>

    <div class="main-content">

        <form class="form-register" method="post" action="RegisterController"  onsubmit="return validate();">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Register Now!</h1>
                        <br>
                         <img src="img/caricon.webp" alt="Error displaying icon" class="caricon" style="width:200px">
                    </div>
				   
					<p style="color:green">				   		
					<%
					
                                            if(request.getAttribute("RegisterErrorMsg")!=null)
                                            {
                                                out.println(request.getAttribute("RegisterErrorMsg")); //get register fail error message from "RegisterController"
                                            }
                                        %>
					</p>
				   
                                        
				   </br>
				   
                    <div class="form-row">
                        <label>
                            <span>First Name</span>
                            <input type="text" name="txt_firstname" id="fname" placeholder="enter first name">
                        </label>
                    </div>
					<div class="form-row">
                        <label>
                            <span>Last Name</span>
                            <input type="text" name="txt_lastname" id="lname" placeholder="enter last name">
                        </label>
                    </div>

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
                    
                    <div class="form-row">
                        <label>
                            <span>IC Number</span>
                            <input type="text" name="txt_icnum" id="icnum" placeholder="enter ic" pattern="[0-9]{3}[0-9]{9}">
                        </label>
                    </div>
                   <div class="form-row">
                        <label>
                            <span>Phone Number</span>
                            <input type="text" name="txt_pnum" id="pnum" placeholder="enter phone number" pattern="[0-9]{3}[0-9]{7}">
                        </label>
                    </div>

					<input type="submit" name="btn_register" value="Register">
					
                </div>
				
                <a href="index.jsp" class="form-log-in-with-existing">Already have an account? <b> Login here </b></a>

            </div>

        </form>

    </div>

</body>

</html>
