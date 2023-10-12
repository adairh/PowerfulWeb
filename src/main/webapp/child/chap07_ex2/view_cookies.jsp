<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>

    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap07_ex2/styles/main.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
</head>
<body>

<div class="container mt-5">
    <h1 class="display-4">Cookies</h1>

    <p>Here's a table with all of the cookies that this browser is sending to the current server.</p>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Name</th>
            <th>Value</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="c" items="${cookie}">
            <tr>
                <td>${c.value.name}</td>
                <td>${c.value.value}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <p><a href="download02?action=viewAlbums" class="btn btn-primary">View list of albums</a></p>

    <p><a href="download02?action=deleteCookies" class="btn btn-secondary">Delete all persistent cookies</a></p>
</div>

<!-- Add Bootstrap JavaScript (jQuery and Popper.js are required) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

</body>
<jsp:include page="/backButton.jsp" />
</html>
