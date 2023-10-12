<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/12/2023
  Time: 11:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Error Page</title>
</head>
<body>
<h1>Error Occurred</h1>
<p>We're sorry, but an error occurred:</p>
<p>${error}</p>
<a href="<%= request.getContextPath() %>/index.jsp">Go back to the homepage</a>
</body>


</html>

