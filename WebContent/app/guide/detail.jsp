<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/guide/detail.css">
    <title>detail</title>
</head>
<body>
    <!-- header -->
	<jsp:include page="/app/components/header.jsp"></jsp:include>
    <!-- -------------- header end --------------  -->
    <!-- main -->
    <main>
        <section class="detail">
            <div class="content_top">
                <div class="detail_img">
                    <img
                        src="http://hotline.or.kr/files/attach/images/6680/503/007/99b983892094b5c6d2fc3736e15da7d1.jpg">
                </div>
                <div class="detail_main">
                    <h2 class="region">서울</h2>
                    <h1 class="detail_title">${guide.guideTitle}</h1>
                    <div class="detail_bottom">
                        <h1 class="cost">최대 인원 : ${guide.guideMaxJoin} 인</h1>
                        <div class="detail_btn">
                            <button class="white_btn">신청하기</button>
                            <button class="black_btn open_kakao">오픈 카카오톡 참여</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content_bottom">
                <div class="content_bottom_img">
                    <img src="https://t1.daumcdn.net/cfile/tistory/244FAE3954768A9D0E">
                    <img src="https://cdn.baccro.com/news/photo/201307/6705_17412_2555.jpg">
                </div>
                <div class="content_bottom_title">
                    <div class="content_bottom_btn">
                        <div class="title">가이드일정</div>
                        <img class="icon"
                            src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' width='36' height='36' viewBox='0 0 36 36'%3E%3Cg transform='scale(1.5, 1.5)'%3E%3Cpath d='M17.6255 9.35264L12.0026 14.6473L6.3745 9.35264' stroke='%23838383' stroke-miterlimit='10' stroke-linecap='square' vector-effect='non-scaling-stroke'/%3E%3C/g%3E%3C/svg%3E">
                    </div>
                    <div class="content_bottom_content">
                        <ul>
                            <li>날짜 : ${guide.guideDatePost}</li>
                            <li>장소 : ${guide.guideRegionDetail}</li>
                            <li>시간 : ${guide.guideDateStart} ~ ${guide.guideDateExpire}</li>
                            <li>비용 : ${guide.guideCost} ￦</li>
                            <li>최대인원 : ${guide.guideMaxJoin} 인</li>
                            <li>가이드 이야기</li>
                            <li class="content">${guide.guideContent}</li>
                        </ul>
                    </div>
                </div>
                <div class="content_bottom_title">
                    <div class="content_bottom_btn">
                        <div class="title">지도</div>
                        <img class="icon"
                            src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' width='36' height='36' viewBox='0 0 36 36'%3E%3Cg transform='scale(1.5, 1.5)'%3E%3Cpath d='M17.6255 9.35264L12.0026 14.6473L6.3745 9.35264' stroke='%23838383' stroke-miterlimit='10' stroke-linecap='square' vector-effect='non-scaling-stroke'/%3E%3C/g%3E%3C/svg%3E">
                    </div>
                    <div class="content_bottom_content">
                        <div id="map" style="width:100%;height:500px;"></div>
                    </div>
                </div>
            </div>
        </section>
        <div class="content_sticky">
            <div class="content_sticky_main">
                <h1 class="sticky_title">${guide.guideTitle}</h1>
                <div class="sticky_right">
                    <h1 class="cost">${guide.guideCost} ￦</h1>
                    <div class="sticky_btn">
                        <button class="white_btn">신청하기</button>
                        <button class="black_btn open_kakao">오픈 카카오톡 참여</button>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- footer -->
   	<jsp:include page="/app/components/footer.jsp"></jsp:include>
    <!-- -------------- footer end -------------- -->
</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eebd1a245de1567d5bc637d908b803dc"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/guide/detail.js"></script>
</html>