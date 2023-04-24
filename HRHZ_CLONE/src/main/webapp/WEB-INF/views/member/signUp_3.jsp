<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="/images/favicon48.ico">
	<title>회원가입 페이지_이메일 가입</title>
	<link rel="stylesheet" href="../../css/common/reset.css" />
	<link rel="stylesheet" href="../../css/common/header_footer.css" />
    <link rel="stylesheet" href="../../css/member/signupStyle_3.css">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500&display=swap" rel="stylesheet" />
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>

	<div class="background">
		<div class="outerWrapper">
			<div class="formContainer">
				<form class="form1" action="/signup" method="post">
					<!-- singupTitle -->
					<div class="signupTitle">이메일 가입</span>
						<span class="signupOrder">
							<span class="signupOrderInactive">본인인증하기</span>
							<img src="./img/step-right-arrow-inactive.png" alt="inactiveImg">
							<span class="signupOrderInactive">약관 동의</span>
							<img src="./img/step-right-arrow.png" alt="activeImg">
							<span class="signupOrderActive">이메일 가입</span>
						</span>
						<br>
					</div>

					<div class="signupText">로그인에 사용할 이메일과 비밀번호를 입력해 주세요.</div>

					<!-- 이메일, 비밀번호, 비밀번호 확인-->
					<div class="inputContainer">
						<label for="email">이메일</label> <input type="email" id="email" required> 
						<span class="underline"></span>
					</div>

					<div class="inputContainer">
						<label for="password">비밀번호</label> <input type="password" id="password"> <span
							class="underline"></span>
					</div>

					<div class="inputContainer">
						<label for="password_check">비밀번호 확인</label> <input type="password_check" id="password_check">
						<span class="underline"></span>
					</div>

					<button class="nextButton">시작하기</button>
				</form>
			</div>
		</div>
	</div>

	 <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script type="text/javascript" src="../../js/header_footer.js"></script>
    <script type="text/javascript" src="../../js/member/member.js"></script>
</body>
</html>