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
	<div class="container">
		<div class="edit-container">
			<h2>Add A Task</h2>
			<p>${message}</p>
			<p>${error}</p>
			<form action="add-task" method="post">
				<table>
					<tr>
						<td><label class="label">Which User should do the task:</label></td>
						<td>					
							<select name="username">
								<c:forEach items="${users }" var="user">
									<option value="${user.username }">${user.username }</option>
								</c:forEach>
							</select>
						</td>
					</tr>
					<tr>
						<td><label class="label">Task Name</label></td>
						<td><input type="text" name="taskName" placeholder="Task name"/></td>
					</tr>
					<tr>
						<td><label class="label">Start Date</label></td>
						<td><input type="date" name="startDate"/></td>
					</tr>
					<tr>
						<td><label class="label">End Date</label></td>
						<td><input type="date" name="endDate"/></td>
					</tr>
					<tr>
						<td><label class="label">Severity</label></td>
						<td>
							<select name="severity">
								<option value="low">Low</option>
								<option value="medium">Medium</option>
								<option value="high">High</option>
							</select>						
						</td>
					</tr>
					<tr>
						<td><label class="label">Description</label></td>
						<td><textarea name="description" cols="30" rows="10" maxlength="80"></textarea></td>
					</tr>
					<tr>
						<td><button type="submit" class="submit-button">Add New Task</button></td>
						<td><a href="/home" class="back-link">Back</a></td>
					</tr>
				</table>
			</form>		
		</div>
	
	
	

	</div>
</body>
</html>