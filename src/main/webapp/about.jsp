<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url = "insertion/header/UpHeader.jsp" />
<c:import url = "insertion/header/DownHeader.jsp" />

  <!-- custom menu -->
  <div class="custom_menu-container">
    <div class="container">
      <div class="custom_menu">
        <ul class="navbar-nav ">
          <li class="nav-item active">
            <a class="nav-link pl-0" href="index.jsp">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.jsp">About </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="portfolio.jsp">Portfolio </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="service.jsp">Services</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="contact.jsp">Contact us</a>
          </li>
        </ul>
        <div class="user_option">
          <div class="login_btn-container">
            <a href="">
              Login
            </a>
          </div>
          <form class="form-inline my-2 my-lg-0">
            <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
          </form>
        </div>
      </div>
    </div>
  </div>

  <!-- custom menu -->

  <!-- about section -->

  <section class="about_section layout_padding mt-5">
    <div class="container">
      <div class="row">
        <div class="col-md-7">
          <div class="img-box">
            <img src="images/about-img.png" alt="" />
          </div>
        </div>
        <div class="col-md-5">
          <div class="detail-box">
            <div class="custom_heading-container">
              <h2>
                About Design
              </h2>
            </div>

            <p>
              It is a long established fact that a reader will be distracted
              by the readable content of a page when looking at its layout.
              The point of using Lorem Ipsum is that it has a more-or-less
              normal distribution of letters, as opposed to using 'Content
              here , content here', making it
            </p>
            <div>
              <a href="">
                About More
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->



  <!-- info section -->
  <section class="info_section layout_padding-top layout_padding2-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-lg-3">
          <div class="info_links pl-lg-5">
            <h4>
              Menu
            </h4>
            <ul>
              <li>
                <a href="index.jsp">
                  Home
                </a>
              </li>
              <li class="active">
                <a href="about.jsp">
                  About
                </a>
              </li>
              <li>
                <a class="" href="portfolio.jsp">Portfolio </a>
              </li>
              <li>
                <a class="" href="service.jsp">Services</a>
              </li>
              <li>
                <a href="contact.jsp">
                  Contact Us
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="info_contact">
            <h4>
              Location
            </h4>
            <div>
              <img src="images/location.png" alt="" />
              <p>
                104 loram ipusm
              </p>
            </div>
            <div>
              <img src="images/telephone.png" alt="" />
              <p>
                ( +01 1234567890 )
              </p>
            </div>
            <div>
              <img src="images/envelope.png" alt="" />
              <p>
                demo@gmail.com
              </p>
            </div>
          </div>
        </div>

        <div class="col-md-6 col-lg-3">
          <div class="info_social">
            <h4>
              Social Link
            </h4>
            <div class="social_container">
              <div>
                <a href="">
                  <img src="images/facebook-logo.png" alt="" />
                </a>
              </div>
              <div>
                <a href="">
                  <img src="images/twitter-logo.png" alt="" />
                </a>
              </div>
              <div>
                <a href="">
                  <img src="images/instagram.png" alt="" />
                </a>
              </div>
              <div>
                <a href="">
                  <img src="images/linkedin-sign.png" alt="" />
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="info_form">
            <h4>
              Newsletter
            </h4>
            <form action="#">
              <input type="text" placeholder="Enter Your Email" />
              <button type="submit">
                Subscribe
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>


<!-- end info_section -->
<c:import url = "insertion/footer/UpFooter.jsp" />
<c:import url = "insertion/footer/DownFooter.jsp" />