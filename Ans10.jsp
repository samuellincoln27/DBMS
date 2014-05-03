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
<title>Insert title here</title>
</head>
<body>
  <jsp:include page="/header.jsp" />
   <form name = "choice1" method="post" action="FAQ.jsp" >
   <div style="text-align: center;">
    <table width="100%" border="0" cellpadding="6">
   <%! public String temp; %>
      <%! public String temp1; %>
         <%! public String temp2; %>
            <%! public String temp3; %>
               <%! public String temp4; %>
                  <%! public String temp5; %>
  	<% 
      Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","stuti", "infy!123");
   Statement st = con.createStatement();
    ResultSet rs;
    //change this
    rs = st.executeQuery("select verbalscore,quantscore,writing,toeflscore, workex, paperspublished from userdetails ud, overview o where ud.departmentid =  and  ud.schoolid =  and o.departmentid = 10 and o.schoolid = 1 and ud.term = 'Fall' and ud.year ='2013' and ud.unid = o.unid and o.placements >=8 and rownum<=5");  
    System.out.println("Query Executed"+rs);
   while (rs.next()) {
		 temp = rs.getString("verbalscore");
		 temp1 = rs.getString("quantscore");
		 temp2 = rs.getString("toeflscore");
		 temp3 = rs.getString("workex");
		 temp4 = rs.getString("paperspublished");
			%><tr> <td > <%=temp%></td></tr>
			<tr> <td > <%=temp1%></td></tr>
			<tr> <td > <%=temp2%></td></tr>
			<tr> <td > <%=temp3%></td></tr>
			
			<tr> <td > <%=temp4%></td></tr>
			<%
			
       } 
  
   		//session.setAttribute("uName", uName);
        rs.close();
   %>
   </table>
   </div>
  </form>

</body>
</html>