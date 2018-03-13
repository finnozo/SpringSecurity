<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>isolutions4u Company Home Page</title>
</head>
<body>
	<h1>isolutions4u Company Home Page</h1>
	<hr>
	Welcome to the isolutions4u company Home Page
	<hr>
	<form:form method="post"
		action="${pageContext.request.contextPath}/logout">
		<input type="submit" value="Logout" />

	</form:form>

</body>
</html>