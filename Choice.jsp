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
<title>Choose an Action</title>
</head>
  <jsp:include page="/header.jsp" />
<body>
        <form name = "choice1" method="post" action="UniversityDetails.jsp" >
        	<div style="text-align: center;">
            <table width="100%" border="0" cellpadding="6">
		      <tr>
		      <td><label for="term">Enter University Name :</label></td>
		      <td><select name="unvchoice" id="unvchoice" >
				<option value="null">Select</option>
				<%! public String uName; %>
		<%
	 
      Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","stuti", "infy!123");
   Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select Name from University");
      
    System.out.println("Query Executed"+rs);
   while (rs.next()) {
       System.out.println("Inside");
       uName=rs.getString("Name");
       System.out.println("Name "+ uName); %>
       <option value=<%=uName%>><%=uName%></option> 
   <%   } 
   	System.out.println("Unname is "+uName);
   		//session.setAttribute("uName", uName);
        rs.close();
   %>		      </select></td>
		    </tr>
		    <tr>
		    <td> <div style="text-align: right;"><input type="submit" name="University Details" class="button" value="University Details" /></div></td>
		    </tr>
		    </table>
		    </div>
        </form>
        <form name = "Return" method="post" action="ActionChoice.jsp" >
      <td colspan="2">
   	 <div align="left">
    	<input type="submit" name="Return" class="button" value="Return"  />
    	</div>
   	 </td>
  </form>
  <jsp:include page="/footer.jsp" />
</body>
</html>