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
		<div class="edit-container"> 
			<h2>Delete A Task</h2>
			<p>${message }</p>
			<p>${error}</p>
			<form action="/delete" method="post">
				<table>
					<tr>
						<td><label class="label">Task Id :</label></td>
						<td><input type="text" name="taskId" value="${current.taskId }" readonly/></td>
					</tr>
					<tr>
						<td><label class="label">User:</label></td>
						<td><input type="text" name="username" value="${current.user.username }" readonly/></td>
					</tr>
					<tr>
						<td><label class="label">Task Name</label></td>
						<td><input type="text" name="taskName" value="${current.taskName }" readonly/></td>
					</tr>
					<tr>
						<td><label class="label">Start Date</label></td>
						<td><input type="text" name="startDate" value="${current.startDate }" readonly/></td>
					</tr>
					<tr>
						<td><label class="label">End Date</label></td>
						<td><input type="text" name="endDate" value="${current.endDate }" readonly/></td>
					</tr>
					<tr>
						<td><label class="label">Severity</label></td>
						<td><input type="text" name="severity" value="${current.severity }" readonly/></td>
					</tr>
					<tr>
						<td><label class="label">Description</label></td>
						<td><textarea name="description" cols="30" rows="10" readonly>${current.description}</textarea></td>
					</tr>
					<tr>
						<td><button type="submit" class="submit-button">Delete Task</button></td>
						<td><a href="/home" class="back-link">Back</a></td>
					</tr>
				</table>
			</form>		
		</div>
	</div>
</body>
</html>