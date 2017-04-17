
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Category Add</title>
</head>
<body>
<center>
<jsp:include page="/WEB-INF/view/navbar.jsp"></jsp:include>
	<fm:form action="${pageContext.request.contextPath}/categoryAdd"
		commandName="category" modelAttribute="category" method="post">
		<table>
			
			<h2> Category Addition </h2>
			<c:if test="${not empty category.name}">
	<tr>
	<td>ID</td>
				<fm:input path="id" type="text" name="id" placeholder="Enter id"
					readonly="true" disabled="true" />
				<fm:hidden path="id" />
			</tr>	

			</c:if>
		<tr>
		<td>Name</td> 
		<td>	<fm:input path="name" type="text" name="name"
				placeholder="Enter name" />
				</td>
				</tr>
	<tr>
		       <td>	Desc</td> 
		       <td>	<fm:input path="desc" type="text" name="desc"
				placeholder="Enter description" /></td>
				</tr>

<tr>
		<td>	<c:if test="${empty category.name }">
			<h3>	<input type="submit" value="Add category"></h3>
			</c:if>
			<c:if test="${not empty category.name }">
			<h3>	<input type="submit" value="Edit category"></h3>
			</c:if>
			</td>
</tr>
	</table>
	
	</fm:form>
	</center>
	
	<table border="2">
<center>
		<thead>
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Desc</td>

				<td colspan=2>Action</td>
			</tr>
		</thead>
	
<tbody>
		<c:forEach var="category" items="${categoryList}">
			<tr>

				<td>${category.id}</td>
				<td>${category.name}</td>

				<td>${category.desc}</td>

				<td><a href="<c:url value='/edit_Category/${category.id}'/>">Edit<i class="fa fa-edit" aria-hidden="true"></i></a></td>

				<td><a href="<c:url value='/delete_Category/${category.id}'/>">Delete<i class="fa fa-delete" aria-hidden="true"></i></a></td>

			</tr>
		</c:forEach>
</tbody>
</center>
	</table>

<jsp:include page="/WEB-INF/view/footer.jsp"></jsp:include>
</body>
</html>