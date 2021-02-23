<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>Login</h2>
		<p>${message }</p>
		<form action="/login" method="post">
			<label>Username</label><input type="text" name="username" placeholder="username" value="test"/><br>
			<label>Password</label><input type="password" name="password" placeholder="password" value="test"/><br>
			<button type="submit">Login</button>
			<a href="/register">Create An Account</a>
		</form>
	</div>
</body>
</html>