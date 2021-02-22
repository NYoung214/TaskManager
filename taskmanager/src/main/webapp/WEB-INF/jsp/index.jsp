<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Home</title>
	<link rel="stylesheet" href="/css/styles.css">
</head>
<body>
	<div class="container test">
		<div class="sub-contain test">
			<div>
				<a href="/add-task">Add Task</a>
			</div>
		</div>
		<div class="sub-contain test">
			<div>
				<p class="left">
				Task Name - User - email - Start Date <br>
				Severity - Task End ate<br>
				Description<br>
				</p>
				<p class="right">
					<a href="/edit-task">Edit</a><br>
					<a href="/delete">Delete</a><br>
				</p>
			</div>
		</div>
	</div>
</body>
</html>