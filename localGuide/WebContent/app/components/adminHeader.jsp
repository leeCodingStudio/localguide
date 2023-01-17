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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/components/adminHeader.css" />
    <!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
  </head>
<body>
    <header class="page">
      <div class="page-info">
        <img src="${pageContext.request.contextPath}/assets/img/admin/icon/menubar.png" alt="icon" class="page-info__icon" />
        <ul>
          <li class="page-info__detail page-info--current">관리자 홈</li>
        </ul>
      </div>
      <div class="page-language">
        <img
          src="${pageContext.request.contextPath}/assets/img/admin/icon/language.png"
          alt="icon"
          class="page-language__icon"
        />
        <select name="language" id="language__selector">
          <option value="KR">&#127472;&#127479;</option>
          <option value="EN">&#127482;&#127480;</option>
        </select>
      </div>
    </header>
</body>
</html>