<%@ page import ="java.sql.*" %>
<%
   String username = request.getParameter("username");    
   String password= request.getParameter("password");
   System.out.println("username "+username+" password "+password);
   //String username="stuti";
   //String password="abc";
   boolean flag = false;
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","stuti", "infy!123");
   Statement st = con.createStatement();
    ResultSet rs;
    //rs = st.executeQuery("insert into UserDetails(username,password) values('" + username + "','" + password + "')");
    rs = st.executeQuery("select * from UserDetails");
    System.out.println("Query Executed"+rs);
   while (rs.next()) {
       //session.setAttribute("userid", username);
       //out.println("welcome " + username);
       //out.println("<a href='logout.jsp'>Log out</a>");
       //if(username.equals("sam")&&password.equals("sam@123")){
       // response.sendRedirect("GradSchoolFinder.jsp");
       System.out.println("Inside");
       String uId=rs.getString("username");
       System.out.println("Username "+ uId);
       String pwd=rs.getString("password");
       System.out.println("password "+ pwd);
       if(username.equals(uId)&&password.equals(pwd))
         flag = true;
 	  } 
   if(flag){
 	  response.sendRedirect("ActionChoice.jsp");
   }
   else {
        out.println("Invalid password <a href='LoginForm.jsp'>try again</a>");
    }
       rs.close();
%>