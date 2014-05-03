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
<title>Choose States for a university</title>
</head>
<body>
 <jsp:include page="/header.jsp" />
        <form name = "univcomparer" method="post" action="UniversityComparer.jsp" >
        	<div style="text-align: center;">
            <table width="100%" border="0" cellpadding="6">
		      <tr>
		      <td><label for="term">Choose State for First University :</label></td>
		      <td><select name="unvchoice1" id="unvchoice1" >
				<option value="null">Select</option>
				<%! public String uName1; %>
		<%
	 
      Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","stuti", "infy!123");
   Statement st = con.createStatement();
    ResultSet rs;
    //change this
    rs = st.executeQuery("select distinct(state) from location");
      
    System.out.println("Query Executed"+rs);
   while (rs.next()) {

       uName1=rs.getString("state"); %>
       <option value=<%=uName1%>><%=uName1%></option> 
   <%   } 
   	System.out.println("Unname is "+uName1);
   		//session.setAttribute("uName", uName);
        rs.close();
   %>		      </select></td>
		    </tr>
		    <tr>
		    <td><label for="term">Choose State for Second University :</label></td>
		      <td><select name="unvchoice2" id="unvchoice2" >
				<option value="null">Select</option>
				<%! public String uName2; %>
		<%
	
		   rs = st.executeQuery("select distinct(state) from location");
    System.out.println("Query Executed"+rs);
   while (rs.next()) {

       uName2=rs.getString("state"); %>
       <option value=<%=uName2%>><%=uName2%></option> 
   <%   } 
   	System.out.println("Unname is "+uName2);
   		//session.setAttribute("uName", uName);
        rs.close();
   %>		      </select></td>
		    </tr>
		    <tr>
		    <td>
		     <div style="text-align: right;"><input type="submit" name="Proceed" class="button" value="Proceed" /></div>
		     </td>
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