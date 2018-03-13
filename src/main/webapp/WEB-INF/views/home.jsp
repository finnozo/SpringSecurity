<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>isolutions4u Company Home Page</title>
</head>
<body>
	<h1>isolutions4u Company Home Page</h1>
	<hr>
	<p>Welcome to the isolutions4u company Home Page</p>
	<hr>
	<!-- display user name and role -->
	<p>
		User :
		<security:authentication property="principal.username" />
		<br> <br> Roles :
		<security:authentication property="principal.authorities" />
	</p>



	<security:authorize access="hasRole('MANAGER')">
		<!-- Add a link to point to /leaders .. this is for the manager -->

		<p>
			<a href="${pageContext.request.contextPath}/leaders">LeaderShip
				Meeting</a> (Only for Manager peeps)
		</p>

		<hr>

	</security:authorize>


	<security:authorize access="hasRole('ADMIN')">
		<!-- Add a link to point to /systems .. this is for the manager -->
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems
				Meeting</a> (Only for Admin peeps)
		</p>

		<hr>
	</security:authorize>
	<form:form method="post"
		action="${pageContext.request.contextPath}/logout">
		<input type="submit" value="Logout" />

	</form:form>

</body>
</html>