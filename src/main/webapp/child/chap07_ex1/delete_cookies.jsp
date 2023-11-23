<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hihonn personal Java Servlet web</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap07_ex1/styles/main.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
</head>
<body>

<h1>Cookies</h1>

<p>All persistent cookies have been removed from this browser.</p>

<p><a href="download01?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=viewCookies">View all cookies</a></p>

</body>
<jsp:include page="/backButton.jsp" />
</html>