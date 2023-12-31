<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hihonn personal Java Servlet web</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap09_ex1/styles/main.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
</head>
<body>

<h1>Download registration</h1>

<p>To register for our downloads, enter your name and email
   address below. Then, click on the Submit button.</p>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form action="download91" method="post">
    <input type="hidden" name="action" value="registerUser">        
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="<c:out value='${user.email}'/>"><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="<c:out value='${user.firstName}'/>"><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="<c:out value='${user.lastName}'/>"><br>        
    <label>&nbsp;</label>
    <input type="submit" value="Register" class="margin_left">
</form>

</body>
<jsp:include page="/backButton.jsp" />
</html>