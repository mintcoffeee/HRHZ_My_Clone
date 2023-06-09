<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <link rel="icon" href="/images/favicon48.ico" />
        <title>Insert title here</title>
        <link rel="stylesheet" href="../../css/common/reset.css" />
        <link rel="stylesheet" href="../../css/common/loginModal.css" />
        <link rel="stylesheet" href="../../css/common/header_footer.css" />
        <link rel="stylesheet" href="../../css/member/signInStyle.css" />
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap"
            rel="stylesheet"
        />
        <link
            href="https://fonts.googleapis.com/css2?family=Barlow:wght@500&display=swap"
            rel="stylesheet"
        />
    </head>

    <body>
        <%@ include file="/WEB-INF/views/common/header.jsp" %>

        <div class="background">
            <div class="outerWrapper">
                <div class="innerWrapper">
                    <div class="signInInfo">
                        <div class="signinForm">
                            <!-- 로그인 제목 -->
                            <h2 class="signinTitle">로그인</h2>
                            <!-- 이메일, 비밀번호 -->
                            <div class="inputContainer">
                                <label for="email">이메일</label>
                                <input type="email" class="email" />
                                <img
                                    src="./images/member/valid-input-check-icon.png"
                                    alt="image"
                                    class="emailValidIcon"
                                />
                                <span class="underline"></span>
                            </div>
                            <div class="emailError"></div>

                            <div class="inputContainer">
                                <label for="password">비밀번호</label>
                                <input type="password" class="password" />
                                <img
                                    src="./images/member/valid-input-check-icon.png"
                                    alt="image"
                                    class="passwordValidIcon"
                                />
                                <span class="underline"></span>
                            </div>
                            <div class="passwordError"></div>

                            <!-- 로그인 유지하기 -->
                            <label class="checkboxContainer">
                                <input type="checkbox" />
                                <span class="checkmark"></span> 로그인 유지하기
                            </label>

                            <!-- 아이디 찾기, 비밀번호 찾기 -->
                            <span class="finder"
                                ><a href="#" id="findIdLink">아이디 찾기</a> |
                                <a href="#" id="findPwdLink">비밀번호 찾기</a></span
                            >

                            <!--  로그인 버튼 -->
                            <div>
                                <button class="signInButton" disabled>
                                    로그인
                                </button>
                            </div>
                            <br />

                            <div class="text1">
                                신규 가입하고 20% 할인 혜택을 받아보세요!
                            </div>
                            <!--  회원가입 버튼 -->

                            <div>
                                <button class="signUpButton">회원가입</button>
                            </div>
                            <br />

                            <div class="text2">
                                SNS계정으로 아몬즈를 이용해보세요!
                            </div>
                            <!-- SNS 계정 버튼 -->
                            <div class="socialIconWrap">
                                <span class="socialIconKakao">
                                    <a
                                        id="kakaoIdLogin_loginButton"
                                        href="https://kauth.kakao.com/oauth/authorize?client_id=1105196451a5485acd1247f1de5aa106&redirect_uri=http://localhost:8080/kakao&response_type=code"
                                    >
                                        <img
                                            src="./images/member/auth_social_kakao_round_btn.png" /></a
                                ></span>
                                <span class="socialIconNaver">
                                    <a
                                        id="naverIdLogin_loginButton"
                                        href="javascript:void(0)"
                                    >
                                        <img
                                            src="./images/member/btnG_icon_circle.png" /></a
                                ></span>
                                <span class="socialIconGoogle">
                                    <a href="/google">
                                        <img
                                            src="../../images/member/google_btn.png"
                                        />
                                    </a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 
                        <label class="checkboxContainer">
                            <input type="checkbox" />
                            <span class="checkmark"></span> 로그인 유지하기
                        </label>

                        <span class="finder"
                            ><a href="#">아이디 찾기</a> |
                            <a href="#">비밀번호 찾기</a></span
                        >

                        <div>
                            <button class="signInButton" disabled>
                                로그인
                            </button>
                        </div>
                        <br />

                        <div class="text1">
                            신규 가입하고 20% 할인 혜택을 받아보세요!
                        </div>

                        <div>
                            <button class="signUpButton">회원가입</button>
                        </div>
                        <br />

                        <div class="text2">
                            SNS계정으로 아몬즈를 이용해보세요!
                        </div>
                        <div class="socialIcon">
                            <span class="socialIconKakao">
                                <a
                                    id="kakaoIdLogin_loginButton"
                                    href="javascript:void(0)"
                                    href="#"
                                >
                                    <img
                                        src="./images/member/auth_social_kakao_round_btn.png" /></a
                            ></span>
                            <span class="socialIconNaver">
                                <a
                                    id="naverIdLogin_loginButton"
                                    href="javascript:void(0)"
                                >
                                    <img
                                        src="./images/member/btnG_icon_circle.png" /></a
                            ></span>
                            <span class="socialIconGoogle">
                                <a href="/google">
                                    <img
                                        src="../../images/member/google_btn.png"
                                    />
                                </a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->

        <%@ include file="/WEB-INF/views/common/footer.jsp" %>

        <script
            type="text/javascript"
            src="http://code.jquery.com/jquery-3.6.4.min.js"
        ></script>
        <script
            type="text/javascript"
            src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
            charset="utf-8"
        ></script>
        <script type="text/javascript" src="../../js/loginModal.js"></script>
        <script type="text/javascript" src="../../js/header_footer.js"></script>
        <script type="text/javascript" src="../../js/member/signIn.js"></script>
    </body>
</html>
