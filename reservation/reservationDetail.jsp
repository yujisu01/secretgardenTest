<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
<script src="https://kit.fontawesome.com/215ee1d5fa.js" crossorigin="anonymous"></script>

<!DOCTYPE html>
<html lang="en">

    <head>
     <%@ include file="/resources/includes/header.jsp" %>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Secret Garden</title>
        <!-- Favicon-->
		<!-- <link rel="icon" type="image/png" href="http://example.com/myicon.png"> -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
		<link rel="stylesheet" href="${ctx}/resources/css/bootstrap-datepicker.css">
		
		<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
		<script src="${ctx}/resources/js/bootstrap-datepicker.min.js"></script>
       <%--  <link rel="icon" type="${ctx}/resources/assets/image/x-icon" href="${ctx}/resources/assets/favicon.ico" /> --%>
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${ctx}/resources/css/style.css" rel="stylesheet" />
        <link href="${ctx}/resources/css/index.css" rel="stylesheet" />
         <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		
    </head>
        
<body>

  <form action="${ctx}/secretgarden/reservation/reservationDetail" method="post" id="detail_form">
    <!-- <input type='hidden' name='csrfmiddlewaretoken' value='1wHYZG5pPQpzfn9gLtqT2mUFxeTHwDAT' /> -->
    <input type="hidden" id="bookno" name="bookno">
    <input type="hidden" id="rdate" name="rdate">
  </form>

  <div id="booking_process_wrapper">
    <div class="subtitle">
      <!-- <span> <a class="toggle_button active"> ????????? ?????? </a> </span> -->
    </div>

    <div class="row">
      <div class="col-sm-12 col-md-6">
        <div id="pre_selected">
        <form action="${ctx }/secretgarden/reservation/reservationSelect" method="post" id="frm" name="frm">
          <input type="hidden" class="form-control" value="${book.bookno}" disabled>
          <label> ?????????(Room) </label>
          <input type="text" class="form-control" value="${book.bookroom}" disabled>
          <label> ????????????(Date) </label>
          <input type="text" class="form-control" value="${rdate}" disabled>
          
          <label> ????????????(Price) </label>
          <input type="text" class="form-control" value="48,000???" disabled id="book_price">
          <label> ????????????(Time)</label>
          <input type="text" class="form-control" value="${book.bookhour}" disabled id="book_hour">
          <label> ????????????(Duration) </label>
          <input type="text" class="form-control" value="${book.bookduration}???" disabled id="book_duration">
		
         </form>
        </div>
      </div>
      <div class="col-sm-12 col-md-6">
        <div id="user_inputs">
	<form action="${ctx }/secretgarden/reservation/reservationConfirmPost" method="post" id="frm" name="frm">
          <label> Name <span class="essential_field"> * </span></label>
          <input type="text" class="form-control"  id="nameField" name="namefield">
          <label> ?????????(Phone) <span class="essential_field"> * </span></label>
          <input type="text" class="form-control"  id="phoneField" name="phonefield">
          <label> ?????????(Email) <span class="essential_field"> * </span></label>
          <input type="text" class="form-control" id="emailField" name="emailfield">
          <label> ?????? ????????????(Password) <span class="essential_field"> * </span></label>
          <input type="password" class="form-control" id="pwField" name="pwfield">
          <input type="hidden" class="form-control" id="bookno" name="bookno" value="${book.bookno}">
          <input type="hidden" class="form-control" id="rdate" name="rdate" value="${rdate}">

          <label> ????????? ?????? ????????? 10,000?????? ??????????????? ???????????????. </label><br>
          <!-- <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" id="participantsMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
              2 ???
              <span class="caret"></span>
            </button>
            <input type="hidden" id="gameFeeId" value="128">
            <ul class="dropdown-menu" aria-labelledby="participantsMenu">
              <li>
                <a class="numberOfPeople" id="people_128" people="2" price="24000"> 2 ???</a>
              </li>
              <li>
                <a class="numberOfPeople" id="people_129" people="3" price="24000"> 3 ???</a>
              </li>
              <li>
                <a class="numberOfPeople" id="people_130" people="4" price="24000"> 4 ???</a>
              </li>
              <li>
                <a class="numberOfPeople" id="people_131" people="5" price="24000"> 5 ???</a>
              </li>
              <li>
                <a class="numberOfPeople" id="people_132" people="6" price="24000"> 6 ???</a>
              </li>
              
            </ul>
          </div> -->

          <label> ????????????(Memo) </label>
          <textarea type="text" class="form-control" ng-model="comment"></textarea>
		
         <!--  <div id="terms">
            <input type="checkbox" id="term_checkbox" name="term_checkbox" disabled>
            <span>
              <a href="/tos/" class="yellow fancybox fancybox.ajax" id="toslink"> ???????????? ???????????? </a>??? ????????? ???????????????.</span>
          </div>

           -->
          <input type="submit" class="book_btn" id="submit_booking" value="????????????" >
          <input type="button" class="book_btn" id="goback_booking" value="????????????" onclick="location.href='${ctx}/secretgarden/main'">
      </form>
 
        </div>
      </div>

    </div>

  </div>





</body>
</html>

<%@ include file="/resources/includes/footer.jsp" %>