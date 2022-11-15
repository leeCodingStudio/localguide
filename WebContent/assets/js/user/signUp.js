HTMLCollection.prototype.forEach = Array.prototype.forEach;

/* -------------눈 모양 눌렀을 때 비밀번호 표시와 눈 모양 변경, 다시 눌렀을 때 돌아오기--------------- */
const eye = document.querySelector("#eye");
const password = document.querySelector(".input-pw");
var clickEye = 0;

eye.addEventListener("click", function(){
    if(clickEye % 2 == 1){
        eye.style.background = "url('/localGuide/assets/img/user/signUp/eye.svg')";
        password.type = "password";
    } else {
        eye.style.background = "url('/localGuide/assets/img/user/signUp/closeEye.svg')";
        password.type = "text";
    }
    clickEye++;
});
/* ---------------------------------------- */

/* 로고 눌렀을 때 메인페이지로 이동 */

/* ---------------------------------------- */

/* 모든 input 태그 입력, 성별 선택 했을 때 가입완료 버튼 활성화, 하나라도 입력 안했을 때 비활성화 */

	const inputAuthType = document.querySelector("#userAuthType");

    const inputId = document.querySelector(".input-id");
    const pId = document.querySelector(".warning-id");


	const divPw = document.querySelector("#div-pw");
    const inputPw = document.querySelector(".input-pw");
    const pPw = document.querySelector(".warning-pw");

    const inputPhonenumber = document.querySelector(".input-phonenumber");
    const pPhonenumber = document.querySelector(".warning-phonenumber");

    const inputAge = document.querySelector(".input-age");
    const pAge = document.querySelector(".warning-age");

    const inputName = document.querySelector(".input-name");
    const pName = document.querySelector(".warning-name");

    const body = document.querySelector("body");

    const completeBtn = document.querySelector("#complete-button");
    
    const gender1 = document.querySelector(".gender-check1");
    const gender2 = document.querySelector(".gender-check2");

	const zipCode = document.querySelector("#zipCode");
	const address = document.querySelector("#userAddressDetail");

	

    var check1 = false;
    var check2 = false;
    var check3 = false;
    var check4 = false;
    var check5 = false;
    var check6 = false;
	var check7 = false;
	var check8 = false;

    body.addEventListener("keyup", function(){
        if(check1 && check2 && check3 && check4 && check5 && check6 && check7 && check8){
            completeBtn.style.backgroundColor = "black";
            completeBtn.style.cursor = "pointer";
        }else{
            completeBtn.style.backgroundColor = "#cbcbcb";
            completeBtn.style.cursor = "default";
        }
        console.log(check1, check2, check3, check4, check5, check6, check7, check8);
    });
    
    body.addEventListener("click", function(){
        if(check1 && check2 && check3 && check4 && check5 && check6 && check7 && check8){
            completeBtn.style.backgroundColor = "black";
            completeBtn.style.cursor = "pointer";
        }else{
            completeBtn.style.backgroundColor = "#cbcbcb";
            completeBtn.style.cursor = "default";
        }
        console.log(check1, check2, check3, check4, check5, check6, check7, check8);
    });

    

    /*inputId.addEventListener("click",function(){
        if(inputId.value){
            pId.style.visibility = "hidden";
        } else{
            pId.style.visibility = "visible";
        }
    });

    inputId.addEventListener("input",function(){
        if(inputId.value){
            pId.style.visibility = "hidden";
            check1 = true;
        } else{
            pId.style.visibility = "visible";
            check1 = false;
        }
    });*/

    inputPw.addEventListener("click",function(){
        if(inputPw.value){
            pPw.style.visibility = "hidden";
        } else{
            pPw.style.visibility = "visible";
        }
    });

    inputPw.addEventListener("input",function(){
        if(inputPw.value){
            pPw.style.visibility = "hidden";
            check2 = true;
        } else{
            pPw.style.visibility = "visible";
            check2 = false;
        }
    });

    inputPhonenumber.addEventListener("click",function(){
        if(inputPhonenumber.value){
            pPhonenumber.style.visibility = "hidden";
        } else{
            pPhonenumber.style.visibility = "visible";
        }
    });

    inputPhonenumber.addEventListener("input",function(){
        if(inputPhonenumber.value){
            pPhonenumber.style.visibility = "hidden";
            check3 = true;
        } else{
            pPhonenumber.style.visibility = "visible";
            check3 = false;
        }
    });

    inputAge.addEventListener("click",function(){
        if(inputAge.value){
            pAge.style.visibility = "hidden";
        } else{
            pAge.style.visibility = "visible";
        }
    });

    inputAge.addEventListener("input",function(){
        if(inputAge.value){
            pAge.style.visibility = "hidden";
            check4 = true;
        } else{
            pAge.style.visibility = "visible";
            check4 = false;
        }
    });

    inputName.addEventListener("click",function(){
        if(inputName.value){
            pName.style.visibility = "hidden";
        } else{
            pName.style.visibility = "visible";
        }
    });

    inputName.addEventListener("input",function(){
        if(inputName.value){
            pName.style.visibility = "hidden";
            check5 = true;
        } else{
            pName.style.visibility = "visible";
            check5 = false;
        }
    });

    gender1.addEventListener("click", function(){
        if(gender1.value){
            check6 = true;
        } else {
            check6 = false;
        }
    })

    gender2.addEventListener("click", function(){
        if(gender2.value){
            check6 = true;
        } else {
            check6 = false;
        }
    })

    address.addEventListener("input",function(){
        if(address.value){
            pPw.style.visibility = "hidden";
            check8 = true;
        } else{
            pPw.style.visibility = "visible";
            check8 = false;
        }
    });

    /* -------------------------------------------------------- */



window.onload = function(){
	if(inputAuthType.value=="kakao"){
		inputId.readOnly = true;
		divPw.style.display = "none";
		check1 = true;
		check2 = true;
		check5 = true;
	}
	else{
		$("#userEmail").on("blur", function(){checkId($(this).val());});

	}
}

let emailCheck = false;	
function checkId(userEmail){
	emailCheck = false;
	if(!userEmail){
		$("#warning-id").text("아이디를 입력해주세요.");
		$("#warning-id").css("color", "red");
		check1 = false;
		return;
	}
	console.log(userEmail);
	
	
	$.ajax({
		url: "/user/checkId.user",
		data: {"userEmail": userEmail, "userAuthType": "email"},
		success: function(result){
			let message, color;
			if(result == "true"){
				message = "사용 가능한 아이디입니다.";
				color = "blue";
				emailCheck = true;
				check1 = true;
			}else{
				message = "중복된 아이디입니다.";
				color = "red";
				check1 = false;
			}
			$("#warning-id").css("color", color);
			$("#warning-id").text(message);
		},
		error: function(a, b, c){
			console.log(a, b, c);
		}
	});
}

function find(){
	new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipCode').value = data.zonecode;
                document.getElementById("userAddress").value = addr;
				check7=true;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("userAddressDetail").focus();
            }
        }).open();
}