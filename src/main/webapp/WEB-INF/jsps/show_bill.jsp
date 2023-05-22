<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing</title>

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

	th, td {
		padding: 8px;
		border: 1px solid #ddd;
		text-align: left;
	}

	th {
		background-color: #f9f9f9;
	}

</style>
</head>
<body>

<div class="container">
	<h2>Billing</h2>
	<table>
		<tr>
			<th>FirstName</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Product</th>
			<th>Amount</th>
		</tr>
		<c:forEach var="saveBilling" items="${saveBilling}">
			<tr>
				<td>${saveBilling.firstName}</td>
				<td>${saveBilling.lastName}</td>
				<td>${saveBilling.email}</td>
				<td>${saveBilling.mobile}</td>
				<td>${saveBilling.product}</td>
				<td>${saveBilling.amount}</td>
			</tr>
		</c:forEach>
	</table>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.7.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
