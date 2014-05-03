<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
  <title>GatorUniverstityFinder</title>
  </head>
  <body background="http://localhost:8080/UnivII/images/sky.jpg">
  <jsp:include page="/header.jsp" />
  <form action="CheckLogin.jsp" method="post" id="login-form" >
		<fieldset class="userdata">
	<p id="form-login-username">
		<label for="modlgn-username">User Name</label>
		<input id="modlgn-username" type="text" name="username" class="inputbox"  size="18" />
	</p>
	<p id="form-login-password">
		<label for="modlgn-passwd">Password</label>
		<input id="modlgn-passwd" type="password" name="password" class="inputbox" size="18"  />
	</p>
		<p id="form-login-remember">
		<label for="modlgn-remember">Remember Me</label>
		<input id="modlgn-remember" type="checkbox" name="remember" class="inputbox" value="yes"/>
	</p>
		<p id="form-login-submit">
        <input type="submit" name="Submit" class="button" value="Log in" />
    </p>
	</fieldset>
	<ul>
		<li>
			<a href="ForgotPassword.jsp">
			Forgot your password?</a>
		</li>
		<li>
			<a href="ForgotPassword.jsp">
			Forgot your username?</a>
		</li>
				<li>
			<a href="Registration.jsp">
				Create an account</a>
		</li>
			</ul>
	</form>
  </body>
</html>
