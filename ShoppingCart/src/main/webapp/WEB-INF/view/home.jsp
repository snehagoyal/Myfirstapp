<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart Web App</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/back.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="resources/css/navbar.css" rel="stylesheet" type="text/css">
<link href="resources/css/cover.css" rel="stylesheet" type="text/css">

<script src="resources/js/navbar.js" type="text/javascript"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

  <script src="https://code.jquery.com/jquery.js"></script>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<style>
body {
     background: url(http://p1.pichost.me/i/66/1910819.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  
  height: 100%;
  background-color: #060;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 3px rgba(0,0,0,.5);
 
}


</style>
</head>
<body>
	<h1>Shopping cart</h1>
	<hr>
	<jsp:include page="navbar.jsp" />
	<hr>
	${loginMessage}${errorMessage }
	<br> ${successMessage}
	<hr>
	<security:authorize access="isAnonymous()">
		<a href="login">Login</a>
		<br>
		<a href="AddUser">Adduser</a>
		<br>


	</security:authorize>
	<security:authorize access="isAuthenticated()">
		<security:authorize access="hasRole('ROLE_USER')">
			<a href="cart">cart</a>
			<br>
		</security:authorize>
		<security:authorize access="hasAuthority('ROLE_ADMIN')">
			<li><a href="adminHome">Admin Home</a></li>
		</security:authorize>
		<li><a href="logout">Logout</a></li>
	</security:authorize>
	<br>
	<br>
	<c:if test="${LoginClicked==true or not empty errorMessage}">
		<jsp:include page="Login.jsp"></jsp:include>
	</c:if>

	<c:if test="${user==true }">
		<jsp:include page="AddUser.jsp"></jsp:include></c:if>
	<hr>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>