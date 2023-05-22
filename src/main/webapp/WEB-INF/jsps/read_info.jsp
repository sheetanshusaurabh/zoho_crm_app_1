<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Information</title>

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

	.card {
		margin-top: 20px;
		padding: 20px;
		border: 1px solid #ddd;
		border-radius: 5px;
	}

	.btn-primary {
		margin-top: 10px;
	}
</style>
</head>
<body>

<div class="container">
	<div class="card">
		<h2>Read Details</h2>
		<p>FirstName: ${read.firstName}</p>
		<p>LastName: ${read.lastName}</p>
		<p>Email: ${read.email}</p>
		<p>Mobile: ${read.mobile}</p>
		<p>Source: ${read.source}</p>

		<form action="sendEmail" method="post">
			<input type="hidden" name="email" value="${read.email}">
			<input type="submit" value="Send Email" class="btn btn-primary">
		</form>

		<form action="convertRead" method="post">
			<input type="hidden" name="id" value="${read.id}">
			<input type="submit" value="Convert" class="btn btn-primary">
		</form>
	</div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.7.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
