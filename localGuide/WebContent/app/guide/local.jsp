<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/guide/local.css">
    <title>상세보기</title>
</head>
<body>
    <!-- header -->
	<jsp:include page="/app/components/header.jsp"></jsp:include>
    <!-- -------------- header end --------------  -->
    <main>
        <section>
            <div class="category">
                <div class="category_list">
	                <li>전체</li>
	                <li>서울</li>
	                <li>경기</li>
	                <li>강원</li>
	                <li>충청</li>
	                <li>전라</li>
	                <li>경상</li>
	                <li>제주</li>
                </div>
            </div>
            <div class="list">
                <div class="list_content">
                    <!-- <li>
                        <div>
                            <img
                                src="https://wiselystatic.s3.amazonaws.com/THUMBNAIL/prod/assets/images/item/101050000/main/ws-startset-navy-pro-main.png">
                        </div>
                        <article>
                            <h2 class="title">면도기 스타터세트</h2>
                            <h1 class="cost">4,900원</h1>
                        </article>
                    </li>
                    <li>
                        <div>
                            <img
                                src="https://wiselystatic.s3.amazonaws.com/THUMBNAIL/prod/assets/images/item/102000000/main/ws-blade-pro-main.png">
                        </div>
                        <article>
                            <h2 class="title">리필면도기 4개입</h2>
                            <h1 class="cost">5,900원</h1>
                        </article>
                    </li>
                    <li>
                        <div>
                            <img
                                src="https://wiselystatic.s3.amazonaws.com/THUMBNAIL/prod/assets/images/item/102003000/main/ws-blade5-main.png">
                        </div>
                        <article>
                            <h2 class="title">리필면도기 4개입 5세트</h2>
                            <h1 class="cost">28,000원</h1>
                        </article>
                    </li>
                    <li>
                        <div>
                            <img
                                src="https://wiselystatic.s3.amazonaws.com/THUMBNAIL/prod/assets/images/item/101070000/main/ws-bodyshavestarterset-main.png">
                        </div>
                        <article>
                            <h2 class="title">바디면도기 스타터 세트</h2>
                            <h1 class="cost">5,900원</h1>
                        </article>
                    </li>
                    <li>
                        <div>
                            <img
                                src="https://wiselystatic.s3.amazonaws.com/THUMBNAIL/prod/assets/images/item/102004000/main/ws-bodyshaverefill-main.png">
                        </div>
                        <article>
                            <h2 class="title">바디면도기 리필면도날 3개입</h2>
                            <h1 class="cost">6,900원</h1>
                        </article>
                    </li>
                    <li>
                        <div>
                            <img
                                src="https://wiselystatic.s3.amazonaws.com/THUMBNAIL/prod/assets/images/item/103010000/main/ws-shavegel-main.png">
                        </div>
                        <article>
                            <h2 class="title">쉐이빙젱 200ml</h2>
                            <h1 class="cost">3,700원</h1>
                        </article>
                    </li>
                    <li>
                        <div>
                            <img
                                src="https://wiselystatic.s3.amazonaws.com/THUMBNAIL/prod/assets/images/item/104010000/main/ws-aftershave-oily-main.png">
                        </div>
                        <article>
                            <h2 class="title">에프터쉐이브 60mL</h2>
                            <h1 class="cost">3,900원</h1>
                        </article>
                    </li>
                    <li>
                        <div>
                            <img
                                src="https://wiselystatic.s3.amazonaws.com/THUMBNAIL/prod/assets/images/item/101040000/main/ws-handlecover-navy-main.png">
                        </div>
                        <article>
                            <h2 class="title">면도기 행들+트래블 커버</h2>
                            <h1 class="cost">3,500원</h1>
                        </article>
                    </li>
                    <li> 
                        <div>
                            <img
                                src="https://wiselystatic.s3.amazonaws.com/THUMBNAIL/prod/assets/images/item/101060000/main/ws-cover-navy-main.png">
                        </div>
                        <article>
                            <h2 class="title">면도기 트래블 커버</h2>
                            <h1 class="cost">700원</h1>
                        </article>
                    </li> -->
                </div>
            </div>
        </section>
    </main>
    
    <!-- footer -->
   	<jsp:include page="/app/components/footer.jsp"></jsp:include>
    <!-- -------------- footer end -------------- -->
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	let contextPath = "${pageContext.request.contextPath}";
</script>
<script src="${pageContext.request.contextPath}/assets/js/guide/local.js"></script>
</html>