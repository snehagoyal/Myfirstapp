<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add supplier</title>
</head>
<body>
	<fm:form action="${pageContext.request.contextPath}/supplieradd"
		commandName="aaddsupplier" modelAttribute="aaddsupplier" method="post">
		<c:if test="${not empty aaddsupplier.name }">
	Id:<br>
			<fm:input path="id" type="text" name="id" placeholder="id"  readonly="true"/>
			<br>
		</c:if>
				
				
Name:
<br>
		<fm:input path="name" type="text" name="name" placeholder="Enter placeholder" />
		<br>
Address:
<br>
		<fm:input path="address" type="text" name="address"
			placeholder="Enter placeholder" />
		<c:if test="${empty aaddsupplier.name }">
			<input type="submit" value="Add supplier">
		</c:if>

		<c:if test="${ not empty aaddsupplier.name }">
			<input type="submit" value="Edit supplier">
		</c:if>
	</fm:form>

	<table border="2">
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
				<td><a href="edit_Supplier/${supplier.id}">Edit</a></td>
				<td><a href="<c:url value='/delete_Supplier/${supplier.id}'/>">delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>