<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보 수정</title>
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/editOk.css">
</head>
<body>
    <!-- header -->
	<jsp:include page="/app/components/header.jsp"></jsp:include>
    <!-- -------------- header end --------------  -->
    <div class="edit-wrap">
        <div class="edit-header">
            <div class="arrow">
                <a href="${pageContext.request.contextPath}/user/mypage.user">
                    <img src="${pageContext.request.contextPath}/assets/img/user/mypage/arrow.png">
                </a>
            </div>
            <div class="navigation">
                회원 정보 수정
            </div>
        </div>
        <div class="my-info-wrap">
            <div class="my-info-content">
                <div class="first-line">
                    <div class="user-info-title">기본 회원 정보</div>
                    <div class="first-content">
                        <div class="user-info-first-column">
                            <div class="user-name">이름</div>
                            <div class="user-email">이메일</div>
                            <div class="user-password">비밀번호</div>
                            <div class="user-phone-number">휴대폰 번호</div>
                            <div class="user-birth">생년월일</div>
                            <div class="user-gender">성별</div>
                        </div>
                        	<div class="user-info-second-column">
                            	<input type="text" class="userInput inputName" name="userName"/>
                           		<input type="text" class="userInput" name="userEmail"/>
                          		<input type="password" class="userInput" name="userPassword"/>
                                <!-- <input type="password" value="123456"> -->
                            	<input type="text" class="userInput" name="userPhoneNumber"/>
                            	<input type="text" class="userInput" name="userBirthday"/>
                            	<input type="text" class="userInput" name="userGender"/>
                        	</div>
                        
<!--                         <div class="user-info-second-column">
                            <div class="user-name-detail">USER_NAME</div>
                            <div class="user-email-detail">user_name@gmail.com</div>
                            <div class="user-password-detail">
                                <input type="password" value="123456">
                            </div>
                            <div class="user-phone-detail">010-1234-1234</div>
                            <div class="user-birth-detail">971125</div>
                            <div class="user-gender-detail">남자</div>
                        </div> -->
                        <div class="user-info-third-column">
                            <!-- <div class="user-name-edit">
                                <a href="#">수정</a>
                            </div>
                            <div class="user-email-edit"></div>
                            <div class="user-password-edit">
                                <a href="#">수정</a>
                            </div>
                            <div class="user-phone-edit">
                                <a href="#">수정</a>
                            </div>
                            <div class="user-birth-edit"></div>
                            <div class="user-gender-edit"></div> -->
                        </div>
                    </div>
                </div>
                <div class="second-line">
                   <!--  <div class="second-content">
                        <div class="newsletter-title">
                            와이즐리 혜택 알림 받기
                            <div class="toggle">
                                <input type="checkbox">
                            </div>
                        </div>
                        <div class="newsletter-text">
                            마케팅 정보 수신에 동의 하시면 다양한 신제품 출시 정보 각종 세일,
                            이벤트 등의 혜택 정보를 받으실 수 있습니다.
                        </div>
                    </div> -->
                    <div class="change-user-status">
                    	<div class="button-wrapper">
	                    	<button class="editComplete">수정 완료</button>
                    	</div>
                        <!-- <div class="user-info-withdraw">회원 탈퇴</div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- footer -->
   	<jsp:include page="/app/components/footer.jsp"></jsp:include>
    <!-- -------------- footer end -------------- -->
</body>
<script src="${pageContext.request.contextPath}/assets/js/user/edit.js"></script>
</html>