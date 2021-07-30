<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
<script src="https://kit.fontawesome.com/215ee1d5fa.js" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html lang="en">
  
  <head>
    <title>Secret Garden &mdash; escape room</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
    
   <!--  <style type="text/css">
    .gmap {
    height: 0;
    overflow: hidden;
    padding-bottom: 56.25%;
    position: relative;
}

	.gmap iframe {
    position: absolute;
    left: 0;
    top: 0;
    height: 100%;
    width: 100;
}
    </style> -->
  </head>
 
  
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
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
    
    <!-- .site-mobile-menu -->
    
    
    <div class="site-navbar-wrap">
      
      <div class="site-navbar site-navbar-target js-sticky-header">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-6 col-md-4">
              <h1 class="my-0 site-logo"><a href="${ctx }/secretgarden/main">S.Garden<span class="text-primary">.</span> </a></h1>
            </div>
            <div class="col-6 col-md-8">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">

                  <div class="d-inline-block d-lg-block ml-md-0 mr-auto py-3"><a href="/secretgarden/main#" class="site-menu-toggle js-menu-toggle text-black">
                    <span class="icon-menu h3"></span> <span class="menu-text">Menu</span>
                  </a></div>

                  <ul class="site-menu main-menu js-clone-nav d-none d-lg-none">
                    <li><a href="#home-section" class="nav-link">Home</a></li>
                    <li><a href="#what-we-do-section" class="nav-link">Caution</a></li>
                    <li><a href="#about-section" class="nav-link">About Us</a></li>
                    <li><a href="#portfolio-section" class="nav-link">Themes</a></li>
                    <li><a href="${ctx }/secretgarden/reservation" class="nav-link">Booking</a></li>
                    <!-- <li><a href="#portfolio-section" class="nav-link">Theme</a></li> -->
                    <li><a href="${ctx }/secretgarden/board/list" class="nav-link">QnA</a></li>
                    <li><a href="#studio-section" class="nav-link">Coming soon</a></li>
                    <li><a href="#contact-section" class="nav-link">Contact Us</a></li>
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
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div> 
    
    
    
    <!-- END .site-navbar-wrap -->
    
    <div class="site-blocks-cover" id="home-section">
      <div class="img-wrap">
        <div class="owl-carousel slide-one-item hero-slider">
          <div class="slide">
            <img src="${ctx}/resources/images/th11.png" alt="Image">  
          </div>
          <div class="slide">
            <img src="${ctx}/resources/images/th2.jpg" alt="Image">  
          </div>
          <div class="slide">
            <img src="${ctx}/resources/images/th3.jpg" alt="Image">  
          </div>
        </div>
      </div>
     
      <div class="container">
        <div class="row">
          <div class="col-md-6 ml-auto align-self-center">
            <div class="intro">
              <div class="heading">
                <h1>Secret Garden</h1>
              </div>
              <div class="text">
                <p class="sub-text mb-5">Secret garden escape room</p>
                <p><a href="#portfolio-section" target="_blank" class="btn btn-outline-primary btn-md">테마 더보기</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> <!-- END .site-blocks-cover -->

    <div class="site-section" id="what-we-do-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-6 section-title">
            <span class="sub-title mb-2 d-block">Caution</span>
            <h2 class="title text-primary">CAUTION</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-10 ml-auto">
            <div class="row">
              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3><i class="fas fa-clock"></i>TIME</h3>
                  <p>원활한 진행을 위하여 게임에 관한 안내가 이뤄집니다.<br>
					시작시간 10분전까지 매장에 도착해주세요.
					</p>
                 <!--  <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>
              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3><i class="fas fa-camera"></i>PHOTO</h3>
                  <p>사진촬영및 스포일러가 엄격히 제한됩니다.<br>
					휴대폰 및 전자기기는 직원의 안내에 따라 캐비닛에 보관해주세요!</p>
                  <!-- <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>
              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3><i class="fas fa-exclamation-triangle"></i>DANGER</h3>
                  <p>위험물품의 반입은 금지되며, <br>큰 힘을 가하여 소품이 파손되었을 시에는<br> 손해배상이 청구될수 있습니다.</p>
                 <!--  <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>

              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3><i class="fas fa-heartbeat"></i>QUALITY</h3>
                  <p>최고의 인테리어, 스토리, 문제의 퀄리티를 보장합니다</p>
                  <!-- <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>
              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3><i class="fas fa-phone-volume"></i>SAFE</h3>
                  <p>안전상 문제가 생겼을시,<br> 룸 내에 구비되어있는 인터폰으로 즉시 연락해주세요.</p>
                 <!--  <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>
              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3><i class="fas fa-phone-slash"></i>RESERVATION</h3>
                  <p>예약시, 잘못된 번호등을 남기신경우 자동으로 예약이 취소되오니<br> 이점 미리 양해부탁드립니다.</p>
                  <!-- <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> <!-- END .site-section -->

    <div class="site-section" id="about-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 mb-5">
            <img src="${ctx}/resources/images/key2.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 ml-auto section-title">
            <span class="sub-title mb-2 d-block">Acquaint Us</span>
            <h2 class="title text-primary mb-3">About us</h2>
            <p class="mb-4">'방탈출카페'란 한방에 갇힌 플레이어들이 그 안에 숨겨진 수수께끼를 찾아내서 시간내에 풀어야 하는 오프라인 탈출게임입니다. 본래 온라인게임으로 시작된 방탈출게임은, 현재 파리에서 방콕에 이르기까지 전세계에서 오프라인 형태로 선풍적인 인기를 끌고 있습니다.</p>


            <div class="d-flex">
              <ul class="list-unstyled ul-check success mr-5">
                <li>TIME</li>
                <li>QUALITY</li>
                <li>SAFE</li>
                
              </ul>
              <ul class="list-unstyled ul-check success">
                
                <li>RESERVATION</li>
                <li>STORY</li>
                <li>CHARACTER</li>
              </ul>
            </div>
            <p><a data-fancybox data-ratio="2" href="https://www.youtube.com/watch?v=KjPzlC6QE0Y" class="d-flex align-items-center"><span class="icon-play_circle_outline h4 m-0 mr-2"></span> <span>Watch the video</span></a></p>
          </div>
        </div>
      </div>
    </div> <!-- .END site-section -->

<%-- 
    <div class="site-section" id="what-we-do-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-6 section-title">
            <span class="sub-title mb-2 d-block">Meet The Team</span>
            <h2 class="title text-primary">We are talented people.</h2>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-lg-6 mb-5 person">
            <img src="${ctx}/resources/images/person_1.jpg" alt="Image" class="img-fluid mb-5">

            <div class="row">
              <div class="col-lg-10 ml-auto">
                <div class="pr-lg-5">
                  <h3>Jacob Spencer</h3>
                  <span class="mb-4 d-block">CEO, Co-Founder</span>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                  <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                  <p class="d-flex align-items-center">
                    <span class="mr-3 text-black">Follow me:</span>
                    <a href="#" class="twitter pr-2 pt-2 pb-2 pl-0"><span class="icon-twitter"></span></a>
                    <a href="#" class="facebook p-2"><span class="icon-facebook"></span></a>
                    <a href="#" class="dribbble p-2"><span class="icon-dribbble"></span></a>
                    <a href="#" class="instagram p-2"><span class="icon-instagram"></span></a>
                    <a href="#" class="linkedin p-2"><span class="icon-linkedin"></span></a>
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 person">
            <img src="${ctx}/resources/images/person_2.jpg" alt="Image" class="img-fluid mb-5">
            <div class="row">
              <div class="col-lg-10 ml-auto">
                <div class="pr-lg-5">
                  <h3>Chris Peters</h3>
                  <span class="mb-4 d-block">CTO, Co-Founder</span>
                  <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                  <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
                  <p class="d-flex align-items-center">
                    <span class="mr-3 text-black">Follow me:</span>
                    <a href="#" class="twitter pr-2 pt-2 pb-2 pl-0"><span class="icon-twitter"></span></a>
                    <a href="#" class="github p-2"><span class="icon-github"></span></a>
                    <a href="#" class="dribbble p-2"><span class="icon-dribbble"></span></a>
                    <a href="#" class="instagram p-2"><span class="icon-instagram"></span></a>
                    <a href="#" class="linkedin p-2"><span class="icon-linkedin"></span></a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     --%>

    <div class="site-section" id="portfolio-section">
      <div class="container">
        
        <div class="row mb-5 ">
          <div class="col-md-7 section-title text-center mx-auto">
            <span class="sub-title mb-2 d-block">THEMES</span>
            <h2 class="title text-primary mb-3">THEMES</h2>
          </div>
        </div>
        
        <div class="row mb-5">
          <div class="col-lg-6 mb-4 mb-lg-0">
            <img src="${ctx}/resources/images/th11.png" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 h-100 jm-sticky-top ml-auto">
            <h3>엘리베이터</h3>
            <p class="mb-4">‘주차장’에서 자기 자신의 이름을 포함해 모든 과거의 기억을 잃은체 깨어난 당신. <br>
			머리에는 자루가 씌워지고, 손발이 묶인 상태에서 용케도 탈출에 성공하여 건물 안까지 침투하는데 성공했다.<br>
			 그리고 그 과정 중에 당신은 무엇인가를 알아내는데....?</p>
            <p class="mb-4"><a href="${ctx }/secretgarden/reservation" class="readmore">예 약 하 기</a></p>
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;방탈출 고인물에게는 추리까지 들어가서 오랜만에 색다른 느낌이였습니다...진짜 갓테마 존잼 사물함도 많아지고 <strong>직원분도 친절하셨어용</strong>&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/user10.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">js***</span>
                  <span class="position">
                  <span style="color:#F2CB61"><i class="fas fa-star"></i></span>
                  <span style="color:#F2CB61"><i class="fas fa-star"></i></span>
                  <span style="color:#F2CB61"><i class="fas fa-star"></i></span>
                  <span style="color:#F2CB61"><i class="fas fa-star"></i></span>
                  <span style="color:#F2CB61"><i class="fas fa-star"></i></span></span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row mb-5">
          <div class="col-lg-6 order-1 order-lg-2 mb-4 mb-lg-0">
            <img src="${ctx}/resources/images/th2.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 h-100 jm-sticky-top mr-auto order-2 order-lg-1">
            <h3>탈출하라 1988</h3>
            <p class="mb-4">시간여행을 연구하던 아버지가 의문의 사고로 돌아가신지 약 30년..<br> 
            어려서 아버지를 잃은 당신은 아버지의 길을 따라 평생을 타임머신 개발에 바쳐왔다. <br>
			1988년의 서울은 대체 어떤 모습이었을까? </p>
            <p class="mb-4"><a href="${ctx }/secretgarden/reservation" class="readmore">예 약 하 기</a></p>
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;개인적으로 1988이 제일 재밌는것 같아요ㅠ 입문자 두명포함 4명이서 갔는데 되게 재밌었어요. <strong>소품이나 스토리가 퀄리티가 있어서</strong> 다른방도 가보고싶어요!!!&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/user9.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">yuji***</span>
                  <span class="position"><span style="color:#F2CB61"><i class="fas fa-star"></i></span>
					 <span style="color:#F2CB61"><i class="fas fa-star"></i></span>
					 <span style="color:#F2CB61"><i class="fas fa-star"></i></span>
					 <span style="color:#F2CB61"><i class="fas fa-star"></i></span>
					 <span style="color:#F2CB61"><i class="fas fa-star"></i></span></span>
                </div>
              </div>
            </div>
          </div>
        </div>

           <div class="row mb-5">
          <div class="col-lg-6 mb-4 mb-lg-0">
            <img src="${ctx}/resources/images/th3.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 h-100 jm-sticky-top ml-auto">
            <h3>화성탐사선의 임무</h3>
            <p class="mb-4">(탈출하라 1988과 이어집니다)<br>
			스스로 개발한 타임머신을 타고 1988년 아버지의 자취방에 찾아간 당신. 시간여행을 계속 하기로 맘먹는다. 타임머신을 키고 '화성(Mars)'를 선택하자, 눈앞에서 타임포털이 펼쳐지게 된다. <br>
			이곳은.......화성.....?</p>
            <p class="mb-4"><a href="${ctx }/secretgarden/reservation" class="readmore">예 약 하 기</a></p>
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;매우 친절하게 스토리를 설명해주시고, <strong>힌트가 다양해서 좋았습니다. </strong>체력쓰는부분도 있어서 다이어트도 돼요</strong>&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/user10.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">js***</span>
                  <span class="position">
                  <span style="color:#F2CB61"><i class="fas fa-star"></i></span>
                  <span style="color:#F2CB61"><i class="fas fa-star"></i></span>
                  <span style="color:#F2CB61"><i class="fas fa-star"></i></span>
                  <span style="color:#F2CB61"><i class="fas fa-star"></i></span>
                  <span style="color:#F2CB61"><i class="fas fa-star"></i></span></span>
                </div>
              </div>
            </div>
          </div>
        </div>
          
          
          
          
          
          

      </div>
    </div>

    <div class="site-section bg-light">
      <div class="container">
         <div class="row mb-5 ">
          <div class="col-md-7 section-title text-center mx-auto">
            <span class="sub-title mb-2 d-block">Testimonials</span>
            <h2 class="title text-primary mb-3">Comment</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6 mb-4">
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;방탈출카페 10번 넘게 해봤는데 저는 여기가 제일 좋았어요 <strong>장치도 신기하고 방들을 신경써서 만든 티가 났어요</strong>&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/user7.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">spring***</span>
                  <span class="position">구글 한줄평</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 mb-4">
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;<strong>진짜 재밌어요..</strong> 하면서 깜짝깜짝 놀라는 부분도 있었어요&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/user6.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">summer12***</span>
                  <span class="position">네이버 한줄평</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mb-4">
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;개인적으로<strong> 제일 와보고싶었던 방탈출카페였습니다. </strong>탈출은 못했지만 정말 재밌었어요. 다음에 또올게요&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/user2.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">autumn3***</span>
                  <span class="position">네이버 한줄평</span>
                </div>
              </div>
            </div>
            
          </div>
          <div class="col-lg-6 mb-4">
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;문제에 억지스러움도 없고, <strong>인테리어와 소품이 완벽했어요~~</strong> 굿굿&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/user4.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">winter***</span>
                  <span class="position">네이버 한줄평</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    
    <div class="site-section" id="studio-section">
      <div class="container">

        <div class="row mb-5 ">
          <div class="col-md-7 section-title text-center mx-auto">
            <span class="sub-title mb-2 d-block">Photos</span>
            <h2 class="title text-primary mb-3">Coming soon</h2>
          </div>
        </div>
       
        <div id="posts" class="row no-gutter">
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon5.png" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2">&nbsp;6/1 open</span>
              <img class="img-fluid" src="${ctx}/resources/images/soon5.png">
            </a>
          </div>
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon1.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2">&nbsp;6/5 open</span>
              <img class="img-fluid" src="${ctx}/resources/images/soon1.jpg">
            </a>
          </div>

          <div class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon6.png" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2">&nbsp;6/5 open</span>
              <img class="img-fluid" src="${ctx}/resources/images/soon6.png">
            </a>
          </div>

          <div class="item design col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon2.png" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2">&nbsp;6/19 open</span>
              <img class="img-fluid" src="${ctx}/resources/images/soon2.png">
            </a>
          </div>

          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon3.png" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2">&nbsp;6/20 open</span>
              <img class="img-fluid" src="${ctx}/resources/images/soon3.png">
            </a>
          </div>

          <div class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon4.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2">&nbsp;7/1 open</span>
              <img class="img-fluid" src="${ctx}/resources/images/soon4.jpg">
            </a>
          </div>

   
        </div>
      </div>
    </div> 
    
    
    <div class="site-section" id="contact-section">
      <div class="container">
        <form action="" class="contact-form">

          <div class="section-title text-center mb-5">
            <span class="sub-title mb-2 d-block">Get In Touch</span>
            <h2 class="title text-primary">Contact Us</h2>
          </div>
		<div class="gmap">
	         <p align="center">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.341466153088!2d127.0264379151658!3d37.499863779810376!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca15831e2a919%3A0x5a24c247c604f45!2z7ISc7Jq47Yq567OE7IucIOqwleuCqOq1rCDsl63sgrzrj5kg6rCV64Ko64yA66GcOTbquLggMjA!5e0!3m2!1sko!2skr!4v1619352516557!5m2!1sko!2skr" width="100%" height="680" style="border:0;" allowfullscreen="" loading="lazy" ></iframe><br>
			</p>
		</div>

        </form>
      </div>
    </div> 
  
    
    
    <%@ include file="/resources/includes/footer.jsp" %>
    
    
    

 <script type="text/javascript" src="/resources/js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="/resources/js/popper.min.js"></script>
  <script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="/resources/js/owl.carousel.min.js"></script>
  <script type="text/javascript" src="/resources/js/aos.js"></script>
  <script type="text/javascript" src="/resources/js/jquery.sticky.js"></script>
  <script type="text/javascript" src="/resources/js/stickyfill.min.js"></script>
  <script type="text/javascript" src="/resources/js/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="/resources/js/isotope.pkgd.min.js"></script>
  <script type="text/javascript" src="/resources/js/jquery.fancybox.min.js"></script>
  <script type="text/javascript" src="/resources/js/main.js"></script>
 
  

  </body>
</html>