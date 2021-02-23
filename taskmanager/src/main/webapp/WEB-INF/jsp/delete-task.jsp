<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Task</title>
	<link rel="stylesheet" href="/css/styles.css">
</head>
<body>
	<div class="container test">
		<h2>Delete A Task</h2>
		<p>${message }</p>
		<p>${error}</p>
		<form action="/delete" method="post">
			<label>Task Id :</label><input type="text" name="taskId" value="${current.taskId }" readonly/>
			<label>User:</label><input type="text" name="username" value="${current.user.username }" readonly/>
			<label>Task Name</label><input type="text" name="taskName" value="${current.taskName }" readonly/>
			<label>Start Date</label><input type="text" name="startDate" value="${current.startDate }" readonly/>
			<label>End Date</label><input type="text" name="endDate" value="${current.endDate }" readonly/>
			<label>Severity</label><input type="text" name="severity" value="${current.severity }" readonly/>
			<label>Description</label><textarea name="description" cols="30" rows="10" readonly>${current.description}</textarea>
			<button type="submit">Delete Task</button><a href="/home">Back</a>
		</form>
	</div>
</body>
</html>