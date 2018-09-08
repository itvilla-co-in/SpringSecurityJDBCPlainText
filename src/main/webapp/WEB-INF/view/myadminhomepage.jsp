<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<html>

<head>
	<title>itvilla Employee Home Page</title>
</head>

<body>
	<h2>ADMIN HOME PAGE HERE</h2>
	<hr>
	
This page has few things that only ADMINS can do. 
THis should not be visible to Employess and Managers. 

	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
	
	
</body>

</html>