<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
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
        <link rel="icon" type="${ctx}/resources/assets/image/x-icon" href="${ctx}/resources/assets/favicon.ico" />
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
    </head>
    <body id="page-top">
        <!-- Navigation-->
      
        
        <body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="${ctx}/"><b>Secret Garden</b></a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <%-- <p class="login-box-msg"><a href="${ctx}/">개인정보 이용약관 보기</a></p> --%>

      <form action="${ctx }/secretgarden/member/insertMemberPost" method="post" id="frm" name="frm">
        <div class="input-group mb-3">
          <input type="text" id="userid" name="userid" class="form-control" placeholder="아이디">
          <div class="input-group-append">
            <div class="input-group-text">
              <button type="button" class="btn- btn-default" id="idChk" onclick='fn_idChk();'>중복확인</button>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" name="username" id="username" class="form-control" placeholder="이름">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email" name="email" id="email" class="form-control" placeholder="이메일">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" id="userpw" name="userpw" class="form-control" placeholder="비밀번호">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" id="userpw2" class="form-control" placeholder="비밀번호 확인">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
        <b>개인정보 수집 및 이용 동의</b>
        <textarea type="text" rows="5" cols="200" height=100px readonly="readonly">제1장 총칙
				제1조 (목적)
				이 약관은 행정안전부의 정부혁신 공식 홈페이지 ‘시크릿가든’ (이하 "시크릿가든”라 합니다) 가 제공하는 모든 서비스(이하 "서비스"라 합니다)를 이용함에 있어 이용자와 "시크릿가든"간의 권리·의무 및 책임사항과 기타 필요한 사항을 정하는 데 목적이 있습니다.
				
				제2조 (약관의 효력 및 변경)
				"시크릿가든"는 귀하가 본 약관 내용에 동의하는 경우, "시크릿가든"의 서비스 제공 행위 및 귀하의 서비스 사용 행위에 본 약관이 우선적으로 적용됩니다. "시크릿가든"는 본 약관을 사전 고지 없이 변경할 수 있고, 변경된 약관은 이용자가 직접 확인할 수 있도록 서비스 화면에 공지하며, 공지와 동시에 그 효력이 발생됩니다. 이용자가 변경된 약관에 동의하지 않는 경우, 이용자는 본인의 회원등록을 취소(회원탈퇴)할 수 있으며 계속 사용의 경우는 약관 변경에 대한 동의로 간주됩니다.
				
				제3조 (약관 외 준칙)
				이 약관에 명시되지 않은 사항에 대해서는 전기통신기본법, 전기통신사업법, 정보통신망이용촉진및정보보호등에관한법률, 방송통신심의위원회 심의규정, 정보통신 윤리강령, 프로그램 보호법 등 기타 대한민국의 관련법령과 상관습에 의합니다.
				
				제4조 (용어의 정의)
				① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
				
				1. 이용자 : 이 약관에 따라 "시크릿가든"가 제공하는 서비스를 받는자
				2. 가입 : “시크릿가든”가 제공하는 신청서 양식에 해당 정보를 기입하고, 이 약관에 동의하여 서비스 이용계약을 완료시키는 행위
				3. 회원 : "시크릿가든"에 개인정보 등 관련 정보를 제공하여 회원등록을 한 자로서, 일반회원과 정부혁신담당 공직자 회원으로 나뉨
				4. 비밀번호 : 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합
				5. 이용해지 : "시크릿가든" 또는 회원이 서비스 이용 이후 그 이용계약을 종료시키는 의사표시
				② 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별 안내에서 정하는 바에 의합니다.
				
				제2장 서비스 이용계약
				제5조 (이용계약의 성립)
				이용계약은 이용자가 약관내용을 동의하고 "시크릿가든"에서 제공하는 소정의 회원 가입신청 양식에서 요구하는 사항을 기록하여 가입을 완료한 후 "시크릿가든"가 회원가입을 승낙하면 성립됩니다.
				제6조 (이용계약의 유보와 거절)
				① "시크릿가든"는 다음 각 호에 해당하는 이용계약에 대하여는 그 제한 사유가 해소될 때까지 일부 서비스 이용을 제한하거나 가입을 제한할 수 있습니다.
				1. 신청서의 내용이 허위(차명 등)인 것으로 판명되거나, 그러하다고 의심할만한 합리적인 사유가 발생할 경우
				2. 사회의 안녕 질서 또는 미풍양속을 저해할 목적으로 신청한 경우
				3. 기타 "시크릿가든"가 정한 이용계약 요건에 미비 되었을 경우
				② "시크릿가든"는 다음에 해당하는 경우 그 사유가 해소될 때까지 이용계약 성립을 유보할 수 있습니다.
				1. 서비스 관련 제반 용량이 부족한 경우
				2. 기술상 장애 사유가 있는 경우
				
				제7조 (계약사항의 변경)
				회원은 회원정보관리를 통해 언제든지 자신의 정보를 열람하고 수정할 수 있습니다. 회원은 이용신청 시 기재한 사항이 변경되었을 때에는 수정을 하여야 하며, 수정하지 아니하여 발생하는 문제의 책임은 회원에게 있습니다.
				
				제8조 (회원정보 사용에 대한 동의)
				① 회원의 개인정보는 [공공기관의 개인정보보호에 관한 법률]에 의해 보호됩니다.
				② 회원 정보는 다음과 같이 사용, 관리, 보호됩니다.
				
				1. “시크릿가든”는 서비스 제공과 관련해서 수집된 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 귀하가 “시크릿가든”에 제공한 개인정보를 스스로 공개한 경우에는 그러하지 않습니다.
				2. 개인정보의 관리 : 귀하는 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서 수시로 귀하의 개인정보를 수정/삭제할 수 있습니다.
				3. 개인정보의 보호 : 귀하의 개인정보는 오직 귀하만이 열람/수정/삭제 할 수 있으며, 이는 전적으로 귀하의 ID와 비밀번호에 의해 관리되고 있습니다. 따라서 타인에게 본인의 ID와 비밀번호를 알려주어서는 안되며, 작업 종료시에는 반드시 로그아웃 하고 웹브라우저의 창을 닫아주시기 바랍니다.
				4. 회원이 이 약관에 따라 이용신청을 하는 것은, 신청서에 기재된 회원정보를 "시크릿가든"가 수집, 이용하는 것에 동의하는 것으로 간주됩니다.
				
				제3장 서비스 제공 및 이용
				제9조 (서비스 이용)
				① "시크릿가든"는 회원의 이용신청을 수락한 때부터 서비스를 개시합니다. 단, 일부 서비스의 경우에는 지정된 일자부터 서비스를 개시합니다.
				② 서비스의 이용 시간은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, "시크릿가든"의 업무상 또는 기술상의 이유, 정기점검 등으로 서비스가 일시 중지될 수 있습니다. 이러한 경우 "시크릿가든"는 사전 또는 사후에 이를 공지합니다.
				③ 회원에 가입한 후라도 일부 서비스 이용 시 서비스 제공자의 요구에 따라 특정 회원에게만 서비스를 제공할 수도 있습니다.
				④"시크릿가든"는 서비스를 일정범위로 분할하여 각 범위별로 이용가능 시간을 별도로 정할 수 있습니다. 이 경우 그 내용을 사전에 공지합니다.
				
				제10조 (서비스의 변경, 중지 및 정보의 저장과 사용)
				① 이용자는 "시크릿가든"에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 국가의 비상사태, 정전, "시크릿가든"의 관리범위 외의 서비스 설비 장애 및 기타 불가항력에 의하여 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실에 대해 "시크릿가든"가 아무런 책임을 지지 않음에 동의합니다.
				② "시크릿가든"가 정상적인 서비스 제공의 어려움으로 인하여 일시적으로 서비스를 중지하여야 할 경우에는 서비스 중지 1주일 전에 고지 후 서비스를 중지할 수 있으며, 이 기간동안 회원이 고지내용을 인지하지 못한데 대하여 "시크릿가든"는 책임을 부담하지 아니합니다. 부득이한 사정이 있을 경우 위 사전 고지기간은 감축되거나 생략될 수 있습니다. 또한 위 서비스 중지에 의하여 본 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 있을 경우에 대하여도 "시크릿가든"는 책임을 부담하지 아니합니다.
				③ "시크릿가든"는 사전 고지 후 서비스를 일시적으로 수정, 변경 및 중단할 수 있으며, 이에 대하여 회원 또는 제3자에게 어떠한 책임도 부담하지 아니합니다.
				④ "시크릿가든"의 사정으로 서비스를 영구적으로 중단하여야 할 경우 제2항을 준용합니다. 다만, 이 경우 사전 고지기간은 1개월로 합니다.
				⑤ "시크릿가든"는 이용자가 이 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 제한 및 중지할 수 있습니다. 이 경우 "시크릿가든"는 이용자의 접속을 금지할 수 있으며, 이용자가 게시한 내용의 전부 또는 일부를 임의로 삭제할 수 있습니다.
				⑥ 장기간 휴면 회원인 경우 안내 메일 또는 공지사항 발표 후 1주일간의 통지 기간을 거쳐 서비스 사용을 중지할 수 있습니다.
				
				제11조 (정보의 제공 및 광고의 게재)
				① "시크릿가든"는 회원이 서비스 이용 중 필요가 있다고 인정되는 다양한 정보 및 광고에 대해서는 E-mail이나 서신우편물, 전화, SMS(휴대폰 문자메시지), 메신저 등의 방법으로 회원에게 제공할 수 있으며, 만약 원치 않는 정보를 수신한 경우 회원은 이를 수신거부 할 수 있습니다.
				② "시크릿가든"는 서비스의 운용과 관련하여 서비스화면, 홈페이지, 전자우편 등에 홍보물 및 광고 등을 게재할 수 있으며, 서비스를 이용하고자 하는 회원 및 이용자가 이에 대하여 동의하는 것으로 간주합니다.
				③ "시크릿가든"는 서비스 상에 게재되어 있거나 서비스를 통한 광고주와의 판촉활동에 회원이 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않습니다.
				
				부 칙
				① 이 약관은 2020년 8월 14일부터 적용합니다.
				
				② 2018년 9월 17일부터 시행되던 종전의 약관은 본 약관으로 대체합니다 </textarea>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="terms" name="terms" value="agree" checked="checked">
              <label for="agreeTerms">
            <b> (필수)<strong>개인정보 수집 및 이용</strong>에 동의합니다.</b>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
           <input type="button" id="confirm" class="btn btn-lg btn-success btn-block" value="Register" onclick="joinConfirm();" />
            <input type="button" class="cancel btn-danger btn-block" value="Cancel"/>
          </div>
          <!-- /.col -->
        </div>
        <input type="hidden" id="idx" value="0">
      </form>

     <%--  <a href="${ctx}/member/login" class="text-center">I already have a membership</a> --%>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->


<script>


function fn_idChk(){
	var idx = document.getElementById("idx").value;
	/* alert("idx"+idx); */
	$.ajax({
		url : "${ctx}/secretgarden/member/idcheck",
		type : "post",
		dataType : "json",
		data : {"userid" : $("#userid").val()},
		success : function(data){
			if(data == 1){
				alert("중복된 아이디입니다.");
			}else if(data == 0){
				document.getElementById("idx").value= "1";
/* 				$("#idChk").attr("value", true);
 */				alert("사용가능한 아이디입니다.");
			}
		}
	})
}

/* function checkPw(){

	 var pw = $("#userpw").val();
	 var num = pw.search(/[0-9]/g);
	 var eng = pw.search(/[a-z]/ig);
	 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

	 if(pw.length < 8 || pw.length > 20){

	  alert("비밀번호를 8자리 ~ 20자리 이내로 입력해주세요.");
	  return false;
	 }else if(pw.search(/\s/) != -1){
	  alert("비밀번호는 공백 없이 입력해주세요.");
	  return false;
	 }else if(num < 0 || eng < 0 || spe < 0 ){
	  alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
	  return false;
	 }else {
		console.log("통과"); 
	    return true;
	 }

	} */
function joinConfirm() {
    
    var userid = $("#userid").val();
    var userpw = $("#userpw").val();
    var userpw2 = $("#userpw2").val();
    var username = $("#username").val();
    var email = $("#email").val();
 	var idx = document.getElementById("idx").value;
	 
    if(userid.length == 0){
        alert("아이디를 입력해 주세요"); 
        $("#userid").focus();
       return false;
    }
    
    if(username.length == 0){
        alert("이름을 입력해주세요");
        $("#username").focus();
        return false;
    }
    
    if(email.length == 0){
        alert("이메일을 입력해주세요");
        $("#email").focus();
        return false;
    }
    if(userpw.length == 0){
        alert("비밀번호를 입력해 주세요"); 
        $("#userpw").focus();
        return false;
    }
 
    if(userpw != userpw2){
        alert("비밀번호가 서로 다릅니다. 비밀번호를 확인해 주세요."); 
        $("#userpw2").focus();
        return false; 
    }
    if(idx==0){
		alert("아이디 중복체크를 해주세요.");
		return;
    }
    if (!$("input:checked[name='terms']").is(":checked")){ 
    	alert("개인정보 이용약관에 동의해 주세요"); 
    	$("#terms").focus(); 
    	return; 
    }
 
    
    else if(confirm("회원가입을 하시겠습니까?")){
    	
        alert("회원가입을 축하합니다");
        $("#frm").submit();
    }
    
} 
  /*   $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    }); */
    
    /* function pwConfirm() {
    	 
    		var userpw = document.getElementById('userpw').value;	
    		var userpw2 = document.getElementById('userpw2').value;

    		
    		if(userpw != userpw2){
    			alert("비밀번호가 일치하지 않습니다.");
    		}else{
    			document.getElementById('register').submit();
    			alert("회원가입 성공");
    	
			}
    	} */
    	
</script>
<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cancel").on("click", function(){
				
				location.href = "${ctx }/secretgarden/member/login"
						    
			});
		
			/* $(".submit").on("click", function(){
				if($("#userId").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return false;
				}
				if($("#userpw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userpw").focus();
					return false;
				}
				 if(insertMember.username.value=="") {
			           alert("이름을 입력해 주세요");
			           insertMember.username.focus();
			           return false;
			       }
				if($("#email").val()==""){
					alert("이메일을 입력해주세요.");
					$("#email").focus();
					return false;
				}
			}); */
			
				
			
		})
	</script>
</body>
        
        
        
        
        
 <%@ include file="/resources/includes/footer.jsp" %>