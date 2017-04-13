<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert User</title>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>
<fm:form action ="userAdd"  commandName="user" modelAttribute="user" method="post" >
<center>
		    UserName
			<fm:input path="uname" type="text" name="uname" placeholder="Enter name" />
			<br>
			 Password
			<fm:input path="password" type="text" name="password" placeholder="Enter password" />
			<br>	
Contact:
<fm:input path="contact" type="text" name="contact" placeholder="Enter contact" /> <br>
Email:
<fm:input path="email" type="text" name="email"  placeholder="Enter email" /><br>
Address:
<input path="address" type="text" name="address"  placeholder ="Enter Address" />

<input type="submit" value="Submit">

</center>
</fm:form>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>