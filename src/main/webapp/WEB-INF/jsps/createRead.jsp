<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create</title>

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

	.form-group select {
		width: 100%;
	}

	.btn-primary {
		margin-top: 10px;
	}
</style>
</head>
<body>
	<div class="container">
		<h2>Create Lead</h2>
		<form action="saveLead" method="post">
			<div class="form-group">
				<label for="firstName">First Name</label>
				<input type="text" name="firstName" id="firstName" class="form-control">
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label>
				<input type="text" name="lastName" id="lastName" class="form-control">
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<input type="text" name="email" id="email" class="form-control">
			</div>
			<div class="form-group">
				<label for="mobile">Mobile</label>
				<input type="text" name="mobile" id="mobile" class="form-control">
			</div>
			<div class="form-group">
				<label for="source">Source</label>
				<select name="source" id="source" class="form-control">
					<option value="newspaper">Newspaper</option>
					<option value="website">Website</option>
					<option value="socialMedia">Social Media</option>
				</select>
			</div>
			<input type="submit" value="Save" class="btn btn-primary">
		</form>
	</div>

	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.7.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
