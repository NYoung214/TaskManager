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
	<div class="container">
		<div class="home-sub-container">
			<div class="home-welcome">
				<h1>Welcome ${sessionName}</h1>
				<p>${message}</p>
				<p>${error}</p>
			</div>
			<div class="add-bar">
				<a href="/add-task" class="button-link">Add Task</a>
				<a href="/logout" class="button-link">Logout</a>
			</div>
			<div class="">
				<c:forEach items="${tasks}" var="task">
					<div class="home-table-holder">
						<div class="home-table">
							<div class="table"><label class="label">Task Name:</label><span class="table-text">${task.taskName}</span></div>
							<div class="table"><label class="label">Severity:</label><span class="table-text">${task.severity}</span></div>
							<div class="table"><label class="label">Start Date:</label><span class="table-text">${task.startDate}</span></div>
							<div class="table"><label class="label">End Date:</label><span class="table-text">${task.endDate}</span></div>
							<div class="table"><label class="label">Description:</label><textarea class="table-text" readonly>${task.description}</textarea></div>
							<div class="table">
								<table>
									<tr>
										<td><a href="/edit-task/${task.taskId}" class="button-link">Edit</a></td>
										<td><a href="/delete-task/${task.taskId}" class="button-link">Delete</a></td>
									</tr>
								</table>							
							</div>

						</div>
					</div>
						
				</c:forEach>
				
				<div>
				</div>
			</div>		
		</div>
			
	</div>
</body>
</html>