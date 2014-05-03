<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
  <head>
  <title>Forgot Password</title>
  </head>
  <body>
    <jsp:include page="/header.jsp" />
  <form action="LoginForm.jsp" method="post" id="forgot-pwd-form" >
  Please enter the email address for your account. A verification code will be sent to you. Once you have received the verification code, you will be able to choose a new password for your account
		<fieldset class="userdata">
		<p id="form-pwd-form-emailid">
		<label for="modlgn-emailid">Email Address*</label>
		<input id="modlgn-emailid" type="text" name="emailid" class="inputbox"  size="18" />
	</p>
		<p id="form-pwd-form-submit">
        <input type="submit" name="Submit" class="button" value="Submit" />
    </p>
	</fieldset>
	</form>
	<jsp:include page="/footer.jsp" />
  </body>
</html>
