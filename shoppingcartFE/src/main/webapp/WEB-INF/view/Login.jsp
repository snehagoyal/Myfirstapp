<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart Login Page</title>
</head>
<body>
<h3><i class="fa fa-shopping-bag"/>Shopping cart<i class="fa fa-shopping-bag"/></h3>

<jsp:include page="navbar.jsp"></jsp:include>
<!--  userid= sneha,password=s@123  -->
<form action="validate" method="post">
Username:<input type= "text" name="uname" placeholder ="Enter username">
<br>
Password:<input type="password" name="password" placeholder ="Enter password">
<input type="submit" value ="Login">
</form>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>