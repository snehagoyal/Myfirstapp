
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


<script src="resources/js/navbar.js" type="text/javascript"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

  <script src="https://code.jquery.com/jquery.js"></script>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">


</head>
<body>
	
	
	<jsp:include page="navbar.jsp" ></jsp:include>
	
	
	<jsp:include page="carousel.jsp"></jsp:include>
	
	${loginMessage}${errorMessage }${user}
	<br> ${successMessage}
	<hr>
		<c:if test="${LoginClicked==true or not empty errorMessage}">
		<jsp:include page="Login.jsp"></jsp:include>
	</c:if>

	<c:if test="${user==true }">
		</c:if>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>