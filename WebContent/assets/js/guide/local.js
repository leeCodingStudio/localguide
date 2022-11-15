let $category_list = $(".category_list");
let $category = $(".category_list li");

let lastContentNumber = 0;
let selectLocal = "전체";
let reload = false;
sessionStorage.setItem("reload", true);

if (sessionStorage.getItem("selectLocal") == null) {
  console.log("null 가능");
  sessionStorage.setItem("selectLocal", null);
}

if (sessionStorage.getItem("selectLocal") != null) {
  $category.each(function (i, li) {
    $(this).siblings(".list_select").removeClass("list_select");
  });
  selectLocal = sessionStorage.getItem("selectLocal");
  $category.each(function (i, li) {
    if ($(this).html() == selectLocal) {
      $(this).addClass("list_select");
    }
  });
}
console.log(window.location.href);
console.log(sessionStorage.getItem("selectLocal"));

$category.on("click", function () {
  selectLocal = $(this).html();
  sessionStorage.setItem("selectLocal", selectLocal);

  $(this).siblings(".list_select").removeClass("list_select");
  $(this).addClass("list_select");

  reload = true;
  // 뭐할라 했더라 ㅅㅂ
  sessionStorage.setItem("reload", reload);

  location.reload();
  // sendLocalList(selectLocal, lastContentNumber, reload);
});

function sendLocalList(selectLocal, lastContentNumber, reload) {
  $.ajax({
    url: contextPath + "/guide/local.guide",
    type: "get",
    data: {
      selectLocal: selectLocal,
      lastContentNumber: lastContentNumber,
      reload: reload,
    },
    dataType: "json",
    success: showLocalList,
    error: function (error) {
      console.log("sendLocalList 작동 안됨");
      console.log(error);
    },
  });
  reload = false;
}

if (sessionStorage.getItem("reload")) {
  console.log("새로고침 시 항상 실행");
  reload = false;
  sessionStorage.setItem("reload", reload);
  console.log(selectLocal);
  sendLocalList(selectLocal, lastContentNumber, reload);
}

function showLocalList(results) {
  console.log(results);
  $(results).each(function (i, result) {
    let templete = `
	    <li>
	        <div>
	            <img
	                src="https://www.ivisitkorea.com/wp-content/uploads/2019/06/travel-guide-featured-e1561596283200.jpg?ezimgfmt=rs%3Adevice%2Frscb18-1">
	        </div>
	        <article>
	            <h2 class="title">${result.guideTitle}</h2>
	            <h1 class="cost">${result.guideCost}</h1>
	        </article>
	    </li>
    	`;

    $(".list_content").append(templete);
    lastContentNumber = result.guideId;
  });
  console.log(lastContentNumber);
  isLoading = false;
}

// 무한 스크롤 구현 중

let isLoading = false;

const loadContents = new IntersectionObserver((entries) => {
  entries.forEach((entry) => {
    if (!entry.isIntersecting) return;
    if (isLoading) return;

    if (entry.isIntersecting) {
      isLoading = true;
      addLocalList(selectLocal);
    }
  });
});

const footer = $("footer")[0];

const footerObserver = loadContents.observe(footer);

function addLocalList(selectLocal) {
  selectLocal == null || selectLocal == "전체"
    ? (selectLocal = "전체")
    : (selectLocal = selectLocal);
  $.ajax({
    url: contextPath + "/guide/local.guide",
    type: "get",
    data: { selectLocal: selectLocal, lastContentNumber: lastContentNumber },
    dataType: "json",
    success: showLocalList,
    error: function (error) {
      console.log("addLocalList 작동 안됨");
      console.log(error);
    },
  });
}
