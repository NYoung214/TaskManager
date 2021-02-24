<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<link rel="stylesheet" href="/css/styles.css" type="text/css">
</head>
<body>
	<div class="container">
		<div class="login-sub-container">
			<h2>Login</h2>
			<p>${message}</p>
			<p>${error}</p>
			<form action="/login" method="post">
				<div class="form-div">
					<table>
						<tr>
							<td><label class="label">Username</label></td>
							<td><input type="text" name="username" placeholder="username" /></td>
						</tr>
						<tr>
							<td><label class="label">Password</label></td>
							<td><input type="password" name="password" placeholder="password" /></td>
						</tr>
						<tr>
							<td><button type="submit" class="submit-button">Login</button></td>
							<td><a href="/register" class="back-link">Create An Account</a></td>
						</tr>
					</table>				
				</div>

			</form>		
		</div>

	</div>
</body>
</html>