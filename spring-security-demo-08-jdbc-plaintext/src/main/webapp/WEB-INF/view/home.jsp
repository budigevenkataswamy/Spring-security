<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>luv2code company home page</title>
</head>

<body>
	<h2>luv2code company home page</h2>
	<hr>
	<!-- display user name and role -->
	<p>
		USER:
		<security:authentication property="principal.username" />
		<br>
		<br> Role(s):
		<security:authentication property="principal.authorities" />
	</p>
	<security:authorize access="hasRole('MANAGER')">
		<!--add a link to point to/leaders...this is for the managers  -->
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership
				Meeting</a> (only for manger peeps)
		</p>
	</security:authorize>

	<security:authorize access="hasRole('ADMIN')">
		<!--add a link to point to/systems...this is for the admins  -->
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems
				Meeting</a> (only for admin peeps)
		</p>
	</security:authorize>

	<hr>
	<p>welcome to the luv2code company home page!</p>

	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input type="submit" value="logout" />

	</form:form>
</body>


</html>