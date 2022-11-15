/* --------------- login 부분 id, pw 부분 입력 했을 때 다음 버튼 활성화 --------------- */
const inputEmail = document.querySelector(".input-email");
const p = document.querySelector("p");

const inputPw = document.querySelector(".input-pw");
const p2 = document.querySelector("#warning2");

const body = document.querySelector("body");
const nextBtn = document.querySelector("#next-button");

var check1 = false;
var check2 = false;

/* 다음 버튼 활성화 */
body.addEventListener("click", function() {
	if (check1 && check2) {
		nextBtn.style.backgroundColor = "black";
	} else {
		nextBtn.style.backgroundColor = "#cbcbcb";
	}
	console.log(check1, check2);
});

body.addEventListener("input", function() {
	if (check1 && check2) {
		nextBtn.style.backgroundColor = "black";
		nextBtn.style.cursor = "pointer";
	} else {
		nextBtn.style.backgroundColor = "#cbcbcb";
		nextBtn.style.cursor = "default";
	}
});

/* id 부분 입력 안했을 때 경고 p 태그 보이게 하고 입력 했을 땐 안보이게 */
inputEmail.addEventListener("click", function() {
	if (inputEmail.value) {
		p.style.visibility = "hidden";
	} else {
		p.style.visibility = "visible";
	}
});

inputEmail.addEventListener("input", function() {
	if (inputEmail.value) {
		p.style.visibility = "hidden";
		check1 = true;
	} else {
		p.style.visibility = "visible";
		check1 = false;
	}
});

/* pw 부분 입력 안했을 때 경고 p 태그 보이게 하고 입력 했을 땐 안보이게 */
inputPw.addEventListener("click", function() {
	if (inputPw.value) {
		p2.style.visibility = "hidden";
	} else {
		p2.style.visibility = "visible";
	}
});

inputPw.addEventListener("input", function() {
	if (inputPw.value) {
		p2.style.visibility = "hidden";
		check2 = true;
	} else {
		p2.style.visibility = "visible";
		check2 = false;
	}
})

/* 이메일로 시작하기 옆에 화살표 눌렀을 때 화살표 모양 바뀌고 id, pw 입력창 보이기 or 안보이게 하기 */
const button = document.querySelector("#hwasal");
const change = document.querySelector("#email-form");
const forgotEmail = document.querySelector("#forgot-email-box");
var count = 0;
button.addEventListener("click", function() {
	if (count % 2 == 0) {
		button.style.transform = "rotate(-180deg)";
		change.style.visibility = "visible";
		forgotEmail.style.visibility = "visible";
	} else {
		button.style.transform = "rotate(0)";
		change.style.visibility = "hidden";
		p.style.visibility = "hidden";
		forgotEmail.style.visibility = "hidden";
	}
	count++;
})
/* --------------- login end --------------- */


/* -------------눈 모양 눌렀을 때 비밀번호 표시, 반대로 다시 눌렀을 때 비밀번호 안보이게 하기------------- */
const kakao_button = document.querySelector("#kakao-login");
/*const eye = document.querySelector("#eye");*/
const password = document.querySelector(".input-pw");
var clickEye = 0;



Kakao.init('e709a77aeeccc9f0d17f6ee47e7eb9a3'); //발급받은 키 중 javascript키를 사용해준다.
//카카오로그인
function kakaoLogin() {
	Kakao.Auth.login({
		success: function(response) {
			Kakao.API.request({
				url: '/v2/user/me',
				success: function(response) {
					var account = response.kakao_account;
					$('#form-kakao-login input[name=userEmail]').val(account.email);
					$('#form-kakao-login input[name=userName]').val(account.profile.nickname);
					document.querySelector('#form-kakao-login').submit();
					console.log(response)
				},
				fail: function(error) {
					console.log(error)
				},
			})
		},
		fail: function(error) {
			console.log(error)
		},
	})
}

