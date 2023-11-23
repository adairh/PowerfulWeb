<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Hihonn personal Java Servlet web</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap05_ex1/styles/main.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
    <!-- Add any additional styles or meta tags as needed -->
</head>
<body>
<header>
    <h1>Join our email list</h1>
    <p>Welcome to our community! Stay connected with us by joining our email list.</p>
</header>

<main>
    <section>
        <p><i>${message}</i></p>
        <form action="emailList01" method="post">
            <input type="hidden" name="action" value="add">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${user.email}" required>

            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" value="${user.firstName}" required>

            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" value="${user.lastName}" required>

            <!-- Additional Fields -->
            <label for="phoneNumber">Phone Number:</label>
            <input type="tel" id="phoneNumber" name="phoneNumber" value="${user.phoneNumber}">

            <label for="country">Country:</label>
            <select id="country" name="country">
                <option value="usa">United States</option>
                <option value="canada">Canada</option>
                <option value="uk">United Kingdom</option>
            </select>

            <label>
                <input type="checkbox" id="subscribeNewsletter" name="subscribeNewsletter" ${user.subscribeNewsletter ? 'checked' : ''}>
                Subscribe to our newsletter
            </label>

            <label>&nbsp;</label>
            <input type="submit" value="Join Now">
        </form>
    </section>
</main>

<aside>
    <div>
        <h2>Benefits of Joining</h2>
        <ul>
            <li>Exclusive promotions</li>
            <li>Early access to new content</li>
            <li>Community updates</li>
            <!-- Add more benefits as needed -->
        </ul>
    </div>
</aside>

<footer>
    <p>&copy; ${currentYear} Hihonn personal Java Servlet web. All rights reserved.</p>
</footer>

<jsp:include page="/backButton.jsp" />
</body>
</html>
