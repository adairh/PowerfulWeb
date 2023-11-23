<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hihonn personal Java Servlet web</title>

    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap08_ex1/styles/main.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
</head>
<body>

<div class="container mt-5">
    <form action="" method="get">

        <h1 class="display-4">Thanks for joining our email list</h1>

        <p>Here is the information that you entered:</p>

            <label>Email:</label>
            <span class="form-control">${user.email}</span>
            <label>First Name:</label>
            <span class="form-control">${user.firstName}</span>
            <label>Last Name:</label>
            <span class="form-control">${user.lastName}</span>

        <p>This email address was added to our list on ${requestScope.currentDate}</p>

        <p>The first address on our list is ${sessionScope.users[0].email}<br>
            The second address on our list is ${sessionScope.users[1].email}
        </p>

        <p>For customer service, contact ${initParam.custServEmail}</p>

        <p>To enter another email address, click on the Back
            button in your browser or the Return button shown
            below.</p>

        <input type="hidden" name="action" value="join">
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
