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
		
		<script>
			function btnConfirm(){
				frm1.action="${ctx}/secretgarden/reservation/reservationSelect";
				
				frm1.submit();
				return true; 
				
			}
		
			$(document).ready(function(){
				$("#btnDelete").click(function(){
					if(confirm("예약을 취소하시겠습니까?")){
						/* document.form1.action = "${ctx}/secretgarden/reservation/reservationCancel"; */
						document.frm1.submit();
						alert("예약이 취소되었습니다.");
					}
				});
			});
			
			
		</script>
		
		<style>
			#inputDiv{
				padding-top: 80px;
				text-align: center;
			}
			#form{
				text-align: center;
			}
			#buttons{
				text-align: center;
				padding-top: 100px;
				padding-bottom: 100px;
			
			}
			.h2	{
			padding-bottom: 90px;
			font-family:'Nanum Gothic', sans-serif;
			}
		</style>
		
    </head>
        
<body>
<%-- <%@ include file="../secretgarden/reservation/reservationDetail" %> --%>

	
<div id="inputDiv">
<h3>예약내역 확인</h3>
<form action="${ctx}/secretgarden/reservation/reservationCancel" method="Post" name="frm1">
<div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">예약 이메일</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" name="emailfield">
    </div>
  </div>
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-2 col-form-label">예약 비밀번호</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="pwd" name="pwfield">
    </div>
  </div>
   <div id="buttons">
   <!-- alert창 으로 확인 띄우기 -->
	  <input type="button" class="btn btn-info" id="Confirm" value="예약 내역확인" onclick="btnConfirm()">
	  <input type="button" class="btn btn-info" id="btnDelete" name="cancelfrm" value="예약취소">
          <input type="button" class="btn btn-info" id="goback_booking" value="메인으로" onclick="location.href='${ctx}/secretgarden/main'">
          <div style="color: red;">${message}</div>
          
  </div>
  </form>
 </div>
 
 
</body>
<%@ include file="/resources/includes/footer.jsp" %>
</html>