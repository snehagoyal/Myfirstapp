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
<fm:form action ="adduser"  commandname ="user">
Username<input type="text" name="uname">
Password:<input type="password" name="Password"><br>
Contact:<input type="text" name="Contact"><br>
Email:<input type="email" name="email"><br>
Address:<input type="text"name="address"><br>
<input type="submit" value="login">
<input type="reset" value="reset">

</fm:form>
</body>
</html>