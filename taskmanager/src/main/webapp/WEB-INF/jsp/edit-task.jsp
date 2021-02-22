<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Edit Task</title>
	<link rel="stylesheet" href="/css/styles.css">
</head>
<body>
	<div class="container test">
		<form action="#" method="post">
			<label>Task Name</label><input type="text" name="taskname" placeholder="Task name"/>
			<label>User</label><input type="text" name="username" placeholder="User name"/>
			<label>Email</label><input type="email" name="email" placeholder="username@email.com"/>
			<label>Start Date</label><input type="date" name="startdate"/>
			<label>End Date</label><input type="date" name="enddate"/>
			<label>Severity</label>
				<select name="severity">
				  <option value="low">Low</option>
				  <option value="medium">Medium</option>
				  <option value="high">High</option>
				</select>
			<label>Description</label>
			<textarea name="description" cols="30" rows="10"></textarea>
			<button type="submit">Save Changes</button><a href="/index">Cancel</a>
		</form>
	</div>
</body>
</html>