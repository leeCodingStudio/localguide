<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>회원관리</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/components/sanitize.css" />
<!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin/user.css" />
<style>
table tbody tr {
	background-color: rgb(245 246 246/ 48%) !important;
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="/app/components/adminHeader.jsp"></jsp:include>
	<!-- -------------- header end --------------  -->
	<!-- aside -->
	<jsp:include page="/app/components/adminAside.jsp"></jsp:include>
	<!-- -------------- header end --------------  -->
	<!-- 페이지별로 class 이름 기능에 맞게 재설정 -->
	<main class="module-container">
		<article class="module--search">
			<div class="search__searchbox">
				<form action="" class="search__searchbox__form">
					<input id="searchbox" type="text"
						placeholder="이름, 전화번호, 이메일로 검색해보세요" />
					<button type="button" class="search__searchbox__button">
						<img
							src="${pageContext.request.contextPath}/assets/img/admin/icon/search.png"
							alt="" />
					</button>
				</form>
			</div>
		</article>
		<article class="module module--user-summary"></article>
		<article class="module module--user-controller"></article>
		<div class="buttonWrapper">
			<!-- <button type="button" id="deleteButton">선택 삭제</button> -->
		</div>
		<article class="module module--user-list">
			<div class="user-list__title-container">
				<div class="user-list__title-unit">
					<input type="checkbox" id="title__checkbox" name="checkbox-all" />
					<ul class="user-list__title">
						<li class="title__id">회원번호</li>
						<li class="title__name">이름</li>
						<li class="title__user-id">회원 ID</li>
						<li class="title__email">이메일</li>
						<li class="title__phone">핸드폰 번호</li>
						<li class="title__join">가입일</li>
						<!-- <li class="title__recent">최근 접속일</li> -->
						<li class="title__status">상태</li>
						<li class="title__detail">상세</li>
					</ul>
				</div>
			</div>
			<div class="user-list__info-container">
				<c:choose>
					<c:when test="${not empty users and fn:length(users) > 0 }">
						<c:forEach var="user" items="${users}">
							<div class="user-list__info-unit">
								<input type="checkbox" class="user__checkbox" id="hds"
									name="checkbox" onclick="location.href='${pageContext.request.contextPath}/admin/deleteUser.admin?userId=${user.userId}'"/> <label for="hds"
									class="user__checkbox--label">
									<ul class="user-list__info">
										<li class="user__id" name="userId"><c:out
												value="${user.getUserId()}" /></li>
										<li class="user__name" name="userName"><c:out
												value="${user.getUserName()}" /></li>
										<li class="user__user-id" name="userNickname"><c:out
												value="${user.getUserNickname()}" /></li>
										<li class="user__email" name="userEmail"><c:out
												value="${user.getUserEmail()}" /></li>
										<li class="user__phone" name="userPhoneNumber"><c:out
												value="${user.getUserPhoneNumber()}" /></li>
										<li class="user__join" name="userDateJoin"><c:out
												value="${user.getUserDateJoin()}" /></li>
										<li class="user__recent" name="userPassword"><c:out
												value="${user.getUserPassword()}" /></li>
										<li class="user__status" name="userStatus"><c:out
												value="${user.getUserStatus()}" /></li>
										<li class="user__detail" name="userDetail"><c:out
												value="${user.getUserDetail()}" /></li>
									</ul>
								</label>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<ul class="user-list__info">
							<li>등록된 회원이 없습니다.</li>
						</ul>
					</c:otherwise>
				</c:choose>
				<!-- 페이징 처리 -->
				<div id="pageMark">
					<table style="font-size: 1rem">
						<tr align="center" valign="middle">
							<td class="web-view"><c:if test="${prev}">
									<a
										href="${pageContext.request.contextPath}/admin/user.admin?page=${startPage - 1}">&lt;</a>
								</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
									<c:choose>
										<c:when test="${not (i eq page)}">
											<a
												href="${pageContext.request.contextPath}/admin/user.admin?page=${i}">
												<c:out value="${i}" />&nbsp;&nbsp;
											</a>
										</c:when>
										<c:otherwise>
											<c:out value="${i}" />&nbsp;&nbsp;
															</c:otherwise>
									</c:choose>
								</c:forEach> <c:if test="${next}">
									<a
										href="${pageContext.request.contextPath}/admin/user.admin?page=${endPage + 1}">&gt;</a>
								</c:if></td>
						</tr>
					</table>
				</div>
				



				<!--                 <li class="user__id" name="userId">365KOREAJ</li>
                <li class="user__name" name="userName">한동석</li>
                <li class="user__user-id" name="userNickname">bugbug</li>
                <li class="user__email" name="userEmail">winterstone@cold.com</li>
                <li class="user__phone" name="userPhoneNumber">010-1004-5004</li>
                <li class="user__join" name="userDateJoin">2001.01.01</li>
                <li class="user__recent" name="">3일 전</li>
                <li class="user__status" name="userStatus">활성</li>
                <li class="user__detail" name="userDetail">20대</li> -->

			</div>
		</article>
	</main>
</body>
<script src="${pageContext.request.contextPath}/assets/js/admin/user.js"></script>
<script type="text/javascript">
	/* const deleteButton = document.querySelector("#deleteButton");
	deleteButton.addEventListener("click", function() {
		window.location.href = "/admin/deleteUser.admin?userId=14";
		/* 		window.location.href = "/admin/deleteUser.admin?userId=${sessionScope.userId}"; */
	}) */
</script>
</html>