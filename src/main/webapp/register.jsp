<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="container">
    <h1>Register</h1>
    <form action="RegisterServlet" method="post">
      <label for="username">Username</label>
      <input type="text" id="username" name="username" required><br>
      <label for="email">Email</label>
      <input type="text" id="username" name="email" required><br>
      <label for="password">Password</label>
      <input type="password" id="password" name="password" required><br>
      <button type="submit">Resister</button>
    </form>
    <p><a href="index.html">Back to Home</a></p>
  </div>
</body>
</html>