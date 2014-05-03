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
  	<% 
      Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","stuti", "infy!123");
   Statement st = con.createStatement();
    ResultSet rs;
    //change this
    rs = st.executeQuery("select *(select u.name,dept.rank from departmentexists dept, university u where departmentid ='Chemical Engineering'  AND schoolid ='Engineering'  and dept.unid = u.unid order by dept.rank)where rownum<=10");  
    System.out.println("Query Executed"+rs);
   while (rs.next()) {
		 temp = rs.getString("Name");
			%><tr> <td > <%=temp%></td></tr>
			<%
			
       } 
  
   		//session.setAttribute("uName", uName);
        rs.close();
   %>
   </table>
   </div>
  </form>
<jsp:include page="/footer.jsp" />
</body>
</html>