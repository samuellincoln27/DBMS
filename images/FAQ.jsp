<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choose a University</title>
</head>
<body>
 <jsp:include page="/header.jsp" />
        <form name = "choice1" method="post" action="UniversityDetails.jsp" >
        	<div style="text-align: left;">
            <table width="100%" border="0" cellpadding="6">
		      <tr>
		      <td>Find the top 10 universities on the basis of return of investment</td>
		      <td><a name="1" href="Ans1.jsp">Ans</a> </td>
		    </tr>
		    <tr>
		      <td>Find top 5 universities located in different cities having tuition aid >= 30% and famous reputation </td>
		   	<td><a name="2" href="Ans2.jsp">Ans</a> </td>
		    </tr>
		    <tr>
		      <td>Find the universities with minimum fees in every state having moderate weather</td>
		    	<td><a name="3" href="Ans3.jsp">Ans</a> </td>
		    </tr>
		    <tr>
		      <td>List of universities in top 100 ranking where fees is less than 50,000 USD for full   course?</td>
		   		<td><a name="4" href="Ans4.jsp">Ans</a> </td>
		    </tr>
		    <tr>
		      <td>Number of international students studying in a particular University?</td>
		      <td><a name="5" href="Ans5.jsp">Ans</a> </td>
		    </tr>
		    <tr>
		      <td>List of universities in top 100 ranking where fees is less than 50,000 USD?</td>
		      <td><a name="6" href="Ans6.jsp">Ans</a> </td>
		    </tr>
		    <tr>
		      <td>Average GRE score of accepted applicants for a particular university?</td>
		      <td><a name="7" href="Ans7.jsp">Ans</a> </td>
		    </tr>
		      <tr>
		      <td>   Find top 10 universities offering a particular course. (user will choose course(department and school)) ranking will be based on dept rank?</td>
		   		<td><a name="8" href="Ans8.jsp">Ans</a> </td>
		    </tr>
		    <tr>
		      <td>Select universities whose rank is in top 50 and where dept. X and dept. Y exists.</td>
		    	<td><a name="9" href="Ans9.jsp">Ans</a> </td>
		    </tr>
		    <tr>
		      <td>Display profile of any 5 students who were admitted to a university with high placement in a particular year in a particular term.</td>
		  		<td><a name="10" href="Ans10.jsp">Ans</a> </td>
		    </tr>
		    </table>
		    </div>
        </form>
        <form name = "Return" method="post" action="Choice1.jsp" >
      <td colspan="2">
   	 <div align="left">
    	<input type="submit" name="Return" class="button" value="Return"  />
    	</div>
   	 </td>
  </form>
  <jsp:include page="/footer.jsp" />
</body>
</html>