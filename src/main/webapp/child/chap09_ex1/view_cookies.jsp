<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hihonn personal Java Servlet web</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap09_ex1/styles/main.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
</head>
<body>

<h1>Cookies</h1>

<p>Here's a table with all of the cookies that this 
browser is sending to the current server.</p>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
  <tr>
    <th>Name</th>
    <th>Value</th>
  </tr>
  <c:forEach var="c" items="${cookie}">      
  <tr>
    <td><c:out value='${c.value.name}'/></td>
    <td><c:out value='${c.value.value}'/></td>
  </tr>
  </c:forEach>  
</table>

<p><a href="download91?action=viewAlbums">View list of albums</a></p>

<p><a href="download91?action=deleteCookies">Delete all persistent cookies</a></p>

</body>
<jsp:include page="/backButton.jsp" />
</html>