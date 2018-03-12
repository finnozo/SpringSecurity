<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Custom Login Form</title>
</head>
<body>
	<h3>My Custom Login Page</h3>
	<form:form method="POST"
		action="${pageContext.request.contextPath }/authenticateTheUser">
		<!-- Check for login error -->
		<c:if test="${param.error != null }">
			<i>Sorry! You entered invalid username/password</i>
		</c:if>
		<p>
			User Name : <input type="text" name="username" />
		</p>
		<p>
			Password : <input type="password" name="password" />
		</p>
		<input type="submit" value="Login" />
	</form:form>

</body>
</html>