<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <script>
			function validateForm()
			{
			    if(document.frm.name.value=="")
			    {
			      alert(" Name should not be left blank");
			      document.frm.name.focus();
			      return false;
			    }
			    else if(document.frm.username.value=="")
			    {
			      alert("Username should not be left blank");
			      document.frm.username.focus();
			      return false;
			    }
			    else if(document.frm.password.value=="")
			    {
			      alert("Password should not be left blank");
			      document.frm.password.focus();
			      return false;
			    }
			    else if(document.frm.emailid.value=="")
			    {
			      alert("Emailid should not be left blank");
			      document.frm.emailid.focus();
			      return false;
			    }
			    else if(document.frm.password.value!=document.frm.confirmpassword.value)
			    {
			      alert("Passwords dont match");
			      return false;
			    }
			    else if(document.frm.emailid.value!=document.frm.confirmemailid.value)
			    {
			      alert("Email ids dont match");
			      return false;
			    }
			    
			}
</script>
    </head>
      <jsp:include page="/header.jsp" />
    <body>
        <form name = "frm" method="post" action="UserRegistrationValidation.jsp" onSubmit="return validateForm()">
        	 <fieldset>
        	 <div style="text-align: left;">
		  <legend>User Registration</legend>
		   <p>
		 <label> Name* :   </label><input type="text" name="name" class="inputbox"  size="18" ><br>
		  </p>
		   <p>
	      </label>  Username*  : </label><input type="text" name="username"><br>
		  </p>
		   <p>
		 </label> Password*: </label><input type="password" name="password"><br>
		  </p>
		   <p>
		  </label>Confirm Password*:</label> <input type="password" name="confirmpassword"><br> 
		  </p>  
		   <p>
		 </label> Email id* : </label> <input type="text" name="emailid"><br>
		  </p>
		   <p>
		</label>  Confirm Email id*:</label> <input type="text" name="confirmemailid">
		  </p>
		  <p>
		   <input type="submit" name="Submit" class="button" value="Submit" />
		   </p>
		   </div>
		 </fieldset>
        </form>
        <jsp:include page="/footer.jsp" />
    </body>
</html>