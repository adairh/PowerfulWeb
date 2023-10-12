<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>

    <!-- Link to Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Link to your custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap09_ex2/styles/main.css" type="text/css">
</head>
<body>

<div class="container">
    <h1 class="mt-5 text-center">Checkout isn't finished yet</h1>
    <p class="text-center">Click on the browser's Back button to continue.</p>
</div>

<!-- Add Bootstrap JavaScript (jQuery and Popper.js are required) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

</body>
<jsp:include page="/backButton.jsp" />
</html>
