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
		<div>
			<h2>Edit A Task</h2>
			<p>${message }</p>
			
			<form action="../update" method="post">
				<input type="hidden" name="taskId" value="${current.taskId}" readonly/>
				<label>Which User should do the task:</label>
					<select name="username">
						<c:forEach items="${users }" var="user">
							<option value="${user.username }">${user.username }</option>
						</c:forEach>
					</select>
				<label>Task Name</label><input type="text" name="taskName" placeholder="Task name" value="${current.taskName}"/>
				<label>Start Date</label><input type="date" name="startDate" value="${current.startDate}"/>
				<label>End Date</label><input type="date" name="endDate" value="${current.endDate}"/>
				<label>Severity</label>
					<select name="severity">
						<option value="low">Low</option>
						<option value="medium">Medium</option>
						<option value="high">High</option>
					</select>
				<label>Description</label>
				<textarea name="description" cols="30" rows="10">${current.description}</textarea>
				<button type="submit">Save Changes</button><a href="/home">Back</a>
			</form>	
		</div>
		<div>
			<h2>Current Saved Settings</h2>
			<p><label>User: </label>${current.user.username}</p>
			<p><label>Task Name: </label>${current.taskName}</p>
			<p><label>Start Date: </label>${current.startDate}</p>
			<p><label>End Date: </label>${current.endDate}</p>
			<p><label>Severity: </label>${current.severity}</p>
			<p><label>Description: </label>${current.description}</p>
		</div>
	</div>

</body>
</html>