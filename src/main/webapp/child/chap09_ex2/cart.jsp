<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<div class="container mt-5">
  <h1>Your cart</h1>

  <table class="table">
    <thead>
    <tr>
      <th>Quantity</th>
      <th>Description</th>
      <th>Price</th>
      <th>Amount</th>
      <th></th>
    </tr>
    </thead>
    <c:if test="${not empty cart.items}">
      <c:forEach var="item" items="${cart.items}">
        <tr>
          <td>
            <form action="" method="post">
              <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
              <input type="text" name="quantity" value="<c:out value='${item.quantity}'/>" class="form-control" id="quantity" style="min-width: 3rem;">
              <button type="submit" class="btn btn-primary">Update</button>
            </form>
          </td>
          <td><c:out value='${item.product.description}'/></td>
          <td>${item.product.priceCurrencyFormat}</td>
          <td>${item.totalCurrencyFormat}</td>
          <td>
            <form action="" method="post">
              <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
              <input type="hidden" name="quantity" value="0">
              <button type="submit" class="btn btn-danger">Remove Item</button>
            </form>
          </td>
        </tr>
      </c:forEach>
    </c:if>

  </table>

  <p><b>To change the quantity</b>, enter the new quantity and click on the Update button.</p>

  <form action="" method="post">
    <input type="hidden" name="action" value="shop">
    <button type="submit" class="btn btn-secondary">Continue Shopping</button>
  </form>

  <form action="" method="post">
    <input type="hidden" name="action" value="checkout">
    <button type="submit" class="btn btn-success">Checkout</button>
  </form>
</div>

<!-- Add Bootstrap JavaScript (jQuery and Popper.js are required) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

</body>
</html>
