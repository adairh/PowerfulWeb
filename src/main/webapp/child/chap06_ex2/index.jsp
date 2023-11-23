<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="/c6e2/">
    <meta charset="utf-8">
    <title>Hihonn Personal Java Servlet Web</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap06_ex2/styles/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">

</head>
<body>
<div class="container">
    <form action="<c:url value="/survey62"/>" method="post" class="mt-5">
        <div class="row">
            <div class="col-12">
                <div class="text-center mb-4">
                    <img src="${pageContext.request.contextPath}/child/chap06_ex2/images/murachlogo.jpg" alt="Murach" width="100">
                    <h1 class="h2 mt-2">Survey</h1>
                    <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
                </div>
            </div>
        </div>
        <h2>Your information:</h2>
        <div class="row">
            <div class="col-6 mb-3">
                <div class="form-control">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" class="input input-alt" name="firstName" required>
                    <span class="input-border input-border-alt"></span>
                </div>
            </div>
            <div class="col-6 mb-3">
                <div class="form-control">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" class="input input-alt" name="lastName" required>
                    <span class="input-border input-border-alt"></span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-6 mb-3">
                <div class="form-control">
                    <label for="email">Email</label>
                    <input type="email" id="email" class="input input-alt" name="email" required>
                    <span class="input-border input-border-alt"></span>
                </div>
            </div>
            <div class="col-6 mb-3">
                <div class="form-control">
                    <label for="dateOfBirth">Date of Birth</label>
                    <input type="text" id="dateOfBirth" class="input input-alt" name="dateOfBirth">
                    <span class="input-border input-border-alt"></span>
                </div>
            </div>
        </div>

        <h2>How did you hear about us?</h2>
        <div class="mb-3 how-hear">
            <div class="form-check">
                <input type="radio" class="form-check-input" name="heardFrom" id="searchEngine" value="Search Engine" checked>
                <label class="form-check-label" for="searchEngine">Search engine</label>
            </div>
            <div class="form-check">
                <input type="radio" class="form-check-input" name="heardFrom" id="wordOfMouth" value="Friend">
                <label class="form-check-label" for="wordOfMouth">Word of mouth</label>
            </div>
            <div class="form-check">
                <input type="radio" class="form-check-input" name="heardFrom" id="socialMedia" value="Social Media">
                <label class="form-check-label" for="socialMedia">Social Media</label>
            </div>
            <div class="form-check">
                <input type="radio" class="form-check-input" name="heardFrom" id="other" value="Other">
                <label class="form-check-label" for="other">Other</label>
            </div>
        </div>

        <h2>Would you like to receive announcements about new CDs and special offers?</h2>
        <div class="form-check mb-3">
            <input type="checkbox" class="form-check-input" name="wantsUpdates" id="wantsUpdates">
            <label class="form-check-label" for="wantsUpdates">YES, I'd like that.</label>
        </div>
        <div class="form-check mb-3">
            <input type="checkbox" class="form-check-input" name="emailOK" id="emailOK">
            <label class="form-check-label" for="emailOK">YES, please send me email announcements.</label>
        </div>

        <div class="mb-3">
            <p>Please contact me by:</p>
            <select class="form-select" name="contactVia">
                <option value="Both" selected>Email or postal mail</option>
                <option value="Email">Email only</option>
                <option value="Postal Mail">Postal mail only</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>


<jsp:include page="/backButton.jsp" />
</body>
</html>
