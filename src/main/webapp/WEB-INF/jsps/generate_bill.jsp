<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Bill</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.7.0/dist/css/bootstrap.min.css">

<!-- Custom CSS -->
<style>
	body {
		background-color: #f1f1f1;
		padding: 20px;
	}

	.container {
		max-width: 400px;
		margin: 0 auto;
	}

	.form-group label {
		font-weight: bold;
	}

	.btn-primary {
		margin-top: 10px;
	}
</style>
</head>
<body>
	<div class="container">
		<h2>Create Bill</h2>
		<form action="saveBill" method="post">
			<div class="form-group">
				<label for="firstName">First Name</label>
				<input type="text" name="firstName" id="firstName" class="form-control" value="${contact.firstName}">
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label>
				<input type="text" name="lastName" id="lastName" class="form-control" value="${contact.lastName}">
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<input type="text" name="email" id="email" class="form-control" value="${contact.email}">
			</div>
			<div class="form-group">
					<label for="mobile">Mobile</label>
					<input type="text" name="mobile" id="mobile" class="form-control" value="${contact.mobile}">
				</div>
			<div class="form-group">
				<label for="product">Product</label>
				<input type="text" name="product" id="product" class="form-control">
			</div>
			<div class="form-group">
				<label for="amount">Amount</label>
				<input type="text" name="amount" id="amount" class="form-control">
			</div>
			<input type="submit" value="Generate Bill" class="btn btn-primary">
		</form>
	</div>

	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.7.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
