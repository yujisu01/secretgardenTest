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
		
		<script type="text/javascript">
		/* $(function(){
    		if(${msg ne null}){
    			alert('${msg}');
    		}); */
    		
		function deleteCheck(){
			document.getElementById('#delete').submit;
		}
    		var result = '${result}';
    	 	
    	 	if(result === "removeFalse") {
    	 		alert("비밀번호를 다시 입력해주세요.");
    	 	}
    	 	if(result ==="removeOK"){
    	 		alert("회원탈퇴가 완료되었습니다. 다음에 만나요");
    	 	}
    	 
		
	      
		</script>
		
    </head>
    <body id="page-top">
        <!-- Navigation-->
      
		<body>
		<div class="container">
    <form class="form-horizontal" role="form" method="POST" action="${ctx}/secretgarden/member/deleteMember">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2>회원탈퇴</h2>
                <hr>
            </div>
        </div>
		  <div class="row">
		            <div class="col-md-3 field-label-responsive">
		                <label for="email">Your ID</label>
		            </div>
		            <div class="col-md-6">
		                <div class="form-group">
		                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
		                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-at"></i></div>
		                        <input type="text" name="userid" class="form-control" id="userid"
		                               readonly value="${login.userid}" required autofocus>
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
		                          <!--   <i class="fa fa-close"> Example Error Message</i> -->
		                        </span>
		                </div>
		            </div>
		        </div>
         <div class="mb-3">
			  <label for="exampleFormControlTextarea1" class="form-label">탈퇴하시는 이유가 무엇인가요?</label>
				  <select class="form-select" aria-label="Default select example">
					  <option selected>탈퇴이유</option>
					  <option value="1">서비스가 마음에 안든다</option>
					  <option value="2">재미가 없다</option>
					  <option value="3">가입한지도 몰랐다</option>
					  <option value="4">기타의견을 자유롭게 적어주세요</option>
				</select>
			  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
			 </div>
			   <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <button type="button" class="btn btn-success" onclick="location.href='${ctx}/secretgarden/main'"> 메인으로</button>
                <button type="submit" class="btn btn-danger" id="delete" onclick="deleteCheck()">탈퇴하기</button>
            </div>
        </div>
        </form>
      
  	</div>
</body>
<%@ include file="/resources/includes/footer.jsp" %>
</html>