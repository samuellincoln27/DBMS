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
        <form name = "prospectiveuniv" method="post" action="ActionChoice.jsp" >
        	<div style="text-align: center;">
            <table width="100%" border="0" cellpadding="6">
            <tr>
		      <ul>
				<%! public String uName; %>
		<%
	 
      Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","stuti", "infy!123");
   Statement st = con.createStatement();
    ResultSet rs;
    int count =0;
    //change this
    rs = st.executeQuery("select distinct(state) from location");
      
    System.out.println("Query Executed"+rs);
   while (rs.next()) {
	count++;
       uName=rs.getString("state"); 
       if(count <4){
       %>
      <li><div style="text-align: center;background-color:#FF0000"><%=uName%></div></li> 
   <%   } else if(4<= count && count <8){
       %>
      <li><div style="text-align: center;background-color:#FBB117"><%=uName%></div></li> 
   <%   }else{ %>
   <li><div style="text-align: center;background-color:#98FF98"><%=uName%></div></li> 
<%  }}
   	System.out.println("Unname is "+uName);
   		//session.setAttribute("uName", uName);
        rs.close();
   %>	
		    </ul>
		    </tr>
		    <tr>
		    <td>
		     <div style="text-align: right;"><input type="submit" name="Proceed" class="button" value="Proceed" /></div></td>
		    </tr>
		    </table>
		    </div>
        </form>
        <form name = "Return" method="post" action="GradSchoolFinder.jsp" >
      <td colspan="2">
   	 <div align="left">
    	<input type="submit" name="Return" class="button" value="Return"  />
    	</div>
   	 </td>
  </form>
  <jsp:include page="/footer.jsp" />
</body>
</html>