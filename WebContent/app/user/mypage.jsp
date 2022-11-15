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
    <title>2게팀이지 :: 마이페이지</title>
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/mypage.css">
</head>
<body>
    <!-- header -->
	<jsp:include page="/app/components/header.jsp"></jsp:include>
    <!-- -------------- header end --------------  -->
    <div class="wrap">
        <div class="main">
            <div class="content">
                <div class="left-wrap">
                    <div class="user-box">
                        <div class="user-info">
                            <div class="user-name">USER_NAME</div>
                            <div class="edit"><a href="/user/edit.user?userId=${sessionScope.userId}">수정</a></div>
                        </div>
                        <div class="write-box">
                            <div class="write-guide">가이드 작성</div>
                        </div>    
                        <div class="check-box">
                            <div class="check-guide">내가 작성한 가이드 확인</div>
                        </div>
                        <div class="certify-box">
                            <div class="certify-phone">휴대폰 인증</div>
                        </div>
                        <div class="village-box">
                            <div class="certify-village">동네 위치 확인</div>
                        </div>
                    </div>
                    <div class="sign-out">
                        <span onclick="location.href='/user/logout.user'">로그아웃</span>
                    </div>
                </div>
                <div class="title-wrap">
                    <div class="subscription">
                        <div class="title">
                            <div class="first-line">재밌는 추억 쌓는</div>
                            <div class="second-line">현명한 선택</div>
                        </div>
                        <div class="info-wrap">
                            <div class="first">
                                <div class="icon"><img src="${pageContext.request.contextPath}/assets/img/user/mypage/search.png"></div>
                                <p class="text">최적의 검색 !</p>
                            </div>
                            <div class="second">
                                <p class="text">영어 실력도 향상 !</p>    
                            </div>
                        </div>
                        <div class="search">
                                <button type="button"><a href="/guide/write.guide">가이드 작성</a></button>
                        </div>
                    </div>
                    <div class="write-content">
                        <div class="img">
                            <img src="${pageContext.request.contextPath}/assets/img/user/mypage/noguide.png">
                        </div>
                        <p>작성한 가이드가 없습니다.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- footer -->
   	<jsp:include page="/app/components/footer.jsp"></jsp:include>
    <!-- -------------- footer end -------------- -->
</body>
<script src="${pageContext.request.contextPath}/assets/js/user/mypage.js"></script>
</html>