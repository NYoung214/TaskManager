<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Register</title>
	<link rel="stylesheet" href="/css/styles.css" type="text/css">
</head>
<body>
	<div class="container">
		<div class="edit-container">
			<h2>Create An Account</h2>
			<p>${message }</p>
			<form action="/register" method="post">
				<table>
					<tr>
						<td><label class="label">Username</label></td>
						<td><input type="text" name="username" placeholder="username"/></td>
					</tr>
					<tr>
						<td><label class="label">Password</label></td>
						<td><input type="password" name="password" placeholder="password"/></td>
					</tr>
					<tr>
						<td><label class="label">Email</label></td>
						<td><input type="email" name="email" placeholder="username@email.com"/></td>
					</tr>
					<tr>
						<td><button type="submit" class="submit-button">Register</button></td>
						<td><a href="/login" class="back-link">Back To Login</a></td>
					</tr>
				</table>
			</form>		
		</div>

	</div>
</body>
</html>