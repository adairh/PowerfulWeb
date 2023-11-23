<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hihonn personal Java Servlet web</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap07_ex2/styles/main.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
</head>
<body>

<h1>List of albums</h1>

<p>User Email: ${cookie.userEmail.value}</p>

<p>
<a href="download01?action=checkUser&amp;productCode=8601">
    86 (the band) - True Life Songs and Pictures
</a><br>

<a href="download01?action=checkUser&amp;productCode=pf01">
    Paddlefoot - The First CD
</a><br>

<a href="download01?action=checkUser&amp;productCode=pf02">
    Paddlefoot - The Second CD
</a><br>

<a href="download01?action=checkUser&amp;productCode=jr01">
    Joe Rut - Genuine Wood Grained Finish
</a>
</p>

</body>
<jsp:include page="/backButton.jsp" />
</html>