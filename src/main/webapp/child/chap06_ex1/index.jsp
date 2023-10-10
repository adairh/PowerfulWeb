<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/child/chap06_ex1/includes/header.jsp"/>

<h1>Join our email list</h1>
<p>To join our email list, enter your name and email address below.</p>

<c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if>

<form action="emailList61" method="post">
    <input type="hidden" name="action" value="add">
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user.email}"><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="${user.firstName}"><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="${user.lastName}"><br>
    <label>&nbsp;</label>
    <input type="submit" value="Join Now" class="margin_left">
</form>

<jsp:include page="/child/chap06_ex1/includes/footer.jsp"/>
