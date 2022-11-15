<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관리자 홈</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/components/sanitize.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/components/adminAside.css" />
<!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
</head>
<body>
	<aside class="sidebar">
		<header class="sidebar-header">
			<h1>T2m T2s Admin</h1>
		</header>
		<nav>
			<ul>
				<li><details>
						<summary class="nav-menu menu--current">
							<a href="./index.html"> <img src="${pageContext.request.contextPath}/assets/img/admin/icon/home.png"
								alt="icon" class="menu__icon" />
								<h2 class="menu__title">관리자 홈</h2>
							</a>
						</summary>
					</details></li>
				<li><details>
						<summary class="nav-menu">
							<img src="${pageContext.request.contextPath}/assets/img/admin/icon/people.png" alt="icon" class="menu__icon" />
							<h2 class="menu__title">회원관리</h2>
							<img src="${pageContext.request.contextPath}/assets/img/admin/icon/dropdown.png" alt="icon"
								class="menu__icon--drop-down" />
						</summary>
						<ul class="nav-menu-submenu">
							<li class="submenu__item"><a href="${pageContext.request.contextPath}/admin/user.admin">
<!-- 							<li class="submenu__item"><a href="./user.html"> -->
									<h3>회원정보</h3>
							</a></li>
							<!-- <li class="submenu__item"><a href="./user.html"> -->
							<li class="submenu__item"><a href="${pageContext.request.contextPath}/admin/user.admin">
									<h3>휴면회원</h3>
							</a></li>
							<!-- <li class="submenu__item"><a href="./user.html"> -->
							<li class="submenu__item"><a href="${pageContext.request.contextPath}/admin/user.admin">
									<h3>차단회원</h3>
							</a></li>
						</ul>
					</details></li>
				<li><details>
						<summary class="nav-menu">
							<img src="${pageContext.request.contextPath}/assets/img/admin/icon/contents.png" alt="icon" class="menu__icon" />
							<h2 class="menu__title">컨텐츠관리</h2>
							<img src="${pageContext.request.contextPath}/assets/img/admin/icon/dropdown.png" alt="icon"
								class="menu__icon--drop-down" />
						</summary>
						<ul class="nav-menu-submenu">
							<a href="${pageContext.request.contextPath}/admin/guide.admin">
								<h3>
									<li class="submenu__item">가이드관리</li>
								</h3>
							</a>
							<a href="${pageContext.request.contextPath}/admin/guide.admin">
								<h3>
									<li class="submenu__item">후기관리</li>
								</h3>
							</a>
						</ul>
					</details></li>
				<li><details>
						<summary class="nav-menu">
							<img src="${pageContext.request.contextPath}/assets/img/admin/icon/support.png" alt="icon" class="menu__icon" />
							<h2 class="menu__title">문의관리</h2>
							<img src="${pageContext.request.contextPath}/assets/img/admin/icon/dropdown.png" alt="icon"
								class="menu__icon--drop-down" />
						</summary>
						<ul class="nav-menu-submenu">
							<a href="./support.html">
								<h3>
									<li class="submenu__item">문의관리</li>
								</h3>
							</a>
							<a href="./support.html">
								<h3>
									<li class="submenu__item">분쟁관리</li>
								</h3>
							</a>
						</ul>
					</details></li>
				<li><details>
						<summary class="nav-menu">
							<img src="${pageContext.request.contextPath}/assets/img/admin/icon/megaphone.png" alt="icon" class="menu__icon" />
							<h2 class="menu__title">공지/FAQ관리</h2>
							<img src="${pageContext.request.contextPath}/assets/img/admin/icon/dropdown.png" alt="icon"
								class="menu__icon--drop-down" />
						</summary>
						<ul class="nav-menu-submenu">
							<a href="./notice.html">
								<h3>
									<li class="submenu__item">공지사항</li>
								</h3>
							</a>
							<a href="./notice.html">
								<h3>
									<li class="submenu__item">FAQ</li>
								</h3>
							</a>
						</ul>
					</details></li>
				<li><details>
						<summary class="nav-menu">
							<img src="${pageContext.request.contextPath}/assets/img/admin/icon/chart.png" alt="icon" class="menu__icon" />
							<h2 class="menu__title">통계/분석</h2>
							<img src="${pageContext.request.contextPath}/assets/img/admin/icon/dropdown.png" alt="icon"
								class="menu__icon--drop-down" />
						</summary>
						<ul class="nav-menu-submenu">
							<a href="./analytics.html">
								<h3>
									<li class="submenu__item">사용자통계</li>
								</h3>
							</a>
						</ul>
					</details></li>
			</ul>
		</nav>
		<div class="user-info">
			<img src="${pageContext.request.contextPath}/assets/img/admin/icon/user.png" alt="" class="user-info__img" />
			<p class="user-info__email">
				<span id="user-info__email--id">oneDayLocalGuideAdmin</span>
				@gmail.com
			</p>
		</div>
	</aside>
</body>
</html>
