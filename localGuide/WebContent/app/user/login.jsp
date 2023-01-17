<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/login.css">
</head>
<body>
	<c:if test="${not empty param.login}">
		<script>alert("로그인 실패");</script>
	</c:if>
    <!-- header -->
	<jsp:include page="/app/components/loginHeader.jsp"></jsp:include>
    <!-- -------------- header end --------------  -->
    <!-- login -->
    <div id="login-content">
        <div id="left-background">
            <div id="left-wrapper">
                <div id="left-content">
                    <div id="title-wrapper">
                        <div id="title"><span class="login-bold">로그인 및 회원가입</span>을 <br>시작합니다.</div>
                    </div>
                    <button id="kakao-login" onclick="kakaoLogin()">
                        <img src="${pageContext.request.contextPath}/assets/img/user/login/kakaoChat.png" id="kakao-logo">
                        <span id="start-with-kakao">카톡으로 쉽게 시작하기</span>
                    </button>
                    <form id="form-kakao-login" method="post" action="${pageContext.request.contextPath}/user/kakao.user">
			    		<input type="hidden" name="userEmail"/>
			    		<input type="hidden" name="userName"/>
			    		<input type="hidden" name="userAuthType" value="kakao"/>
		    		</form>
                    <div id="email-box">
                        <div id="email-wrapper">
                            <div id="start-with-email">이메일로 시작하기</div>
                            <div id="hwasal"></div>
                        </div>
                    </div>
                </div>
                <div id="open-email">
                    <form method="post" action="${pageContext.request.contextPath}/user/loginOk.user" id="email-form">
                    	<input type="hidden" name="userAuthType" value="email"/>
                        <input name="userEmail" type="email" class="input-email" placeholder="이메일">
                        <p id="warning"></p>
                        <input name="userPassword" type="password" class="input-pw" placeholder="비밀번호">
                        <!-- <span id="eye"></span> -->
                        <p id="warning2"></p>
                        <button id="next-button">다음</button>
                    </form>
                    <div id="forgot-email-box">
                        <span id="forgot-email">이메일 주소가 기억나지 않아요</span>
                    </div>
                </div>
                <div id="left-bottom-info">TEAM02 컴퍼니 통합 회원으로 진행됩니다.</div>
            </div>
        </div>
    </div>
    <!-- login end -->

    <!-- footer -->
   	<jsp:include page="/app/components/footer.jsp"></jsp:include>
    <!-- -------------- footer end -------------- -->
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/user/login.js"></script>
</html>