<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap07_ex2/styles/main.css" type="text/css"/>--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap07_ex2/styles/card.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
</head>
<body>

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">


<section class="hero-section">
    <div class="card-grid">
        <a class="card" href="download02?action=checkUser&amp;productCode=8601">
            <div class="card__background" style="background-image: url(https://images.unsplash.com/photo-1557177324-56c542165309?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80)"></div>
            <div class="card__content">
                <p class="card__category">86 (the band)</p>
                <h3 class="card__heading">True Life Songs and Pictures</h3>
            </div>
        </a>
        <a class="card" href="download02?action=checkUser&amp;productCode=pf01">
            <div class="card__background" style="background-image: url(https://images.unsplash.com/photo-1557187666-4fd70cf76254?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60)"></div>
            <div class="card__content">
                <p class="card__category">Paddlefoot</p>
                <h3 class="card__heading">The First CD</h3>
            </div>
        </a>
        <a class="card" href="download02?action=checkUser&amp;productCode=pf02">
            <div class="card__background" style="background-image: url(https://images.unsplash.com/photo-1556680262-9990363a3e6d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60)"></div>
            <div class="card__content">
                <p class="card__category">Paddlefoot</p>
                <h3 class="card__heading">The Second CD</h3>
            </div>
        </a>
        <a class="card" href="download02?action=checkUser&amp;productCode=jr01">
            <div class="card__background" style="background-image: url(https://images.unsplash.com/photo-1557004396-66e4174d7bf6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60)"></div>
            <div class="card__content">
                <p class="card__category">Joe Rut</p>
                <h3 class="card__heading">Genuine Wood Grained Finish</h3>
            </div>
        </a>
    </div>
</section>



</body>
</html>