 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Supplier Add</title>
</head>
<body>
	<fm:form action="supplierAdd" commandName="supplieradded" method="post">
		 <fieldset>
			<legend>Supplier Addition:</legend>
			
			Id: <fm:input path="id" type="text" name="id" placeholder="id"/>
			Name<br>
			<fm:input path="name" type="text" name="name" placeholder="Enter name" />
			<br> 
			Address<br>
			<fm:input path="address" type="text" name="address" placeholder="Enter Address" />
			<br> <input type="submit" value="submit">
			
		</fieldset> 
	
	</fm:form>
	<table border="2">

		<thead>
			<tr>
				<td>ID</td>  	
				<td>Name</td>
				<td>Address</td>	
					
				 <td colspan=2>Action</td>
		</tr>
		</thead>

		<c:forEach var="supplier" items="${supplierList}">
			<tr>

				<td>${supplier.id}</td>
				<td>${supplier.name}</td>			
				<td>${supplier.address}</td>
				
		
				
				<td><a href="<c:url value='edit_Supplier/${supplier.id}'/>">Edit</a></td>
					
				<td><a href="<c:url value='/delete_Supplier/${supplier.id}'/>">Delete</a></td>

			</tr>
		</c:forEach>

	</table>


</body>
</html>