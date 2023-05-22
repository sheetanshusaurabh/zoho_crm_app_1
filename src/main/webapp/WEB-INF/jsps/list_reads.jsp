<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List all Leads</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.7.0/dist/css/bootstrap.min.css">

<!-- Custom CSS -->
<style>
	body {
		background-color: #f1f1f1;
		padding: 20px;
	}

	.container {
		max-width: 800px;
		margin: 0 auto;
	}

	table {
		width: 100%;
		border-collapse: collapse;
	}

	table th,
	table td {
		padding: 8px;
		border: 1px solid #ddd;
	}

	.btn-primary {
		margin-top: 10px;
	}
</style>
</head>
<body>

<div class="container">
	<a href="viewCreateRead" class="btn btn-primary">Create New Read</a>
	<h2>List all Leads...</h2>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Source</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="read" items="${read}">
				<tr>
					<td><a href="readInfo?id=${read.id}">${read.firstName}</a></td>
					<td>${read.lastName}</td>
					<td>${read.email}</td>
					<td>${read.mobile}</td>
					<td>${read.source}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.7.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
