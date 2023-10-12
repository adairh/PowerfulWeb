<%@ page import="me.sjihh.hihonweb.Excercise" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- /*
* Template Name: Snap
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="" />
  

  <link href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600, 700,900|Oswald:400,700" rel="stylesheet">


  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/aos.css">
  <link rel="stylesheet" href="css/fancybox.min.css">

  <link rel="stylesheet" href="css/style.css">
  <title>Sjihh &mdash; Huy Hoang's personal web</title>


</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="200">


  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    <header class="header-bar d-flex d-lg-block align-items-center site-navbar-target" data-aos="fade-right">
      <div class="site-logo">
        <a href="index.jsp">Sjihh</a>
      </div>

      <div class="d-inline-block d-lg-none ml-md-0 ml-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle "><span class="icon-menu h3"></span></a></div>

      <div class="main-menu">
        <ul class="js-clone-nav">
          <li><a href="#section-home" class="nav-link">Home</a></li>
          <li><a href="#section-about" class="nav-link">About</a></li>
          <li><a href="#section-cv" class="nav-link">CV</a></li>
          <li><a href="#section-projects" class="nav-link">Projects</a></li>
          <li><a href="#section-exercise" class="nav-link">Exercises</a></li>
          <li><a target="_blank" href="https://store.steampowered.com/app/1937300/Lillusion/" class="nav-link">Lillusion 🎮</a></li>
        </ul>
        <ul class="social js-clone-nav">
          <li><a href="https://www.instagram.com/phd.sjihh/"><span class="icon-instagram"></span></a></li>
          <li><a href="https://www.facebook.com/sjihh.152/"><span class="icon-facebook"></span></a></li>
          <li><a href="https://github.com/adairh"><span class="icon-github"></span></a></li>
        </ul>
      </div>
    </header> 
    <main class="main-content">

      <section class="site-section-hero bg-image mb-5" style="background-image: url('images/hero-min.png');"  data-stellar-background-ratio="0.5" id="section-home">
        <div class="row justify-content-center align-items-center">
          <div class="col-md-7 text-center">
            <h1 class=" heading text-uppercase text-white" data-aos="fade-up">Sjihh</h1>
            <p class="lead text-white mb-4" data-aos="fade-up" data-aos-delay="100">
              Welcome to Huy Hoang Personal website. <br>
              Student ID 21110028<br>
              The background image is the banner of <a target="_blank" href="https://store.steampowered.com/app/1937300/Lillusion/">my game - Lillusion</a>💪💪💪
            </p>
            <p data-aos="fade-up" data-aos-delay="100"><a href="#section-about" class="btn btn-primary btn-md smoothscroll">Explore me!~</a></p>
          </div>
        </div>
      </section>
      <div class="container-fluid site-section">


        <div class="row mb-3">
          <div class="col-12 text-center">
            <h2 class="heading">About me</h2>
          </div>
        </div>
        <section class="site-section" id="section-about">
          <div class="container">
            <div class="row justify-content-center">

              <div class="col-md-8">

                <!-- <h2 class="heading">About</h2> -->

                <img src="images/img.png" alt="Image" class="img-fluid mb-4 w-50 rounded-circle">

                <div data-aos="fade-up"  data-aos-delay="100">
                  <h2 class="">Hi I'm Huy Hoang</h2>
                  <p>You can call me Sjihh~ (I don't know how to pronounce it 💔)</p>
                  <p>
                    🔭 I'm a student of Ho Chi Minh city University of Technology and Education!
                    <br>
                    🎮 I'm a Minecraft and Overwatch player!
                    <br>
                    🌱 I'm currently learning Java, C/C++, Python and other Website's languages. <b>My favorite is Java!</b>
                    <br>
                    ⚡ I love Lana Del Rey!
                  </p>
                  <h3 class=" mt-5">I'm able to</h3>

                  <div class="d-block d-md-flex mt-5">
                    <div class="mr-md-auto mr-2">
                      <ul class="ul-check list-unstyled primary">
                        <li>Website Design</li>
                        <li>Content Writing</li>
                        <li>Graphic Design</li>
                      </ul>
                    </div>
                    <div class="mr-md-auto">
                      <ul class="ul-check list-unstyled primary">
                        <li>2D Animate</li>
                        <li>Unity Develop</li>
                        <li>Playing Game 😎</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="container-fluid site-section">


        <div class="row mb-3">
          <div class="col-12 text-center">
            <h2 class="heading">My CV</h2>
          </div>
        </div>
        <section class="site-section" id="section-cv">
          <div class="container">
            <div class="row justify-content-center">

              <div class="col-md-8">

                <!-- <h2 class="heading">About</h2> -->

                <h4 class="mt-5">Check out my CV if you have time 👉👈</h4>
                <div data-aos="fade-up"  data-aos-delay="100">
                  <embed src="CV.pdf" type="application/pdf" width="100%" height="1000px" />
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>


      <div class="container-fluid site-section">
        <div class="row mb-3">
          <div class="col-12 text-center">
            <h2 class="heading">Projects</h2>
          </div>
        </div>
        <section class="row align-items-stretch photos" id="section-projects">
          <div class="col-12">
            <div class="row align-items-stretch">
              <%
                for (Excercise ex : Excercise.getAllExercises()) {
                    if (ex != null && ex != Excercise.NULL) {
                      if (ex.isProject()) {
                %>
                  <div class="col-6" data-aos="fade-up" data-aos-delay="100">
                  <a target="_blank" href="<%=ex.getExerciseURL()%>" class="d-block photo-item">

                    <img src="<%=ex.getImageURL()%>" alt="Image" class="img-fluid mb-0">
                    <div class="photo-text-more">
                      <span class="icon icon-eye">
                        <h3 class="card-title"><%=ex.getTitle()%></h3>
                      </span>
                    </div>
                  </a>
                </div>
                <%
                    }
                  }
                }
              %>


            </div>


          </div>
        </section>
      </div>


      <div class="container-fluid site-section">
        <div class="row mb-3">
          <div class="col-12 text-center">
            <h2 class="heading">Exercises</h2>
            <h3>This part is just for showing exercises in detail of them in case you want to check <3</h3>
          </div>
        </div>
        <section class="row align-items-stretch photos" id="section-exercise">
          <div class="col-12">
            <div class="row align-items-stretch">
              <%
                for (Excercise ex : Excercise.getAllExercises()) {
                  if (ex != null && ex != Excercise.NULL) {
              %>
              <div class="col-6 col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                <a target="_blank" href="<%=ex.getExerciseURL()%>" class="d-block photo-item">

                  <img src="<%=ex.getImageURL()%>" alt="Image" class="img-fluid mb-0">
                  <div class="photo-text-more">
                      <span class="icon icon-eye">
                        <h3 class="card-title"><%=ex.getTitle()%></h3>
                      </span>
                  </div>
                </a>
              </div>
              <%
                  }
                }
              %>


            </div>


          </div>
        </section>



        <%--<div class="row justify-content-center">
          <div class="col-md-12 text-center py-5">
            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a> Distributed By <a href="https://themewagon.com">ThemeWagon</a><!-- License information: https://untree.co/license/ -->
            </p>
          </div>
        </div>--%>


      </div>


    </main>

  </div> <!-- .site-wrap -->

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/lozad.min.js"></script>
  

  <script src="js/jquery.fancybox.min.js"></script>

  <script src="js/main.js"></script>

  <!-- Global site tag (gtag.js) - Google Analytics -->
  </body>
</html>
