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
			#frm{
				text-align: center;
				padding-bottom: 30px;
				padding-top: 30px;
				
			}
			#gameList{
				padding-left: 50px;
				padding-right: 50px;
			}
		</style>
		
    </head>

        <header class="listhead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">예약하기</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                    </div>
                </div>
            </div>
        </header>
        <!-- header close -->
		
			<body id="page-top">
      	<div id="frm">
	<!-- 시작시 기본 날짜 설정은 value를 이용 -->
		<form name="frm" action="${ctx}/secretgarden/reservation/reservationDetail?bookno=${rDto.bookno}" method="get">
				<!-- <input type="text" name="rdate" id="datePicker" class="form-control" value="날짜를 선택해주세요" readonly id="datepicker_bbs" > -->
				
				<input type="text" name="rdate" class="datePicker" value="날짜를 선택해주세요" readonly id="datePicker_bbs">
			</form>
		<%-- <form name="reservation" action="${ctx}/secretgarden/reservation/reservationSelect">
			<input type="hidden" name="rdate" class="datePicker">
		</form> --%>
		<button type="button" class="btn btn-secondary btn-sm" onclick="location.href='${ctx}/secretgarden/reservation/reservationConfirm'">예약확인</button>
	</div>
<div id="gameList">
  <table class="table">
      <thead>
        <tr>
          
          <!--  <th> 순서 </th> -->
          <th> 게임룸 </th>
          <th> 시작시간 </th>
          <th> 소요시간 </th>
          <th> 예약가능인원 </th>
          <th> </th>
          <th> 예약상태 </th>
        </tr>
      </thead>
      <tbody>
      
       	<c:forEach items="${listAll}" var="rDto">
       		<tr>
       			 <%-- <td>${rDto.bookno}</td>  --%>
       			 
       			<td>${rDto.bookroom}</td>
       			<td>${rDto.bookhour}</td>
       			<td>${rDto.bookduration}</td>
       			<td>${rDto.bookpeople}</td>
       			<td></td>
       			<td><button onclick="javascript:rese(${rDto.bookno}); reserveBtnClick(${rdate});" style="cursor: pointer;" id="reseButton" class="btn btn-info">
					예약하기
				</button></td>
       		</tr>
       	</c:forEach>
       
       	
       </tbody>
      </table>
      </div>
  <!--  </body> -->
        
        <script>
		
		/*  function dateCheck(){
			 var datepicker = $('#datePicker.rdate').val;
			 
			 if(datepicker ==''){
				 alert("날짜를 선택해주세요!");
			 }
		 } */
		 /* function reservationForm(url) {
				var form = document.createElement("form");
				var parentNoInput = document.createElement("input");
				var rdate = document.getElementsByName("rdate")[0].value;
				var bookno = document.getElementsByName("bookno")[0].value;
				//alert(rdate);
				form.setAttribute("method","get");
				form.setAttribute("action",url);
				
				parentNoInput = document.createElement("input");
				parentNoInput.setAttribute("type","hidden");
				parentNoInput.setAttribute("name","bookno");
				parentNoInput.setAttribute("value",bookno);
				form.appendChild(parentNoInput);
				
				parentNoInput = document.createElement("input");
				parentNoInput.setAttribute("type","hidden");
				parentNoInput.setAttribute("name","rdate");
				parentNoInput.setAttribute("value",rdate);
				form.appendChild(parentNoInput);
				
				document.body.appendChild(form);
				form.submit();
			}
		   */
		   
	$(function() {	
		$('#datePicker').datepicker({
			SimpleDateFormat: Date,
			mindate:0,
			dateFormat: "yy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		    startDate: '-1d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		    endDate: '+10d',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
		    autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		    calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		    clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
		    closeText:'닫기',
		    cancelLabel: 'Cancel',
		    datesDisabled : ['2019-06-24','2019-06-26'],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
		    daysOfWeekDisabled : [0,6],	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
		    daysOfWeekHighlighted : [3], //강조 되어야 하는 요일 설정
		    disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		    immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
		    multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
		    multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
		    templates : {
		        leftArrow: '&laquo;',
		        rightArrow: '&raquo;'
		    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
		    showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
		    title: "테스트",	//캘린더 상단에 보여주는 타이틀
		    todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
		    toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		    weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
		    language : "ko"	,//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
         onSelect:function(d){
					alert(d+" 선택되었습니다");
					  var arr=d.split("-");
			            var year=arr[0];
			            var month=arr[1];
			            var day=arr[2];
			            
			            $("#year").text(year);
			            $("#month").text(month);
			            $("#day").text(day);
			           
			            var rdate=new Date($("#datePicker_bbs").datepicker({
			            	SimpleDateFormat:"yyyy-mm-dd"}).val());
				}
		 
		});//datepicker end
		$("#datePicker_bbs").datepicker({ 
 			SimpleDateFormat: Date, 
			dateFormat: "yy-mm-dd",
			minDate: 0,
			 onSelect:function(d){
					alert(d+" 선택되었습니다");
					  var arr=d.split("/");
			            var year=arr[0];
			            var month=arr[1];
			            var day=arr[2];
			            
			            $("#year").text(year);
			            $("#month").text(month);
			            $("#day").text(day);
			           
			            var rdate=new Date($("#datePicker_bbs").datepicker({
			            	dateFormat:"yyyy-MM-dd"}).val());
				}
			
		});
	});//ready end
	
     $('#datePicker').datepicker({
 		format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
 		startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		 language : "ko",	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
 		});//여기까지가 기본 사용 방법
            /*  $().on(picker_event, function(e) {
                  //picker_event는 "이벤트명" 이런 식으로 적는다.
                  //하고 싶은 행동
             } */
		/* $('#datepicker_bbs').datepicker({ minDate: 0}); */
		$('#datePicker').datepicker({ minDate: 0});
		 $('#datePicker_bbs').datepicker("setDate", "today");
		 $('#datePicker').datepicker('getDate');
		 
		function rese(no) {
			var rdate = document.getElementById("datePicker_bbs").value;
			
			location.href="${ctx}/secretgarden/reservation/reservationDetail?bookno="+no+"&rdate="+rdate;
		}
/* 		function noPreviousdate(date){ 
			 
		    if (date < new Date()) 
		 
		        return [false]; 
		 
		    return [true]; 
		 
		}  */
		function reserveBtnClick(rdate){
			${(input.rdate).attr("value",rdate)}
		}

	</script>
        
  <%@ include file="/resources/includes/footer.jsp" %>