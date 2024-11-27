<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Login</title>
  <link rel="stylesheet" href="styles.css">
  <style>
    body {
      background-image: url('images/img4.jpg');
      background-size: cover;
      background-position: center;
      height: 100vh;
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: Arial, sans-serif;
      color: #fff;
    }
  </style></head>
<body>
  <div class="Admincontainer">
    <form action="AdminLoginServlet" class="Admin-login-form" method="post">
      <h2>Admin Login</h2><br>
      <div class="Admin-input-field">
        <label for="username">Username:</label>
        <input type="text" name="username" required>
      </div>
      <div class="Admin-input-field">
        <label for="password">Password:</label>
        <input type="password" name="password" required>
      </div>
      <input type="submit" class="Admin-btn" placeholder="Login">
    </form>
  </div>
  <script>
  <% if (request.getAttribute("errorMessage") != null) { %>
	        window.onload = function() {
	            alert("<%= request.getAttribute("errorMessage") %>");
	        };
   <% } %>
   </script>
	
</body>
</html>
