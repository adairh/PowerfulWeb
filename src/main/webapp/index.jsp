<%@ page import="me.sjihh.hihonweb.Excercise" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" >

<head>
    <meta charset="UTF-8">


    <meta name="apple-mobile-web-app-title" content="CodePen">






    <title>CodePen - Personal Webpage</title>

    <title>BRADENGELHARDT</title>
    <meta name="description" content="Web designer and front-end developer">
    <link href='https://fonts.googleapis.com/css?family=Raleway:100,200,400,600' rel='stylesheet' type='text/css'>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.7.4/jquery.fullPage.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">


    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>
    <link rel='stylesheet' href='css/style.scss'>
    <link rel='stylesheet' href='css/particles.css'>
    <link rel='stylesheet' href='css/card.scss'>



</head>

<body translate="no">
<!-- navbar header -->
<div class="nav-header">
    <div class="nav-brand">
        <img src="https://s3-us-west-2.amazonaws.com/parallax-theme/assets/bradlogo2.png">
    </div>
    <i class="fa fa-bars fa-3x"></i>
    <div class="header-links">
        <ul>
            <li data-menuanchor="fourthPage"><a href="#contact">CONTACT</a></li>
            <li data-menuanchor="thirdPage"><a href="#portfolio">PORTFOLIO</a></li>
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
                <li data-menuanchor="thirdPage"><a href="#portfolio">PORTFOLIO</a></li>
                <li data-menuanchor="fourthPage"><a href="#contact">CONTACT</a></li>
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
            <h1 style="color:white">BRAD<span style="color:#FF6363">/</span>ENGELHARDT</h1>
            <p><span id="holder"></span><span class="blinking-cursor">|</span></p>
        </div>
        <i id="moveDown" class="fa fa-chevron-down fa-3x bounce"></i>
    </div>
    <!-- end section -->

    <!-- begin section -->

    <div class="section" data-anchor="skills">
        <div class="content">
            <h1 class="wow fadeInDown" data-wow-delay="0.2s">ABOUT ME</h1>

            <div class="row">
                <p class="wow fadeInDown" data-wow-delay="0.2s">Hi, I'm Brad Engelhardt! I'm a Silicon Valley based Web Designer & Front-end Developer focused on creating clean, responsive web designs!</p>
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

    <div class="section" data-anchor="projects">
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
                                <a href="<%=ex.getExerciseURL()%>" class="btn btn-primary">Go somewhere</a>
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
    <!-- end section -->

    <!-- begin section -->

    <div class="section" data-anchor="contact">
        <div class="content wow fadeInDown" data-wow-delay="0.2s">
            <h1>CONTACT ME</h1>
            <p>Whether you're interested in working with me or just want to say hello, I'd love to hear from you!</p>
            <br>
            <div class="contact-form">

                <div id="form-messages"></div>
                <form id="ajax-contact" method="post" role="form" action="contact.php" data-toggle="validator">
                    <div class="form-group has-feedback wow fadeInLeft" data-wow-delay="0.6s">
                        <input type="text" class="form-control" id="name" name="name" placeholder="NAME" data-error="Field can't be blank!" required>
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <div class="help-block with-errors"></div>
                    </div>

                    <div class="form-group has-feedback wow fadeInRight" data-wow-delay="0.8s">
                        <input type="email" class="form-control" id="email" name="email" placeholder="EMAIL" data-error="Field can't be blank!" required>
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <div class="help-block with-errors"></div>
                    </div>

                    <div class="form-group has-feedback wow fadeInLeft" data-wow-delay="1s">
                        <textarea data-minlength="10" class="form-control" id="message" name="message" placeholder="MESSAGE" data-error="Minimum of 10 characters" required></textarea>
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <div class="help-block with-errors"></div>
                    </div>

                    <div class="hidden">
                        <input type="text" class="form-control" id="human" name="human" placeholder="">
                    </div>
                    <div class="wow fadeInUp" data-wow-delay="1s">
                        <button type="submit" id="submit" name="submit" class="btn btn-lg">SEND MESSAGE</button>
                    </div>
                </form>
                <br>
            </div>
        </div>
    </div>
    <!-- end section -->



    <!-- begin section -->

    <div class="section fp-auto-height">
        <div class="footer">
            <p>CONNECT WITH ME</p>
            <div class="social-links">
                <span><a href="https://www.linkedin.com/in/bradleyengelhardt" target="_blank"><i class="fa fa-linkedin fa-2x"></i></a></span>
                <span><a target="_blank" href="https://twitter.com/bradengelhardt" target="_blank"><i class="fa fa-twitter fa-2x"></i></a></span>
                <span><a href="https://github.com/SquishyAndroid" target="_blank"><i class="fa fa-github fa-2x"></i></a></span>
                <span><a href="https://codepen.io/SquishyAndroid/pens/public/"><i class="fa fa-codepen fa-2x"></i></a></span>
            </div>
        </div>
    </div>
    <!-- end section -->

</div>
<!-- end fullpage -->
</body>
<script src='https://code.jquery.com/jquery-2.1.1.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.7.4/jquery.fullPage.min.js'></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/particlesjs/2.2.3/particles.min.js"></script>
<script id="rendered-js" src="js/script.js">

</script>


</body>

</html>
