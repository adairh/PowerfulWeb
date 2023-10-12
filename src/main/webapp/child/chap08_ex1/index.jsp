<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>

    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap08_ex1/styles/main.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="display-4">Join our email list</h1>
    <p class="lead">To join our email list, enter your name and email address below.</p>
    <form action="emailList81" method="post">
        <input type="hidden" name="action" value="add">
        <div class="form-group">
            <div class="form-control">
                <label for="email">Email:</label>
                <input id="email" type="email" class="form-control input input-alt" name="email" value="${user.email}">
                <span class="input-border input-border-alt"></span>
            </div>
        </div>
        <div class="form-group">
            <div class="form-control">
                <label for="firstName">First Name:</label>
                <input id="firstName" type="text" class="form-control input input-alt" name="firstName" value="${user.firstName}">
                <span class="input-border input-border-alt"></span>
            </div>
        </div>
        <div class="form-group">
            <div class="form-control">
                <label for="lastName">Last Name:</label>
                <input id="lastName" type="text" class="form-control input input-alt" name="lastName" value="${user.lastName}">
                <span class="input-border input-border-alt"></span>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Join Now</button>
    </form>
</div>

<!-- Add Bootstrap JavaScript (jQuery and Popper.js are required) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
<jsp:include page="/backButton.jsp" />
</html>
