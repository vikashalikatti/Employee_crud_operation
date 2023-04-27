<%@page import="dto.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Employee</title>
<!-- Add custom fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap"
	rel="stylesheet">
<!-- Add Font Awesome icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
<!-- Add custom CSS -->
<style>
/* Add your advanced CSS styles and graphics here */
body {
	font-family: 'Roboto', sans-serif;
	background-color: #f5f5f5;
	color: #333;
	background-image: linear-gradient(120deg, #84fab0 0%, #8fd3f4 100%);
}

h1 {
	text-align: center;
	margin-bottom: 1.5rem;
	text-shadow: 2px 2px rgba(0, 0, 0, 0.1);
}

table {
	width: 100%;
	max-width: 1000px;
	margin: 0 auto;
	border-collapse: collapse;
	background-color: #fff;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
	border-radius: 10px;
	overflow: hidden;
	transition: box-shadow 0.5s ease-in-out;
}

table:hover {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.12), 0 2px 4px rgba(0, 0, 0, 0.24);
}

th, td {
	padding: 1rem;
	text-align: left;
	border-bottom: 1px solid #eee;
}

th {
	background-color: #4CAF50;
	color: #fff;
	font-weight: bold;
}

tr:hover {
	background-color: #f5f5f5;
}

button {
	position: relative;
	background-color: #4CAF50;
	color: #fff;
	font-size: 1rem;
	padding: 0.5rem 1rem;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease;
	overflow: hidden;
}

button:hover {
	background-color: #45a049;
	box-shadow: 0 6px 8px rgba(0, 0, 0, 0.1);
}

button:after {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(255, 255, 255, 0.2);
	opacity: 0;
	pointer-events: none;
	transition: opacity 0.3s ease;
}

button:focus:after {
	opacity: 1;
}

/* Add CSS3 animations */
@
keyframes fadeIn { 0% {
	opacity: 0;
}

100
%
{
opacity
:
1;
}
}
table {
	animation: fadeIn 1s ease-in-out;
}
</style>
</head>
<body>
	<center>
		<h1>Employee details</h1>
		<br>
		<table border="1" id="employeeTable">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Mobile</th>
					<th>Salary</th>
					<th>Date of joining</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<!-- Your Java code will generate the rows dynamically -->
				<x:forEach var="emp" items="${list}">
					<tr>
						<td>${emp.getId()}</td>
						<td>${emp.getName()}</td>
						<td>${emp.getMobile()}</titd>
						<td>${emp.getSalary()}</td>
						<td>${emp.getDate()}</td>
						<td><a href="Edit?id=${emp.getId()}"><button>Edit</button></a></td>
						<td><a href="delete?id=${emp.getId()}"><button>Delete</button></a>
						</td>
					</tr>
				</x:forEach>
			</tbody>
		</table>
		<br> <a href="Home.jsp"><button>Back</button></a>
	</center>
</body>
</html>
