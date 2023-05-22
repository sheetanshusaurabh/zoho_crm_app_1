<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.7.0/dist/css/bootstrap.min.css">

<!-- Custom CSS -->
<style>
  body {
    background-color: #f1f1f1;
  }

  .container {
    margin-top: 50px;
  }
</style>
</head>

<body>

<div class="container">
  <form action="triggerEmail" method="post">
    <div class="mb-3">
      <label for="email" class="form-label">To</label>
      <input type="text" name="email" id="email" class="form-control" value="${email}">
    </div>
    <div class="mb-3">
      <label for="subject" class="form-label">Subject</label>
      <input type="text" name="subject" id="subject" class="form-control">
    </div>
    <div class="mb-3">
      <label for="content" class="form-label">Content</label>
      <textarea name="content" id="content" rows="10" class="form-control">Enter your message here</textarea>
    </div>
    <button type="submit" class="btn btn-primary">Send</button>
    <div>${msg}</div>
  </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.7.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
