<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Register</title>
</head>
<body>
	<div class="container">
		<h2>Create An Account</h2>
		<p>${message }</p>
		<form action="/register" method="post">
			<label>Username</label><input type="text" name="username" placeholder="username"/><br>
			<label>Password</label><input type="password" name="password" placeholder="password"/><br>
			<label>Email</label><input type="email" name="email" placeholder="username@email.com"/>
			<button type="submit">Register</button>
			<a href="/login">Back To Login</a>
		</form>
	</div>
</body>
</html>