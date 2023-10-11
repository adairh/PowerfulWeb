<%@ page import="me.sjihh.hihonweb.Excercise" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" >

<head>
    <meta charset="UTF-8">




    <title>HuyHoang - Personal Page</title>

    <meta name="description" content="Huy Hoang website">
    <link href='https://fonts.googleapis.com/css?family=Raleway:100,200,400,600' rel='stylesheet' type='text/css'>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.7.4/jquery.fullPage.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">


    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>

    <link rel='stylesheet' href="${pageContext.request.contextPath}/styles/style.scss" type="text/css"/>
    <link rel='stylesheet' href="${pageContext.request.contextPath}/styles/particles.css" type="text/css"/>
    <link rel='stylesheet' href="${pageContext.request.contextPath}/styles/card.scss" type="text/css"/>



</head>

<body>
<!-- navbar header -->
<div class="nav-header">
    <div class="nav-brand">
        <img src="https://s3-us-west-2.amazonaws.com/parallax-theme/assets/bradlogo2.png">
    </div>
    <i class="fa fa-bars fa-3x"></i>
    <div class="header-links">
        <ul>
            <li data-menuanchor="thirdPage"><a href="#project">PROJECT</a></li>
            <li data-menuanchor="secondPage"><a href="#about">ABOUT</a></li>
        </ul>
    </div>
</div>
<!-- end navbar header -->

<!-- sidebar slider -->
<div class="nav-screen">
    <i class="fa fa-times fa-3x"></i>
    <div class="nav-container">
        <div class="nav-links">
            <ul id='myMenu'>
                <li data-menuanchor="secondPage"><a href="#about">ABOUT</a></li>
                <li data-menuanchor="thirdPage"><a href="#project">PROJECT</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- end navbar slider -->

<!-- begin fullpage -->

<div id="fullpage" >
    <div id="particles-js"></div>

    <!-- begin section -->

    <div class="section aboutme" data-anchor="aboutme">
        <div class="opaque-bg animated fadeInDown">
            <h1 style="color:white">LAM NGUYEN<span style="color:#FF6363">/</span>HUY HOANG</h1>
            <p><span id="holder"></span><span class="blinking-cursor">|</span></p>
        </div>
        <i id="moveDown" class="fa fa-chevron-down fa-3x bounce"></i>
    </div>
    <!-- end section -->

    <!-- begin section -->

    <div class="section" data-anchor="about">
        <div class="content">
            <h1 class="wow fadeInDown" data-wow-delay="0.2s">ABOUT ME</h1>

            <div class="row">
                <p class="wow fadeInDown" data-wow-delay="0.2s">Hi, I'm Hoang! I'm a HCMUTE student!</p>
            </div>


            <div class=" wow fadeInUp container-skillbar" data-wow-delay="0.2s">
                <%--
                <div class="skillbar clearfix " data-percent="90%">
                    <div class="skillbar-title" style="background: #DD1E2F;"><span>HTML5</span></div>
                    <div class="skillbar-bar" style="background: #DD1E2F;"></div>
                    <div class="skill-bar-percent">90%</div>
                </div> <!-- End Skill Bar -->

                <div class="skillbar clearfix " data-percent="80%">
                    <div class="skillbar-title" style="background: #EBB035;"><span>CSS3</span></div>
                    <div class="skillbar-bar" style="background: #EBB035;"></div>
                    <div class="skill-bar-percent">80%</div>
                </div> <!-- End Skill Bar -->
                --%>
            </div>
        </div>
    </div>
    <!-- end section -->

    <!-- begin section -->
    <div class="section" data-anchor="project">
        <div class="container-fluid">
            <div class="content-slide">

            </div>
        </div>
    </div>


    <div class="section" data-anchor="project">
        <div class="container-fluid">
            <div class="content-slide">
                <%
                    int amount = Excercise.getAllExercises().size();
                    int row = (amount+1)/2;
                    int pointer = 0;
                    for (int i = 0; i < row; i++) {
                        if (pointer % 4 == 0) {
                %>
                <div class="slide">
                    <%
                        }
                    %>
                    <div class="row">
                        <%
                            for (int j = 0; j < 2; j++) {
                                if (Excercise.getAllExercises().get(pointer) != null && Excercise.getAllExercises().get(pointer) != Excercise.NULL) {
                                    Excercise ex = Excercise.getAllExercises().get(pointer);
                        %>
                        <div class="col-lg-6 col-sm-12">
                            <div class="card">
                                <div class="image-container">
                                    <img class="card-img-top" src="<%=ex.getImageURL()%>" alt="<%=ex.getTitle()%>">
                                </div>
                                <div class="overlay"></div>
                                <div class="card-body">
                                    <h3 class="card-title"><%=ex.getTitle()%></h3>
                                    <p class="card-text"><%=ex.getDescription()%></p>
                                    <a href="<%=ex.getExerciseURL()%>" class="btn btn-primary">VIEW</a>
                                    <br>
                                </div>
                            </div>
                        </div>
                        <%
                                    pointer++;
                                }
                            }
                        %>
                    </div>
                    <%
                        if (pointer % 4 == 0) {
                    %>
                </div>
                <%
                        }
                    }
                %>

            </div>
        </div>
    </div>
    <!-- end section -->

    <!-- begin section -->

    <div class="section fp-auto-height">
        <div class="footer">
            <p>CONNECT WITH ME</p>
            <div class="social-links">
                <span><a href="https://www.facebook.com/sjihh.152" target="_blank"><i class="fa fa-facebook fa-2x"></i></a></span>
                <span><a href="https://www.instagram.com/phd.sjihh/" target="_blank"><i class="fa fa-instagram fa-2x"></i></a></span>
                <span><a href="https://github.com/adairh" target="_blank"><i class="fa fa-github fa-2x"></i></a></span>
            </div>
        </div>
    </div>
    <!-- end section -->

</div>
<!-- end fullpage -->

<script src='https://code.jquery.com/jquery-2.1.1.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.7.4/jquery.fullPage.min.js'></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/particlesjs/2.2.3/particles.min.js"></script>
<script id="rendered-js" src="${pageContext.request.contextPath}/js/script.js"></script>


</body>

</html>
