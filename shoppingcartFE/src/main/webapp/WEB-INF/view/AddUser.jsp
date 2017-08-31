<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert User</title>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>
<fm:form action ="userAdd"  commandName="user" modelAttribute="user" method="post" >
<center>
<table>


		 <tr>
		  <td>  UserName</td>
		<td>	<fm:input path="uname" type="text" name="uname" placeholder="Enter name" /></td>
		</tr><br>
			
			<tr>
			<td> Password</td>
		<td>	<fm:input path="password" type="text" name="password" placeholder="Enter password" /></td>
		</tr>
		<br>
		<tr>		
<td>Contact</td>
<td><fm:input path="contact" type="number" name="contact" placeholder="Enter contact" /></td> 
<br>
<tr>
<td>Email</td>
<td><fm:input path="email" type="email" name="email"  placeholder="Enter email" /><br></td>
</tr>
<br>
 <tr>
 <td>Address</td>
<td><fm:input path="address" type="text" name="address"  placeholder="Enter Address" /><br></td>
</tr><br>
<tr><td>
<input type="submit" value="Submit"></td></tr>

</table>
</center>
</fm:form>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>