<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- <title>Secret Garden</title> -->
      	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
	    <link rel="stylesheet" href="${ctx}/resources/fonts/icomoon/style.css">
	    <link rel="stylesheet" href="${ctx}/resources/css/bootstrap.min.css">
	    <link rel="stylesheet" href="${ctx}/resources/css/animate.css">
	    <link rel="stylesheet" href="${ctx}/resources/css/owl.carousel.min.css">
	    <link rel="stylesheet" href="${ctx}/resources/css/owl.theme.default.min.css">
	    <link rel="stylesheet" href="${ctx}/resources/css/bootstrap-datepicker.css">
	    <link rel="stylesheet" href="${ctx}/resources/fonts/flaticon/font/flaticon.css">
	    <link rel="stylesheet" href="${ctx}/resources/css/aos.css">
	    <link rel="stylesheet" href="${ctx}/resources/css/jquery.fancybox.min.css">
	    <link rel="stylesheet" href="${ctx}/resources/css/style.css">
</head>
<body>
  	<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
      <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
      

           <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="${ctx }/secretgarden/main">Secret Garden</a>
                <!-- <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button> -->
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#what-we-do-section">Caution</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#about-section">About Us</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#portfolio-section">Themes</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/reservation">Booking</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/board/list">QnA</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#studio-section">Coming soon..</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#contact-section">Contact</a></li>
                         <c:choose>
                        	<c:when test="${not empty login }">
                        		<li><a href="${ctx }/secretgarden/member/logout" class="nav-link">Logout</a></li>
                        		<li><a href="${ctx }/secretgarden/member/mypage" class="nav-link">My page</a></li>
                        	</c:when>
                        	<c:otherwise>
                        		<li><a href="${ctx }/secretgarden/member/login" class="nav-link">Login</a></li>
                        	</c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </div> 
        </nav>
   <div class="site-wrap">
    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body">
     </div>
    </div> 
 <div class="site-navbar-wrap">
      
      <div class="site-navbar site-navbar-target js-sticky-header">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-6 col-md-4">
            
            
            
			
             <%--  <h1 class="my-0 site-logo"><a href="${ctx }/secretgarden/main">Secret Garden<span class="text-primary">.</span> </a></h1> --%>
            </div>
            <div class="col-6 col-md-8">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">

                  <div class="d-inline-block d-lg-block ml-md-0 mr-auto py-3"><a href="/project/secretgarden/main#" class="site-menu-toggle js-menu-toggle text-black">
                   <!--  <span class="icon-menu h3"></span> <span class="menu-text">Menu</span> -->
                  </a></div>

               <%--   <ul class="site-menu main-menu js-clone-nav d-none d-lg-none">
                    <li><a href="#home-section" class="nav-link">Home</a></li>
                    <li><a href="#what-we-do-section" class="nav-link">What We Do</a></li>
                    <li><a href="#about-section" class="nav-link">About Us</a></li>
                    <li><a href="#portfolio-section" class="nav-link">Theme</a></li>
                    <li><a href="${ctx }/secretgarden/list" class="nav-link">QnA</a></li>
                    <li><a href="#studio-section" class="nav-link">Coming soon</a></li>
                    <li><a href="#contact-section" class="nav-link">Contact</a></li>
                    <li><a href="${ctx }/secretgarden/login" class="nav-link">Log in</a></li>
                  </ul>  --%>
            <!--     여기부터 navbar Test     -->
			<div class="container" style="user-select: auto;" id="navbarTest">

                  <div class="d-inline-block d-lg-block ml-md-0 mr-auto py-3" style="user-select: auto;"><a href="/secretgarden/main#" class="site-menu-toggle js-menu-toggle text-black" style="user-select: auto;">
                    <span class="icon-menu h3" style="user-select: auto;"></span> <span class="menu-text" style="user-select: auto;">Menu</span>
                  </a></div>

                  <ul class="site-menu main-menu js-clone-nav d-none d-lg-none" style="user-select: auto;">
                    <li style="user-select: auto;"><a href="#home-section" class="nav-link active" style="user-select: auto;">Home</a></li>
                    <li style="user-select: auto;"><a href="#what-we-do-section" class="nav-link" style="user-select: auto;">Caution</a></li>
                    <li style="user-select: auto;"><a href="#about-section" class="nav-link" style="user-select: auto;">About Us</a></li>
                    <li style="user-select: auto;"><a href="#portfolio-section" class="nav-link" style="user-select: auto;">Themes</a></li>
                    <li style="user-select: auto;"><a href="/secretgarden/reservation" class="nav-link" style="user-select: auto;">Booking</a></li>
                    <!-- <li><a href="#portfolio-section" class="nav-link">Theme</a></li> -->
                    <li style="user-select: auto;"><a href="/secretgarden/board/list" class="nav-link" style="user-select: auto;">QnA</a></li>
                    <li style="user-select: auto;"><a href="#studio-section" class="nav-link" style="user-select: auto;">Coming soon</a></li>
                    <li style="user-select: auto;"><a href="#contact-section" class="nav-link" style="user-select: auto;">Contact Us</a></li>
                   
                        	<c:choose>
                        	<c:when test="${not empty login }">
                        		<li><a href="${ctx }/secretgarden/member/logout" class="nav-link">Logout</a></li>
                        		<li><a href="${ctx }/secretgarden/member/mypage" class="nav-link">My page</a></li>
                        	</c:when>
                        	<c:otherwise>
                        		<li><a href="${ctx }/secretgarden/member/login" class="nav-link">Login</a></li>
                        	</c:otherwise>
                        </c:choose>
                  </ul>
                </div>
			<!-- 	 여기까지 Test 끝    -->
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div> 
    </div>
    			
     <script src="${ctx}/resources/js/jquery-3.3.1.min.js"></script>
	  <script src="${ctx}/resources/js/popper.min.js"></script>
	  <script src="${ctx}/resources/js/bootstrap.min.js"></script>
	  <script src="${ctx}/resources/js/owl.carousel.min.js"></script>
	  <script src="${ctx}/resources/js/aos.js"></script>
	  <script src="${ctx}/resources/js/jquery.sticky.js"></script>
	  <script src="${ctx}/resources/js/stickyfill.min.js"></script>
	  <script src="${ctx}/resources/js/jquery.easing.1.3.js"></script>
	  <script src="${ctx}/resources/js/isotope.pkgd.min.js"></script>
	  
	  <script src="${ctx}/resources/js/jquery.fancybox.min.js"></script>
	  <script src="${ctx}/resources/js/main.js"></script>
    
</body>
</html>