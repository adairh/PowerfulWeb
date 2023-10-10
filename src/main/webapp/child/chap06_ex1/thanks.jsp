<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
%>

<jsp:include page="/child/chap06_ex1/includes/header.jsp"/>

<h1>Thanks for joining our email list</h1>

<p>Here is the information that you entered:</p>
<label>Email:</label>
<span>${user.email}</span><br>
<label>First Name:</label>
<span>${user.firstName}</span><br>
<label>Last Name:</label>
<span>${user.lastName}</span><br>

<p>To enter another email address, click on the Back 
button in your browser or the Return button shown 
below.</p>

<form action="" method="post">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
</form>

<jsp:include page="/child/chap06_ex1/includes/footer.jsp"/>