<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>컨텐츠관리</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/components/sanitize.css" />
    <!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/guide.css" />
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
            <input
              id="searchbox"
              type="text"
              placeholder="원하시는 키워드로 찾아보세요"
            />
            <button type="button" class="search__searchbox__button">
              <img src="${pageContext.request.contextPath}/assets/img/admin/icon/search.png" alt="" />
            </button>
          </form>
        </div>
      </article>
      <article class="module module--content-controller"></article>
      <article class="module module--content-summary"></article>
       <div class="buttonWrapper">
	      <!-- <button type="button" id="deleteButton">선택 삭제</button> -->
      </div>
      <article class="module module--content-list">
        <div class="content-list__title-container">
          <div class="content-list__title-unit">
            <input type="checkbox" id="title__checkbox" name="checkbox-all" />
            <ul class="content-list__title">
              <li class="title__id">가이드번호</li>
              <li class="title__title">글제목</li>
              <li class="title__user-id">회원번호</li>
              <li class="title__location">지역</li>
              <li class="title__location-detail">역삼</li>
              <li class="title__ip">컨텐트</li>
              <li class="title__date-post">등록시간</li>
              <li class="title__date-update">수정시간</li>
              <li class="title__date-delete">삭제시간</li>
              <li class="title__detail">상세</li>
            </ul>
          </div>
        </div>
        <div class="content-list__info-container">
        
        <c:choose>
              	<c:when test="${not empty guides and fn:length(guides) > 0 }">
              		<c:forEach var="guide" items="${guides}">
         	 <div class="content-list__info-unit">
            <input
              type="checkbox"
              class="content__checkbox"
              id="hds"
              name="checkbox"
              onclick="location.href='${pageContext.request.contextPath}/admin/deleteGuide.admin?guideId=${guide.guideId}'"
            />
            <label for="hds" class="content__checkbox--label">
              <ul class="content-list__info">
                <li class="content__id" name="guideId"><c:out value="${guide.getGuideId()}"/></li>
                <li class="content__title" name="guideTitle"><c:out value="${guide.getGuideTitle()}"/></li>
                <li class="content__user-id" name="userId"><c:out value="${guide.getUserId()}"/></li>	<!-- userId 가져와야함 -->
                <li class="content__location" name="guideRegion"><c:out value="${guide.getGuideRegion()}"/></li>
                <li class="content__location-detail" name="guideRegionDetail"><c:out value="${guide.getGuideRegionDetail()}"/></li>
                <li class="content__ip" name="guideContent"><c:out value="${guide.getGuideContent()}"/></li>
                <li class="content__date-post" name="guideDatePost"><c:out value="${guide.getGuideDatePost()}"/></li>
                <li class="content__date-update" name="guideDateUpdate"><c:out value="${guide.getGuideDateUpdate()}"/></li>
                <li class="content__date-delete" name="guideDateDelete"><c:out value="${guide.getGuideDateDelete()}"/></li>
                <li class="content__detail" name="guideStatus"><c:out value="${guide.getGuideStatus()}"/></li>
              </ul>
            </label>
          </div>
              		</c:forEach>
              	</c:when>
              	<c:otherwise>
              		<ul class="user-list__info">
              			<li>등록된 가이드가 없습니다.</li>
              		</ul>
              	</c:otherwise>
              </c:choose>
              <!-- 페이징 처리 -->
				<div id="pageMark">
					<table style="font-size: 1rem">
						<tr align="center" valign="middle">
							<td class="web-view"><c:if test="${prev}">
									<a
										href="${pageContext.request.contextPath}/admin/guide.admin?page=${startPage - 1}">&lt;</a>
								</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
									<c:choose>
										<c:when test="${not (i eq page)}">
											<a
												href="${pageContext.request.contextPath}/admin/guide.admin?page=${i}">
												<c:out value="${i}" />&nbsp;&nbsp;
											</a>
										</c:when>
										<c:otherwise>
											<c:out value="${i}" />&nbsp;&nbsp;
															</c:otherwise>
									</c:choose>
								</c:forEach> <c:if test="${next}">
									<a
										href="${pageContext.request.contextPath}/admin/guide.admin?page=${endPage + 1}">&gt;</a>
								</c:if></td>
						</tr>
					</table>
				</div>
        
          <!-- <div class="content-list__info-unit">
            <input
              type="checkbox"
              class="content__checkbox"
              id="hds"
              name="checkbox"
            />
            <label for="hds" class="content__checkbox--label">
              <ul class="content-list__info">
                <li class="content__id">1589073</li>
                <li class="content__title">동네주민이 가는 진짜 맛집</li>
                <li class="content__user-id">bugbug</li>
                <li class="content__location">서울</li>
                <li class="content__location-detail">역삼</li>
                <li class="content__ip">1.234.567.89</li>
                <li class="content__date-post">2022.10.17</li>
                <li class="content__date-update">2022.10.25</li>
                <li class="content__date-delete">NULL</li>
                <li class="content__detail">클릭버튼</li>
              </ul>
            </label>
          </div> -->
        </div>
      </article>
    </main>
</body>
<script src="${pageContext.request.contextPath}/assets/js/admin/guide.js"></script>
</html>