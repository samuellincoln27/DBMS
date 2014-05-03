<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choose an Action</title>
</head>
<body>
  <jsp:include page="/header.jsp" />
<form action="LoginForm.jsp" method="post" id="action-form" >
	<ul>
		<li>
			<a href="GradSchoolFinder.jsp">
			Find your Schools</a>
		</li>
		<li>
			<a href="UniversityComparerChoices.jsp">
			Compare Universities</a>
		</li>
			<li>
		<a href="Choice1.jsp">
				Details of a University</a>
		</li>
		</ul>
		<div style="text-align: center;">
			<input type="submit" name="Back" class="button" value="Back" />
		</div>
	<jsp:include page="/footer.jsp" />
</body>
</html>