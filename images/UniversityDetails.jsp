<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%    String unvchoice = request.getParameter("unvchoice"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>University Details</title>
</head>
 
<body>
 <jsp:include page="/header.jsp" />
        <form name = "unvdetails" method="post" action="Choice.jsp" >
        	<div style="text-align: center;">
            <table width="100%" border="0" cellpadding="6">
		      <tr>
		      <%
		      String uniName = request.getParameter("unvchoice").toString();    
		      System.out.println("University Name "+uniName);
		      Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","stuti", "infy!123");
   Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from University where Name='"+uniName+"'");
      
    System.out.println("Query Executed"+rs);
   while (rs.next()) {
       System.out.println("Inside");
       
   }
   rs.close();
       %>
		      
		      <td><label for="term">University Name :</label></td>
		      <td><label for="term">Univ A</label></td>
		    </tr>
		    		      <tr>
		      <td><label for="term">Rank :</label></td>
		      <td><label for="term">3</label></td>
		    </tr>
		    		      <tr>
		      <td><label for="term">Preface :</label></td>
		      <td><label for="term">blah blah</label></td>
		    </tr>
		    		      <tr>
		      <td><label for="term">Website :</label></td>
		      <td><label for="term">www.thebestschool.com</label></td>
		    </tr>
		    		      <tr>
		      <td><label for="term">Fee :</label></td>
		      <td><label for="term">$ 40,000</label></td>
		    </tr>
		     <tr>
		      <td><label for="term">Total Enrollment :</label></td>
		      <td><label for="term">44000</label></td>
		    </tr>
		    <tr>
		    <td> <div style="text-align: right;"><input type="submit" name="Return" class="button" value="Return" /></div></td>
		    </tr>
		    </table>
		    </div>
        </form>
        <jsp:include page="/footer.jsp" />
</body>
</html>