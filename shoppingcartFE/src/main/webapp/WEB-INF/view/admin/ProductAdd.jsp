<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Add</title>
</head>
<body>
	
<jsp:include page="/WEB-INF/view/navbar.jsp"></jsp:include>

	<fm:form action="${pageContext.request.contextPath}/productAdd" commandName="product" modelAttribute="product" method="post" enctype="multipart/form-data">
		<center>
		<table>
				<h2>Product Addition</h2>
			<c:if test="${not empty product.name }">
			<tr>
		<td>	Id</td>
			<fm:input path="id" type="text" name="id" placeholder="Enter id" readonly="true" />
			</tr>
			</c:if>
		<tr>
		
	<td>		Name</td>
		<td>	<fm:input path="name" type="text" name="name" placeholder="Enter name" /></td>
			<br>
			</tr>
			<tr>
			
			<td> Description</td>
		<td>	<fm:input path="desc" type="text" name="desc" placeholder="Enter Description" /></td>
			<br> </tr>
			<tr>
	<td>		Price</td>
		<td>	<fm:input path="price" type="text" name="price" placeholder="Enter Price" /></td>
			</tr>
		<tr>
		<td>	Image</td>
		<td>	<input type="file" name="img"><br> </td>
			
			</tr><tr><td>
				Category of the Product:</td><td>
				<fm:select path="categoryid">
						<c:forEach var="category" items="${categoryList}">
							<fm:option value="${category.id}">${category.id}</fm:option>
						</c:forEach>
					</fm:select>
			</td></tr>
		
		<br>
		<tr><td>
				<c:if test="${empty product.name }">
				<h3>	<input type="submit" value="Add product"></h3>
				</c:if>
				<c:if test="${not empty product.name }">
				<h3>	<input type="submit" value="Edit product"></h3>
				</c:if>
			</td></tr>	
				</table>
				</center>
	</fm:form>
	<table border="2">
<center>
		<thead>
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Description</td>
				<td>Price</td>
				<td>CategoryName</td>
				<td colspan=2>Action</td>
			</tr>
		</thead>

		<c:forEach var="product" items="${productList}">
			<tr>

				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.desc}</td>
				<td>${product.price}</td>
                <td>${product.categoryid}</td>
                <td><a href="<c:url value='/edit_product/${product.id}' />">Edit<i class="fa fa-edit" aria-hidden="true"></i></a></td>
				

				<td><a href="<c:url value='/delete_Product/${product.id}' />">Delete<i class="fa fa-eraser" aria-hidden="true"></i></a></td>

			</tr>
		</c:forEach>
</center>
	</table>

<jsp:include page="/WEB-INF/view/footer.jsp"></jsp:include>
</body>
</html>