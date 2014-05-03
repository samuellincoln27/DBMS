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
<title>Choose a state</title>
</head>
<body>
 <jsp:include page="/header.jsp" />
        <form name = "choice1" method="post" action="Choice2.jsp" >
        	<div style="text-align: center;">
            <table width="100%" border="0" cellpadding="6">
		      <tr>
		      <td><label for="term">Choose Stream :</label></td>
		      <td><select name="streamchoice" id="streamchoice" >
				<option value="null">Select</option>
				<%! public String stream; %>
		<%
	 
      Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","stuti", "infy!123");
   Statement st = con.createStatement();
    ResultSet rs;
    //change this
    rs = st.executeQuery("select distinct(state) from location");
      
    System.out.println("Query Executed"+rs);
   while (rs.next()) {

       stream=rs.getString("state"); %>
       <option value=<%=stream%>><%=stream%></option> 
   <%   } 
   	System.out.println("Unname is "+stream);
   		//session.setAttribute("uName", uName);
        rs.close();
   %>		      </select></td>
		    </tr>
		    		      <tr>
		      <td><label for="term">Choose Course:</label></td>
		      <td><select name="coursechoice" id="coursechoice" >
				<option value="null">Select</option>
				<%! public String course; %>
		<%

   Statement st1 = con.createStatement();
    ResultSet rs1;
    //change this
    rs1 = st1.executeQuery("select distinct(state) from location");
      
    System.out.println("Query Executed"+rs1);
   while (rs1.next()) {

       course=rs1.getString("state"); %>
       <option value=<%=course%>><%=course%></option> 
   <%   } 
   	System.out.println("Unname is "+course);
   		//session.setAttribute("uName", uName);
        rs1.close();
   %>		      </select></td>
		    </tr>
		    		      <tr>
		      <td><label for="term">Choose criterion :</label></td>
		      <td><select name="criterionchoice" id="criterionchoice" >
				<option value="null">Select</option>
				<%! public String criteria; %>
		<%
	 

   Statement st2 = con.createStatement();
    ResultSet rs2;
    //change this
    rs2 = st.executeQuery("select distinct(state) from location");
      
    System.out.println("Query Executed"+rs2);
   while (rs2.next()) {

       criteria=rs2.getString("state"); %>
       <option value=<%=criteria%>><%=criteria%></option> 
   <%   } 
   	System.out.println("Unname is "+criteria);
   		//session.setAttribute("uName", uName);
        rs2.close();
   %>		      </select></td>
		    </tr>
		    <tr>
		    <td>
		     <div style="text-align: right;"><input type="submit" name="Proceed" class="button" value="Proceed" /></div></td>
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