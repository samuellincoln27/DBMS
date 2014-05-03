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
        	<div style="text-align: center;">
            <table width="100%" border="0" cellpadding="6">
		      <tr>
		      <td><label for="termlabel">Term :</label></td>
		      <td><select name="term" id="term" >		
       				<option value="Fall">Fall</option> 
     			   <option value="Spring">Spring</option> 
		      </select></td>
		    </tr>
		    <tr>
		      <td><label for="fieldlabel">School :</label></td>
		      <td><input id="field" type="text" name="field" class="inputbox"  size="18" /></td>
		    </tr>
		    <tr>
		      <td><label for="verballabel">Verbal Score :</label></td>
		      <td><input id="verbal" type="text" name="verbal" class="inputbox"  size="18" /></td>
		    </tr>
		    <tr>
		      <td><label for="quantlabel">Quant Score :</label></td>
		      <td><input id="quant" type="text" name="quant" class="inputbox"  size="18" /></td>
		    </tr>
		    <tr>
		      <td><label for="toefllabel">TOEFL Score :</label></td>
		      <td><input id="toefl" type="text" name="toefl" class="inputbox"  size="18" /></td>
		    </tr>
		    <tr>
		      <td><label for="underlabel">Undergrad Score :</label></td>
		      <td><input id="under" type="text" name="under" class="inputbox"  size="18" /></td>
		    </tr>
		    <tr>
		      <td><label for="worklabel">Work Experience :</label></td>
		      <td><input id="work" type="text" name="work" class="inputbox"  size="18" /></td>
		    </tr>
		    <tr>
		      <td><label for="soplabel">SOP rating :</label></td>
		      <td><select name="sop" id="sop" >		
       				<option value="1">1</option> 
     			   <option value="2">2</option> 
     			   <option value="3">3</option> 
     			   <option value="4">4</option> 
     			   <option value="5">5</option> 
     			   <option value="6">6</option> 
     			  <option value="7">7</option> 
     			  <option value="8">8</option> 
     			  <option value="9">9</option> 
     			  <option value="10">10</option> 
		      </select></td>
		    </tr>
		    <tr>
		      <td><label for="lorlabel">LOR rating :</label></td>
		      <td><select name="lor" id="lor" >		
       				<option value="1">1</option> 
     			   <option value="2">2</option> 
     			   <option value="3">3</option> 
     			   <option value="4">4</option> 
     			   <option value="5">5</option> 
     			   <option value="6">6</option> 
     			  <option value="7">7</option> 
     			  <option value="8">8</option> 
     			  <option value="9">9</option> 
     			  <option value="10">10</option> 
		      </select></td>
		    </tr>
		    <tr>
		      <td><label for="extralabel">Extra Curricular :</label></td>
		      <td><input id="extra" type="text" name="extra" class="inputbox"  size="18" /></td>
		    </tr>
		     <tr>
		      <td><label for="paperslabel">Papers published :</label></td>
		      <td><input id="papers" type="text" name="papers" class="inputbox"  size="18" /></td>
		    </tr>
		    <tr>
		    <td><div style="text-align: right;"><input type="submit" name="University Details" class="button" value="University Details" /></div></td>
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