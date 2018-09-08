<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<html>

<head>
	<title>itvilla Employee Home Page</title>
</head>

<body>
	<h2>EMPLOYEES HOME PAGE HERE</h2>
	<hr>
	
This page has few things that only employess can do. 
THis should not be visible to managers and admins. 

	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
	
	
</body>

</html>