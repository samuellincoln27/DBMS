<%@ page import ="java.sql.*" %>
<%
   String username = request.getParameter("username");    
   String password= request.getParameter("password");
   String emailId=request.getParameter("emailid");
   System.out.println("username "+username+" password "+password+" emailid   "+emailId);
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","stuti", "infy!123");
   Statement st = con.createStatement();
    ResultSet rs;
    
    rs = st.executeQuery("select * from UserDetails where username='"+username+"'");
	 if(rs.next()){
		String uId=rs.getString("username");
       System.out.println("Username "+ uId);
       out.println("Username already exists <a href='Registration.jsp'>try again</a>");
	 }
	 else{
        rs = st.executeQuery("insert into UserDetails(username,password,EmailId) values('" + username + "','" + password + "','"+emailId+ "')");
   	    System.out.println("Query Executed"+rs);
   		if (rs.next()) {
       	System.out.println("Inside");
        response.sendRedirect("LoginForm.jsp");
        }
   		out.println("Some error <a href='Registration.jsp'>try again</a>");
 	}      rs.close();
%>