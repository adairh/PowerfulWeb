<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hihonn personal Java Servlet web</title>

    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap07_ex2/styles/main.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
</head>
<body>

<div class="container mt-5">
    <h1 class="display-4">Downloads</h1>

    <h2>${product.description}</h2>

    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Song title</th>
            <th>Audio Format</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Filter</td>
            <td><a href="/musicStore/sound/${product.code}/filter.mp3" class="btn btn-primary">MP3</a></td>
        </tr>
        <tr>
            <td>So Long Lazy Ray</td>
            <td><a href="/musicStore/sound/${product.code}/so_long.mp3" class="btn btn-primary">MP3</a></td>
        </tr>
        </tbody>
    </table>

    <p><a href="?action=viewAlbums" class="btn btn-secondary">View list of albums</a></p>

    <p><a href="?action=viewCookies" class="btn btn-secondary">View all cookies</a></p>
</div>

<!-- Add Bootstrap JavaScript (jQuery and Popper.js are required) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

</body>
<jsp:include page="/backButton.jsp" />
</html>
