<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
<script src="https://kit.fontawesome.com/215ee1d5fa.js" crossorigin="anonymous"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		 
		  <script type="text/javascript">
		function updateCheck(){
			document.getElementById('#update').submit;
		}
    
        function changeForm(val){
            if(val == "-1"){
                location.href="${ctx}/secretgarden/main";
           /*  }else if(val == "0"){
                location.href="${ctx}/secretgarden/member/updateMember"; */
            }else if(val == "1"){
                location.href="${ctx}/secretgarden/member/deleteMember";
            }
        }
    	$(function(){
    		if(${msg ne null}){
    			alert('${msg}');
    		});
    		
    		if($("#pwForm").submit(function(){
    			if($("#userpw").val() !== $("#userpw2").val()){
    				alert("비밀번호가 일치하지 않습니다.");
    				$("#userpw").val("").focus();
    				$("#userpw2").val("");
    				return false;
    			}else if ($("#userpw").val().length < 8) {
    				alert("비밀번호는 8자 이상으로 설정해야 합니다.");
    				$("#userpw").val("").focus();
    				return false;
    			}else if($.trim($("#userpw").val()) !== $("#userpw").val()){
    				alert("공백은 입력이 불가능합니다.");
    				return false;
    			}
    		}));
    	})
        
    </script>
    
    </head>
  
<body>
<div class="container">
    <form class="form-horizontal" role="form" method="POST" action="${ctx}/secretgarden/member/updateMemberPost" id="pwForm">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2>회원정보 수정</h2>
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="name">Your ID</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-user"></i></div>
                        <input type="text" name="userid" class="form-control" id="userid"
                              readonly value="${login.userid}" required autofocus>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put name validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="name">Your Name</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-user"></i></div>
                        <input type="text" name="username" class="form-control" id="username"
                              value="${login.username}" required autofocus>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put name validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="email">Your E-Mail Address</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-at"></i></div>
                        <input type="text" name="email" class="form-control" id="email"
                               value="${login.email}" required autofocus>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put e-mail validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="password">Password</label>
            </div>
            <div class="col-md-6">
                <div class="form-group has-danger">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-key"></i></div>
                        <input type="password" name="userpw" class="form-control" id="userpw"
                               placeholder="Password" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                           <!--  <i class="fa fa-close"> Example Error Message</i> -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="password">Confirm Password</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem">
                            <i class="fa fa-repeat"></i>
                        </div>
                        <input type="password" name="userpw2" class="form-control"
                               id="userpw2" placeholder="Password" required>
                    </div>
                </div>
            </div>
        </div> 
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <button type="button" class="btn btn-success" onclick="location.href='${ctx}/secretgarden/main'"> 메인으로</button>
                <button type="submit" class="btn btn-primary" id="update" onclick="updateCheck()"> 완료</button>
                <button type="button" class="btn btn-danger" onclick="location.href='${ctx}/secretgarden/member/deleteMember'"> 회원 탈퇴</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
<%@ include file="/resources/includes/footer.jsp" %>