<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
	<title>itvilla Home Page</title>
</head>

<body>
	<h2>itilla Home Page</h2>
	<security:authorize access="isAuthenticated()">
	Logged in USER  : <security:authentication property="principal.username" /> </br>
	HAS ROLE : <security:authentication property="principal.authorities" />  </br>
	</security:authorize>
	<hr>
	
	Welcome to our home page. We hope you are having good learning !!
	<h4>This page should be accessable to all ROLES</h4>


<a href="${pageContext.request.contextPath}/employee" class="text-primary" target="_blank" >Employee Page Link</a>
<a href="${pageContext.request.contextPath}/manager" class="text-primary" target="_blank" >Manager Page Link</a>
<a href="${pageContext.request.contextPath}/admin" class="text-primary" target="_blank" >Admin Page Link</a>


	
	
	
</body>

</html>