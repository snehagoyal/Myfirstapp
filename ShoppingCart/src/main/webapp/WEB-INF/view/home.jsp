<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart Web App </title>
</head>
<body >
<h1>Shopping cart</h1>
<hr>
<jsp:include page="navbar.jsp"></jsp:include>
<hr>
${loginMessage}${errorMessage }<br> 
${successMessage} 
<hr>
<c:if test="${empty loginmessage}">
<a href= "login">login</a><br>
<a href= "register">register</a><br></c:if>

<c:if test="${not empty loginmessage}">
<a href= "logout">logout</a><br>
<a href= "cart">cart</a><br></c:if>

<br><br>
<c:if test="${LoginClicked==true or not empty errorMessage}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>
<c:if test="${Register==true }">
<jsp:include page="AddUser.jsp"></jsp:include>
</c:if>
</body>
</html>