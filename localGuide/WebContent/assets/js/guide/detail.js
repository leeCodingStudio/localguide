var markerPosition = new kakao.maps.LatLng(
  37.58181383364842,
  126.9427933427254
);
var mapContainer = document.getElementById("map"), // 지도를 표시할 div
  mapOption = {
    center: markerPosition, // 지도의 중심좌표
    level: 3, // 지도의 확대 레벨
  };
// 마커를 생성합니다
var marker = new kakao.maps.Marker({
  position: markerPosition,
});
// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

let $bottom_title = $(".content_bottom_btn");

$bottom_title.on("click", function () {
  $(this)
    .next()
    .toggle(500, function () {
      map.relayout();
      map.setCenter(markerPosition);
    });
});

var $content_bottom = $(".content_bottom").offset().top;
let $content_sticky = $(".content_sticky");

$(window).scroll(function () {
  var $scrT = $(window).scrollTop();

  if ($scrT < $content_bottom) {
    $content_sticky.css("display", "none");
  } else {
    $content_sticky.css("display", "flex");
  }
});

$(".open_kakao").on("click", function () {
  window.open("https://open.kakao.com/o/gDw5MyJe");
});
