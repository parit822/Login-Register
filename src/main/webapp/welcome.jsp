<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="indexStyle.css">
<style>
	a{
	text-decoration: none;
	color:#007Bff;
	font-weight: bold;
}
a:hover {
	color:#0056b3;
}
</style>
</head>
<body>
<%
     // Retrieve the session object
     HttpSession session1 = request.getSession(false);

      // Check if the session is not null and the username attribute is set
      if (session1 != null && session1.getAttribute("username") != null) {
      // Get the username from the session
        String username = (String) session1.getAttribute("username");
    %>
 <div class="container">
  <h1>❤️welcome, <%=username %> ❤️</h1>
  <p>We're delighted to have you on our platform.</p>
  <p>Explore, learn, and connect with vibrant community.🚀</p>
  <p>Feel free to stay as long as like, and when you're ready</p>
     You can <a href="logout.jsp"> LOGOUT </a> securely.
   </div>
    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>