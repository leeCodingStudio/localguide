<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/guide/write.css">
    <title>write</title>
</head>
<body>
    <!-- header -->
	<jsp:include page="/app/components/header.jsp"></jsp:include>
    <!-- -------------- header end --------------  -->
    <main>
        <section>
            <div class="row">
                <div class="board_top">
                    <h1>게시판 등록</h1>
                </div>
                <form action="${pageContext.request.contextPath}/guide/writeOk.guide" method="post" name="uploadForm">
                	<input type="hidden" name="userId" value="${sessionScope.userId}"> 
                	<input type="hidden" name="guideMapLat" value="1"> 
                	<input type="hidden" name="guideMapLong" value="1"> 
                	<input type="hidden" name="guideImgPath" value="1"> 
                    <div class="write_input">
                        <div class="input_left">
                            <div class="input_div">
                                <label class="input_label">작성자</label>
                                <input type="text" name="guideId" class="input_box"></input>
                            </div>
                            <div class="input_div">
                                <label class="input_label">제목</label>
                                <input type="text" name="guideTitle" class="input_box" placeholder="제목을 작성해주세요.">
                            </div>
                            <div class="input_div">
                                <label class="input_label">비용</label>
                                <input type="number" name="guideCost" class="input_box" placeholder="비용을 작성해주세요.">
                            </div>
                            <div class="input_div">
                                <label class="input_label">최대인원</label>
                                <input type="number" name="guideMaxJoin" class="input_box" placeholder="최대인원을 작성해주세요.">
                            </div>
                            <div class="input_div">
                                <label class="input_label">오픈카카오톡</label>
                                <input type="url" name="guideChatLink" class="input_box" placeholder="오픈 카카오톡 URL을 작성해주세요.">
                            </div>
                            <div class="input_div">
                                <label class="input_label">날짜</label>
                                <input type="date" name="guideDatePost" id="date" class="input_date">
                            </div>
                            <div class="input_div">
                                <label class="input_label">시간</label>
                                <div class="time_div">                                    
                                    <input type="time" name="guideDateStart" class="input_box input_time">
                                    <span>~</span>
                                    <input type="time" name="guideDateExpire" class="input_box input_time">
                                </div>
                            </div>
                            <div class="input_div">
                                <label class="input_label">설명</label>
                                <textarea class="input_box" rows="4"
                                    placeholder="코스 설명을 작성해주세요." name="guideContent"></textarea>
                            </div>
                        </div>
                        <div class="input_right">
                            <div class="input_div">
                                <label class="input_label">장소</label>
                                <div id="map" style="width:100%;height:500px;"></div>
                            </div>
                            <div class="input_div">
                                <label class="input_label">지역 카테고리</label>
                                <select class="input_box" name="guideRegion">
                                    <option selected disabled>지역을 선택해주세요.</option>
                                    <option>서울</option>
                                    <option>경기도</option>
                                    <option>강원도</option>
                                    <option>충청도</option>
                                    <option>전라도</option>
                                    <option>경상도</option>
                                    <option>제주도</option>
                                </select>
                            </div>
                            <div class="input_div">
                                <label class="input_label">상세 지역</label>
                                <input type="text" class="input_box" placeholder="상세 주소를 작성해주세요." name="guideRegionDetail">
                            </div>
                        </div>
                        <div class="input_bottom">
                            <div class="input_div">
                                <label class="input_label">사진</label>
                                <div class="photo_div">
                                    <label for="photo1" id="photo1_upload" class="photo_upload">
                                        <div></div>
                                    </label>
                                    <label for="photo2" id="photo2_upload" class="photo_upload">
                                        <div></div>
                                    </label>
                                    <label for="photo3" id="photo3_upload" class="photo_upload">
                                        <div></div>
                                    </label>
                                </div>
                                <input type="file" class="photo_file" id="photo1" name="guideImgId">
                                <input type="file" class="photo_file" id="photo2" name="guideImgId">
                                <input type="file" class="photo_file" id="photo3" name="guideImgId">
                            </div>
                            <div class="submit_btn">
                                <button type="submit" class="black_btn">올리기</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </main>
    
    <!-- footer -->
   	<jsp:include page="/app/components/footer.jsp"></jsp:include>
    <!-- -------------- footer end -------------- -->
</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eebd1a245de1567d5bc637d908b803dc"></script>
<script src="${pageContext.request.contextPath}/assets/js/guide/apiKey.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/guide/write.js"></script>
</html>