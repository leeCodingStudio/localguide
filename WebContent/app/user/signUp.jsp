<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signUp Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/signUp.css">
</head>
<body>
    <!-- header -->
	<jsp:include page="/app/components/loginHeader.jsp"></jsp:include>
    <!-- -------------- header end --------------  -->

    <!-- signUp -->
    <div id="login-content">
        <div id="left-background">
            <div id="left-wrapper">
                <div id="left-content">
                    <div id="title-wrapper">
                        <div id="title">처음이시군요<span class="login-bold"><br>가입을 진행합니다.</span></div>
                    </div>
                    <form method="post" action="${pageContext.request.contextPath}/user/signUpOk.user" id="form-wrapper">
                    	<input type="hidden" id ="userAuthType" name="userAuthType" value="<c:out value="${param.userAuthType}"/>">
                        <label for="" class="label-wrapper label-id">아이디</label>
                        <input type="email" name="userEmail" id="userEmail" class="input-infor input-id" placeholder="아이디(6자 이상)" value="<c:out value="${user.userEmail}"/>">
                        <p id="warning-id" class="warning warning-id"></p>
                        <div id="div-pw">
	                        <label for="" class="label-wrapper">비밀번호</label>
	                        <input type="password" name="userPassword" class="input-infor input-pw" placeholder="비밀번호(6자 이상)" value="<c:out value="${user.userPassword}"/>">
	                        <span id="eye"></span>
	                        <p class="warning warning-pw"></p>
                        </div>
                        <label for="" class="label-wrapper">휴대폰번호</label>
                        <input type="text" name="userPhoneNumber" class="input-infor input-phonenumber" placeholder="휴대폰 번호('-'제외)">
                        <p class="warning warning-phonenumber"></p>
                        <label for="" class="label-wrapper">생년월일 6자리</label>
                        <input type="text" name="userBirthday" class="input-infor input-age" placeholder="예: 990101">
                        <p class="warning warning-age"></p>
                        <label for="" class="label-wrapper">이름</label>
                        <input type="text" name="userName" class="input-infor input-name" placeholder="이름" value="<c:out value="${user.userName}"/>">
                        <p class="warning warning-name"></p>
                        <div id="gender-wrapper">
                            <div id="gender">성별</div>
                            <div id="gender-check-wrapper">
                                <label><input type="radio" name="userGender" value="남" class="gender-check gender-check1"><span class="gender-mark">남자</span> </label>
                                <div style="width: 45px;"></div>
                                <label><input type="radio" name="userGender" value="여" class="gender-check gender-check2"><span class="gender-mark">여자</span></label>
                                <!-- <div id="man">
                                    <span id="gender-checkbox-man"></span>
                                    <span class="gender-mark" >남자</span>
                                </div>
                                <div id="woman">
                                    <span id="gender-checkbox-woman" style="width: 16px; height: 16px; top: 50%; transform: translateY(-50%);"></span>
                                    <span class="gender-mark">여자</span>
                                </div> -->
                            </div>
                        </div>
						<div id="address-wrapper">
							<label for="" class="label-wrapper">우편번호</label>
							<div style="display: flex;">
								<input type="text" name="zipCode" class="input-infor input-zipCode" id="zipCode" placeholder="우편번호" readonly>
								<input type="button" class="addressButton" onclick="find()" value="우편번호 찾기"><br>
							</div>
							<label for="" class="label-wrapper label-address">주소</label>
							<input type="text" class="input-infor" name="userAddress" id="userAddress" placeholder="주소" readonly>
							<label for="" class="label-wrapper label-address">상세주소</label>
							<input type="text" class="input-infor" name="userAddressDetail" id="userAddressDetail" placeholder="상세주소">
						</div>
						<button type="submit" id="complete-button">가입완료</button>
                        <div id="terms">본인은 만 14세 이상이며, <a>이용약관</a>,<a>개인정보 수집 및 이용</a>,<br><a>개인정보 제공 내용</a>,<a>전자금융거래 약관</a>을 확인 하였으며, 동의합니다.</div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- signUp end -->

    <!-- footer -->
   	<jsp:include page="/app/components/footer.jsp"></jsp:include>
    <!-- -------------- footer end -------------- -->
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/user/signUp.js"></script>
</html>