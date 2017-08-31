<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add supplier</title>
</head>
<body>
	
<jsp:include page="/WEB-INF/view/navbar.jsp"></jsp:include>

	<fm:form action="${pageContext.request.contextPath}/supplieradd" commandName="aaddsupplier" modelAttribute="aaddsupplier" method="post">
		<center>
		<table>
		<c:if test="${not empty aaddsupplier.name }">
<tr>
<td>	Id</td>
			<fm:input path="id" type="text" name="id" placeholder="id"  readonly="true"/>
			<br>
			</tr>
		</c:if>
				
<tr>
<td>Name</td>

	<td>	<fm:input path="name" type="text" name="name" placeholder="Enter placeholder" /></td>
	</tr>
		<br>
		<tr>
<td>Address</td>

	<td>	<fm:input path="address" type="text" name="address" placeholder="Enter placeholder" /></td>
			<br>
			</tr>
			<tr>
	<td>	<c:if test="${empty aaddsupplier.name }">
		<h3>	<input type="submit" value="Add supplier"></h3>
		</c:if>

		<c:if test="${ not empty aaddsupplier.name }">
		<h3>	<input type="submit" value="Edit supplier"></h3>
		</c:if></td>
		<tr>
		</table>
		</center>
	</fm:form>

	<table border="2">
	<center>
		<thead>
			<tr>
				<td>id</td>
				<td>name</td>
				<td>address</td>
				<td colspan=2>Action</td>
			</tr>
		</thead>

		<c:forEach var="supplier" items="${supplierList}">
			<tr>
				<td>${supplier.id}</td>
				<td>${supplier.name}</td>
				<td>${supplier.address}</td>
				<td><a href="edit_Supplier/${supplier.id}">Edit<i class="fa fa-edit" aria-hidden="true"></i></a></td>
				<td><a href="<c:url value='/delete_Supplier/${supplier.id}'/>">Delete<i class="fa fa-delete" aria-hidden="true"></i></a></td>
			</tr>
		</c:forEach>
		</center>
	</table>
	<jsp:include page="/WEB-INF/view/footer.jsp"></jsp:include>
</body>
</html>