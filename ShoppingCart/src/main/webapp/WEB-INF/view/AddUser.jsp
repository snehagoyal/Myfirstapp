<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="resources/css/cover.css" rel="stylesheet" type="text/css">

<title>Insert User</title>
</head>
<body>
<fm:form action ="userAdd"  commandName="user" >
Id:<br>
			<fm:input path="id" type="text" name="id" placeholder="Enter Id" />
			<br>
		
			UserName<br>
			<fm:input path="uname" type="text" name="uname" placeholder="Enter name" />
			<br>
			 Password<br>
			<fm:input path="password" type="text" name="password" placeholder="Enter password" />
			<br>	
Contact:<fm:input path="contact" type="text" name="contact"/><br>
Email:<fm:input path="email" type="text" name="email"/><br>
Address:<input path="address" type="text" name="address"/>
<input type="submit" value="Submit">


</fm:form>

</body>
</html>