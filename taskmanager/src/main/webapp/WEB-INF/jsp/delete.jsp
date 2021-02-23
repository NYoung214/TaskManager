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
		<h2>Add A Task</h2>
		<p>${message }</p>
		<form action="add-task" method="post">
			<label>Add a Task for which User:</label>
				<select name="username">
					<c:forEach items="${users }" var="user">
						<option value="${user.username }">${user.username }</option>
					</c:forEach>
				</select>
			<label>Task Name</label><input type="text" name="taskName" placeholder="Task name"/>
			<label>Start Date</label><input type="date" name="startDate"/>
			<label>End Date</label><input type="date" name="endDate"/>
			<label>Severity</label>
				<select name="severity">
					<option value="low">Low</option>
					<option value="medium">Medium</option>
					<option value="high">High</option>
				</select>
			<label>Description</label>
			<textarea name="description" cols="30" rows="10"></textarea>
			<button type="submit">Add New Task</button><a href="/home">Back</a>
		</form>
	</div>
</body>
</html>