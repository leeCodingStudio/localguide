/* 초기화면 : subscription, 
첫번째 메뉴에서 두번째 메뉴를 누르면
첫번째 메뉴의 css에다가 transform="translate(-700px)"과
두번째 메뉴의 css에다가 transfrom="translate(-700px)"를 동일하게 준다.

두번째 메뉴에서 첫번째 메뉴를 누르면
두번째 메뉴의 trnasform="translate(700px)"과
첫번째 메뉴의 transform="translate(700px)"를 동일하게 준다. 
*/


const subscription = document.querySelector("div.subscription");
const writeContent = document.querySelector("div.write-content");
const edit = document.querySelector("div.edit-wrap");

/*const firstBtn = document.querySelector("div.write-guide");
const secondBtn = document.querySelector("div.check-guide");*/
/*const thirdBtn = document.querySelector("div.edit");*/

/*firstBtn.addEventListener("click", function(){
    writeContent.style.transform = "translate(0px)";
    subscription.style.transform = "translate(0px)";
    edit.style.transform = "translate(0px)";

    firstBtn.style.color = "black";
    secondBtn.style.color = "#838383";
    
});*/

/*secondBtn.addEventListener("click", function(){
    subscription.style.transform = "translate(-700px)";
    writeContent.style.transform = "translate(-700px)";
    edit.style.transform = "translate(-700px)";
    
    secondBtn.style.color = "black";
    firstBtn.style.color = "#838383";
});*/

/*thirdBtn.addEventListener("click", function(){
    edit.style.transform = "translate(-1400px)";
    subscription.style.transform = "translate(700px)";
    writeContent.style.transform = "translate(700px)";

});*/

const editInfo = document.querySelector(".userInfoUpdate");
const inputInfo = document.querySelectorAll(".inputInfo");
const passWord = document.querySelector(".passWord");
const passWordInput = document.querySelector(".passWordInput");
/*const eye = document.querySelector("#eye");*/

// 수정 눌렀을때 수정완료로 텍스트 변경되고 변경된 수정완료 한번 더 눌렀을 때 update
var clickEdit = 0;

editInfo.addEventListener("click", function(){
	editInfo.innerHTML = "수정완료";
	/*passWord.style.display = "none";
	passWordInput.style.display = "none";*/
	for(var i =0; inputInfo.length; i++){
		var item = inputInfo.item(i);
		item.readOnly = false;
		/*eye.style.visibility = "hidden";*/
	}
	
})

/* 비밀번호 눈 표시 */

const password = document.querySelector(".passWordInput");
var clickEye = 0;



//
const form = document.getElementById("editForm");

	var clickUpdate = 0;
	
	
	const update = document.querySelector(".userInfoUpdate");
	update.addEventListener("click", function(){
  		clickUpdate++;
 		if(clickUpdate == 2){
			/* window.location.href = "/user/update.user?userId=14"; */
			form.submit();
 		}
	});

