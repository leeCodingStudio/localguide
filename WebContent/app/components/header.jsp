<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/components/header.css">
</head>
<body>
    <header>
        <div id="header-wrapper">
            <div id="content">
                <div id="left">
                    <div id="logo" onclick="location.href='/main.main'">TEAM02</div>
                    <div class="menu one">당일여행</div>
                    <div class="menu two">숙박여행</div>
                    <div class="menu three">지역여행</div>
                    <div class="menu four">고객센터</div>
                </div>
                <div id="right">
                    <div id="rightmenu">
                    <c:choose>
                    	<c:when test="${empty sessionScope.userId}">
                        	<div id="login" onclick="location.href='${pageContext.request.contextPath}/user/login.user'">로그인</div>
                        	<div id="member" onclick="location.href='${pageContext.request.contextPath}/user/signUp.user'">회원가입</div>
                        </c:when>
                        <c:otherwise>
                        	<div id="myPage" onclick="location.href='${pageContext.request.contextPath}/user/mypage.user'">마이페이지</div>
                        	<div id="logout" onclick="location.href='${pageContext.request.contextPath}/user/logout.user'">로그아웃</div>
                        </c:otherwise>
                    </c:choose>
	                </div>
                </div>
            </div>
        </div>
    </header>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/components/header.js"></script>
</html>