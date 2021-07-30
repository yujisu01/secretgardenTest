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
		<style type="text/css">
			#buttons{
				text-align: center;
				padding-bottom: 100px;
			}
			#form{
				padding-left: 50px;
				padding-right: 50px;
				padding-top: 60px;
			}
			
		</style>
		
    </head>
    
<body>

 <div id="form">
    <form>
	  <div class="row mb-3">
	    <label for="rdate" class="col-sm-2 col-form-label">예약날짜</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="rdate" readonly="readonly" value="${rDto.rdate}">
	    </div>
	  </div> 
	  <div class="row mb-3">
	    <label for="inputname" class="col-sm-2 col-form-label">예약자명</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="namefield" readonly="readonly" value="${rDto.namefield}">
	    </div>
	  </div>
	 <!--  <div class="row mb-3">
	    <label for="inputphone" class="col-sm-2 col-form-label">휴대폰번호</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="phonefield" readonly="readonly">
	    </div>
	  </div>
	  <div class="row mb-3">
	    <label for="inputemail" class="col-sm-2 col-form-label">이메일</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="emailfield" readonly="readonly">
	    </div>
	  </div> -->
	  <div class="row mb-3">
	    <label for="inputroom" class="col-sm-2 col-form-label">룸이름</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="bookroom" readonly="readonly" value="${book.bookroom}">
	    </div>
	  </div>
	  <div class="row mb-3">
	    <label for="inputtime" class="col-sm-2 col-form-label">시작시간</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="bookhour" readonly="readonly" value="${book.bookhour}">
	    </div>
	  </div>
	  <div class="row mb-3">
	    <label for="inputtime" class="col-sm-2 col-form-label">참가요금</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="bookhour" readonly="readonly" value="48000원">
	    </div>
	  </div>
	    <div class="row mb-3">
      	 <b>추가 안내사항</b>
        <textarea type="text" rows="10" cols="200" readonly="readonly">
	■ 예약
	   - 사이트를 통한 실시간 예약이 가능하며, 단체예약문의는 단체예약 담당자에게 전화 문의 부탁드립니다.
	
	■ 모든 예약은 예약 하시기 전 날짜와 시간/ 테마명을 한번 더 확인해 주시기 바랍니다
	
	■ 모든 룸은 정시 입실/퇴실됩니다.
	   (10분 전 방문 부탁드립니다 : 룸 이용안내)
	
	■ 위약금발생
	     - 당사는 아름다운 예약문화 정착에 동참하며 '노쇼(No-Show 미방문)'에 대하여 강력히 제재하는 바입니다. 
	       '노쇼'는 타인의 이용기회를 박탈하며, 사업주에게 악영향을 주는 사회질서 문란행위입니다. 바른 예약문화를 정착시킵시다.
	     - 1회 이상 '노쇼' 고객은 더 이상 사전예약을 받지 않습니다. 무통장 전액결제 후 각 지점으로 전화 문의 바랍니다.
	     - '노쇼' 건은 예약금 전액 환불이 불가합니다. 게임시작 하루 전 필히 취소 부탁드립니다.
	     - 예매하신 시간보다 늦게 도착하실 경우, 사전에 연락주시길 바랍니다. 시작시간 5분이 지나도 연락없이 미입장시
	       '노쇼'로 간주되며, 타 대기분이 입장하실 수 있습니다.
	
	■ 변경(날짜변경/ 시간변경/ 인원변경)
	     - 날짜/ 시간변경이 따로 없습니다. 전화를 통한 취소신청 후 재예약부탁드립니다.
	     - 무통장입금건은 기존예약건 취소요청과 함께 재예약하신 후 해당 지점으로 전화하시면 예약금입금 내용을 옮겨드립니다.
	     - 인원 변경 : 입장 전까지 예약하신 테마룸의 이용 인원 변경은 자유롭게 가능합니다. 방문시 변경된 인원을 말씀해주시면 됩니다.
	     - 인원 추가시 10,000원의 추가요금이 발생합니다.

	■ 취소
	     - 취소신청시 게임시작 24시간 이전 건만 환불됩니다.
	     - 취소신청은 'RESERVATION' 메뉴 클릭 후 '예약확인/ 취소' 란에서 가능합니다.
	     - 카드예약건의 예약금은 자동환불 됩니다.(카드사의 처리기간에 따라 2-3일 소요됩니다.)
	     - 무통장입금건은 취소신청 후 Q&A에 '계좌취소건' 이라는 메모와 함께 환불받을 계좌번호를 남겨주세요.
	     - 당일예약건을 포함 게임시작 당일에는 취소 및 환불이 불가합니다. 신중한 예매부탁드립니다.
        </textarea>
	  </div>
	  
  </form>
  </div>
 
  <div id="buttons">
	  
          <input type="button" class="btn btn-info" id="goback_booking" value="메인으로" onclick="location.href='${ctx}/secretgarden/main'">
  </div>
  

</body>
<%@ include file="/resources/includes/footer.jsp" %>
</html>