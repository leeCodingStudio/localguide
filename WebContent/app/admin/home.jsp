<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자 홈</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/components/sanitize.css" />
    <!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/home.css" />
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
      <article class="module--welcome">
        <h1 class="welcome__text">안녕하세요,</h1>
        <h1 class="welcome__user-name">한동석님.</h1>
      </article>
      <article class="module--search">
        <div class="search__searchbox">
          <form action="" class="search__searchbox__form">
            <input
              id="searchbox"
              type="text"
              placeholder="이 검색창을 활용해주세요"
            />
            <button type="button" class="search__searchbox__button">
              <img src="${pageContext.request.contextPath}/assets/img/admin/icon/search.png" alt="" />
            </button>
          </form>
        </div>
      </article>
      <article class="module module--resolution">
        <p class="module__title">목표</p>
      </article>
      <article class="module module--daily-summary">
        <p class="module__title">요약</p>
      </article>
      <article class="module module--todo-today">
        <p class="module__title">TODO TODAY</p>
      </article>
      <article class="module module--monthly-statistics">
        <p class="module__title">월별 통계</p>
      </article>
      <article class="module module--new-articles">
        <p class="module__title">신규 글 목록</p>
      </article>
      <article class="module module--new-reviews">
        <p class="module__title">신규 후기 목록</p>
      </article>
      <article class="module module--new-qna">
        <p class="module__title">신규 문의 내역</p>
      </article>
      <article class="module module--new-dispute">
        <p class="module__title">신규 분쟁 내역</p>
      </article>
      <article class="module module--closed-qna">
        <p class="module__title">문의 해결 내역</p>
      </article>
      <article class="module module--closed-dispute">
        <p class="module__title">분쟁 해결 내역</p>
      </article>
    </main>
  </body>
</html>
