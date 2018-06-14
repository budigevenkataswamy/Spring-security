<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>luv2code company home page</title>
</head>

<body>
<h2>luv2code company home page</h2>
<hr>
<p>
welcome to the luv2code company home page!
</p>

<form:form action="${pageContext.request.contextPath}/logout" method="POST">

<input type="submit" value="logout"/>

</form:form>
</body>


</html>