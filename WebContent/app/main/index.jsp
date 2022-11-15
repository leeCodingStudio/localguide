<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>localGuide</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main/index.css">
</head>
<body>
    <!-- header -->
	<jsp:include page="/app/components/header.jsp"></jsp:include>
    <!-- -------------- header end --------------  -->
    <!-- main -->
    <main>
        <!-- banner -->
        <section class="container">
            <div class="arrow prev">&lt;</div>
            <div class="banner">
                <div><img src="${pageContext.request.contextPath}/assets/img/main/01.jpg"></div>
                <div><img src="${pageContext.request.contextPath}/assets/img/main/02.jpg"></div>
                <div><img src="${pageContext.request.contextPath}/assets/img/main/03.jpg"></div>
                <div><img src="${pageContext.request.contextPath}/assets/img/main/04.jpg"></div>
                <div><img src="${pageContext.request.contextPath}/assets/img/main/05.jpg"></div>
                <div><img src="${pageContext.request.contextPath}/assets/img/main/06.jpg"></div>
            </div>
            <div class="arrow next">&gt;</div>
            <div class="btns">
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
            </div>
        </section>
        <!-- -------------- banner end -------------- -->
        
        <!-- area -->
        <div id="content-category">
            <div id="category">
                <div class="area">전체</div>
                <div class="area">서울</div>
                <div class="area">경기</div>
                <div class="area">강원</div>
                <div class="area">충청</div>
                <div class="area">전라</div>
                <div class="area">경상</div>
                <div class="area">제주</div>
            </div>
        </div>
        <!-- -------------- area end ---------------->
    </main>
    <!-- product -->
    <div id="content-product">
        <div id="content-product-box">
            <pre class="top1">제주도<br>#제주도_가볼만한 곳</pre>
            <pre class="top2">현지 가이드와 즐거운 제주도 탐방</pre>
            <div class="product-wrapper">
                <div class="items item1">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=f965536f-15f6-43ed-809a-3c1b5c3b7903) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">제주도 서귀포시</div>
                    <div class="product-info">따라비 오름</div>
                </div>
                <div class="items item2">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=a729adb4-9d18-4c5a-a75c-6be677e8439d) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">제주도 서귀포시</div>
                    <div class="product-info">산방산(제주)</div>
                </div>
                <div class="items item3">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=3c851870-833d-4078-9b2a-7d76b296056c) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">제주도 서귀포시</div>
                    <div class="product-info">표선 해비치 해변</div>
                </div>
                <div class="items item4">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=72d97789-b1ee-4ae4-b22b-abb66986618d) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">제주도 서귀포시</div>
                    <div class="product-info">성산일출봉</div>
                </div>
            </div>
            <!-- ---- 지역 변경 ------>
            <pre class="top1 change-item">경상도<br>#대구_가볼만한 곳</pre>
            <pre class="top2">현지 가이드와 즐거운 대구 탐방</pre>
            <div class="product-wrapper">
                <div class="items item5">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=27222d42-013a-4c18-968e-e72c006a4c29) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">대구광역시</div>
                    <div class="product-info">서문시장</div>
                </div>
                <div class="items item6">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=208a106c-a6e9-42ca-83ae-ee61b66700d2) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">대구광역시</div>
                    <div class="product-info">앞산 해넘이전망대</div>
                </div>
                <div class="items item7">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=ff788bc0-3502-44a8-a593-bf47600a2de6) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">대구광역시</div>
                    <div class="product-info">대구 이월드</div>
                </div>
                <div class="items item8">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=5ca63ef0-7de0-407d-a146-210bf156bb5c) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">대구광역시</div>
                    <div class="product-info">김광석 길</div>
                </div>
            </div>
             <!-- ---- 지역 변경 ------>
            <pre class="top1 change-item">강원도<br>#속초_가볼만한 곳</pre>
            <pre class="top2">현지 가이드와 즐거운 속초 탐방</pre>
            <div class="product-wrapper">
                <div class="items item1">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=3be8d90f-4a47-46c8-990e-9576476e82d1) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">속초시</div>
                    <div class="product-info">영금정</div>
                </div>
                <div class="items item2">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=0057f0bd-5bee-4b09-84ad-e7d62a4f2a8e) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">속초시</div>
                    <div class="product-info">속초관광수산시장</div>
                </div>
                <div class="items item3">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=46c79dae-008b-4ffd-83dc-acd0b57c7064) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">속초시</div>
                    <div class="product-info">청초호</div>
                </div>
                <div class="items item4">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=29fd5f6f-a612-4810-b5bc-7c08acb5f65d) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">속초시</div>
                    <div class="product-info">설악산 울산바위</div>
                </div>
            </div>
             <!-- ---- 지역 변경 ------>
             <pre class="top1 change-item">서울특별시<br>#서울_가볼만한 곳</pre>
             <pre class="top2">현지 가이드와 즐거운 서울 탐방</pre>
             <div class="product-wrapper">
                 <div class="items item5">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=0f9fc143-357c-4157-b185-dfa02abd6bbc) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">서울특별시</div>
                    <div class="product-info">남산타워</div>
                 </div>
                 <div class="items item6">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=026232b7-522b-4164-a9f5-286903f059ca) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">서울특별시</div>
                    <div class="product-info">남산 케이블카</div>
                 </div>
                 <div class="items item7">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=ed25a5f3-1ece-4d5b-9b63-5be4dce0376d) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">서울특별시</div>
                    <div class="product-info">숭례문</div>
                 </div>
                 <div class="items item8">
                    <div class="product-image" style="background:url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=faa8c18d-8fcb-4771-bffc-c5173b45c5ce) 50% 50% / cover no-repeat;"></div>
                    <div class="product-name">서울특별시</div>
                    <div class="product-info">북촌 한옥마을</div>
                 </div>
             </div>
        </div>
    </div>
    <!-- -------------- product end -------------- -->
    
	<!-- footer -->
   	<jsp:include page="/app/components/footer.jsp"></jsp:include>
    <!-- -------------- footer end -------------- -->
</body>
<script src="${pageContext.request.contextPath}/assets/js/main/index.js"></script>
</html>