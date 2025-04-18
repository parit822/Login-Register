<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<body>
<%
     // Retrieve the session object
     HttpSession session1 = request.getSession(false);

      // Check if the session is not null and the username attribute is set
      if (session1 != null) {
    	  session1.invalidate();
    	  
    	  response.sendRedirect("index.html");
      }
    %>
</body>
</html>