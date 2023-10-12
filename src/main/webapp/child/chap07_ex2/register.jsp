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
    <h1>Download registration</h1>
    <p>To register for our downloads, enter your name and email address below. Then, click on the Submit button.</p>

    <form action="download02" method="post">
        <input type="hidden" name="action" value="registerUser">

        <div class="mb-3">
            <div class="form-control">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control input input-alt" id="email" name="email" value="${user.email}">
                <span class="input-border input-border-alt"></span>
            </div>
        </div>

        <div class="mb-3">
            <div class="form-control">
                <label for="firstName" class="form-label">First Name:</label>
                <input type="text" class="form-control input input-alt" id="firstName" name="firstName" value="${user.firstName}">
                <span class="input-border input-border-alt"></span>
            </div>
        </div>

        <div class="mb-3">
            <div class="form-control">
                <label for="lastName" class="form-label">Last Name:</label>
                <input type="text" class="form-control input input-alt" id="lastName" name="lastName" value="${user.lastName}">
                <span class="input-border input-border-alt"></span>
            </div>
        </div>

        <div class="mb-3">
            <input type="submit" value="Register" class="btn btn-primary">
        </div>
    </form>
</div>

<!-- Add Bootstrap JavaScript (jQuery and Popper.js are required) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
<jsp:include page="/backButton.jsp" />
</html>
