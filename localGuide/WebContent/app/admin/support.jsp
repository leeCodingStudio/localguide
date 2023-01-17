<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>컨텐츠관리</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/components/sanitize.css" />
    <!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/support.css" />
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
      <article class="module module--support-summary"></article>
      <article class="module module--support-controller"></article>
      <article class="module module--support-list">
        <div class="support-list__title-container">
          <div class="support-list__title-unit">
            <input type="checkbox" id="title__checkbox" name="checkbox-all" />
            <ul class="support-list__title">
              <li class="title__id">문의번호</li>
              <li class="title__type">문의유형</li>
              <li class="title__user-id">회원 ID</li>
              <li class="title__title">문의제목</li>
              <li class="title__content">문의내용</li>
              <li class="title__date-post">등록시간</li>
              <li class="title__answer-check">답변여부</li>
              <li class="title__answer-date">답변시간</li>
              <li class="title__admin-id">관리자 ID</li>
              <li class="title__answer">답변</li>
            </ul>
          </div>
        </div>
        <div class="support-list__info-container">
          <div class="support-list__info-unit">
            <input
              type="checkbox"
              class="support__checkbox"
              id="hds"
              name="checkbox"
            />
            <label for="hds" class="support__checkbox--label">
              <ul class="support-list__info">
                <li class="support__id">j634</li>
                <li class="support__type">건의</li>
                <li class="support__user-id">bugbug</li>
                <li class="support__title">UI가 너무 구려요</li>
                <li class="support__content">제 생각에는 말이죠..</li>
                <li class="support__date-post">2022.10.17</li>
                <li class="support__answer-check">미완료</li>
                <li class="support__answer-date">2022.10.25</li>
                <li class="support__admin-id">castleDragon</li>
                <li class="support__answer">답변하기</li>
              </ul>
            </label>
          </div>
        </div>
      </article>
    </main>
</body>
</html>