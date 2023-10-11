<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap08_ex1/styles/main.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
</head>

<body>

    <form action="" method="get">

    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${user.email}</span><br>
    <label>First Name:</label>
    <span>${user.firstName}</span><br>
    <label>Last Name:</label>
    <span>${user.lastName}</span><br>

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
        
</body>
</html>