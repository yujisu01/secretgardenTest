
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
				 <%
	 
    String clientId = "IJTNwx_73vMqJz4i3nvW";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:9090/secretgarden/member/login", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
  <%@ include file="/resources/includes/header.jsp" %>
<!DOCTYPE html>
<html lang="en">

 <head>
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
      
        <html>
<head>
<title>로그인</title>
<link href="${ctx}/resources/css/login.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/215ee1d5fa.js" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>
	<div class="bg-img">
		<div class="content">
		<h2>Login</h2>
			<form action="${ctx }/secretgarden/member/loginPost" method="post">
			<fieldset>
				<div class="field">
					<span class="fa fa-user"></span>
					 	<input type="text" name="userid" required placeholder="ID">
					 	</div>
					 		<div class="field space">
					<span class="fa fa-lock"></span>
					 	<input type="password" name="userpw" class="password" required placeholder="Password">
					 	<span class="show">show</span>
					 	</div>
					 	</fieldset>
					 	<div class="pass">
					 		<!-- <a href="#">Forgot Password?</a> -->
					 	</div>
					 		<div class="field">
					 	<input type="submit" value="LOGIN">
					 	<input type="button" value="JOIN IN" onclick="location='${ctx }/secretgarden/member/insertMember'">
					 	</div>
					 	<div class="login">Or login with</div>
					 	

			<script>
	const pass_field=document.querySelector('.password');
	const show_btn=document.querySelector('.show');
	show_btn.addEventListener('click',function(){
		if(pass_field.type === "password"){
			pass_field.type = "text";
			show_btn.style.color = "#3498db";
			show_btn.textContent ="HIDE";
		}
		else{
			pass_field.type = "password";
			show_btn.style.color = "#222";
			show_btn.textContent ="SHOW";
		}
	});
</script>	
<div class="link">
  <a id="naver-login-btn" href="<%=apiURL%>"><img height="50" src="${ctx}/resources/images/naver.png" width="221px" /></a>
		
		
		<a id="kakao-login-btn"></a>
   
     <script type='text/javascript'>
        //<![CDATA[
        // 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('9a4349e98c9e9af46e17cdd9b3f12456');
        // 카카오 로그인 버튼을 생성합니다.
        Kakao.Auth.createLoginButton({
            container: '#kakao-login-btn',
            success: function (authObj) {
                alert(JSON.stringify(authObj));
            },
            fail: function (err) {
                alert(JSON.stringify(err));
            }
        });
      //]]>
    </script>
		</div>		
		</form>
			</div>
				</div>
					
	
				
</body>
</html>
</html>


<%@ include file="/resources/includes/footer.jsp" %>