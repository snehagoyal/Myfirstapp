<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart Web App </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body background ="resources/images/imag2.jpg">
<h1>Shopping cart</h1>
<hr>
<jsp:include page="navbar.jsp"></jsp:include>
<hr>
${loginMessage}${errorMessage }<br> 
${successMessage} 
<hr>
<c:if test="${empty loginmessage}">
<a href= "login">Login</a><br>
<a href= "AddUser">Adduser</a><br>

<a href="adminHome">AdminHome</a>



</c:if>


<c:if test="${not empty loginmessage}">
<a href= "logout">logout</a><br>
<a href= "cart">cart</a><br></c:if>

<br><br>
<c:if test="${LoginClicked==true or not empty errorMessage}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>

<c:if test="${user==true }">
<jsp:include page="AddUser.jsp"></jsp:include></c:if>
<hr>


<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="/resources/images/img3.jpg" >
      </div>

      <div class="item">
        <img src="/resources/images/img4.jpg" >
      </div>
    
      <div class="item">
        <img src="/resources/images/img5.jpg" >
      </div>

      <div class="item">
        <img src="/resources/images/img6.jpg" >
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>



<jsp:include page="footer.jsp"></jsp:include>>

</body>
</html>