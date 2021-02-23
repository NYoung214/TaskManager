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
		<div>
			<h1>Welcome ${sessionName}</h1>
			<p>${message}</p>
			<p>${error}</p>
		</div>
		<div class="sub-contain test">
			<div>
				<a href="/add-task">Add Task</a>
			</div>
		</div>
		<div class="sub-contain test">
			<div>
				<p class="left">
				Task Name - User - email - Start Date <br>
				Severity - Task End ate - Description<br>
				</p>
			</div>
			
			<c:forEach items="${tasks}" var="task">
				<div>
					<p class="left">
					${task.taskId } - ${task.taskName} - ${task.user.username } - ${task.user.email } - ${task.startDate} - ${task.endDate }<br>
					${task.severity } - ${task.endDate } - ${task.description }
					</p>
					<p class="right">
						<a href="/edit-task/${task.taskId}">Edit</a><br>
						<a href="/delete-task/${task.taskId}">Delete</a><br>
					</p>				
				</div>
			</c:forEach>
			
			<div>

			</div>
		</div>
	</div>
</body>
</html>