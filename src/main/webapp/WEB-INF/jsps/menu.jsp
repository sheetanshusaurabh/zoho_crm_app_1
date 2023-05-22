<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page Title</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.7.0/dist/css/bootstrap.min.css">

<!-- Custom CSS -->
<style>
	body {
		background-color: #f8f9fa;
		padding-top: 20px;
	}

	.container {
		max-width: 800px;
		margin: 0 auto;
	}

	.navbar {
		padding: 10px;
		background-color: #ffffff;
		box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	}

	.navbar-nav .nav-link {
		color: #333333;
		font-weight: bold;
		margin-right: 20px;
	}

	.navbar-nav .nav-link:hover {
		color: #007bff;
	}

</style>
</head>
<body>

<div class="container">
	<nav class="navbar navbar-expand-lg navbar-light">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link" href="listAll">All Read</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="listAllContacts">All Contacts</a>
			</li>
		</ul>
	</nav>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.7.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
