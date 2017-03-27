<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Category Add</title>
</head>
<body>
	<fm:form action="categoryAdd" commandName="category"
		modelAttribute="category" method="post">
		<fieldset>
			<legend>Category Addition:</legend>
			Name<br>
			<fm:input path="name" type="text" name="name"
				placeholder="Enter name" />
			<br> Desc<br>
			<fm:input path="desc" type="text" name="desc"
				placeholder="Enter description" />
			<br> <input type="submit" name="submit" value="submit">
			<input type="reset" name="reset" value="reset">
		</fieldset>
	</fm:form>
	<table border="2">

		<thead>
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Desc</td>
				<td colspan=2>Action</td>
			</tr>
		</thead>

		<c:forEach var="category" items="${categoryList}">
			<tr>

				<td>${category.id}</td>
				<td>${category.name}</td>

				<td>${category.desc}</td>

				<td><a href="edit_Category/${category.id}">Edit</a></td>

				<td><a href="<c:url value='/delete_Category/${category.id}' />">Delete</a></td>

			</tr>
		</c:forEach>

	</table>


</body>
</html>