<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>

    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap09_ex2/styles/main.css" type="text/css"/>
</head>
<body>

<div class="container mt-5">
    <h1 class="display-4">CD list</h1>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Description</th>
            <th class="text-right">Price</th>
            <th>&nbsp;</th>
        </tr>
        </thead>
        <c:forEach var="product" items="${products}">
            <tr>
                <td><c:out value='${product.description}'/></td>
                <td class="text-right">${product.priceCurrencyFormat}</td>
                <td>
                    <form action="cart92" method="post">
                        <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                        <button type="submit" class="btn btn-primary">Add To Cart</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

<!-- Add Bootstrap JavaScript (jQuery and Popper.js are required) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

</body>
</html>
