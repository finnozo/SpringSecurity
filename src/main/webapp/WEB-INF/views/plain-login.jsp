<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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