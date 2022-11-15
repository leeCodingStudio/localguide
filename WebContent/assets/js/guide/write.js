
window.onload=function(){
    var today = new Date();
    today = today.toISOString().slice(0, 10);
    document.getElementById("date").setAttribute("min", today);
    document.getElementById("date").setAttribute("value", today);
};




var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.49947308680958, 127.0359481101853), // 지도의 중심좌표
        level: 9 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 지도를 클릭한 위치에 표출할 마커입니다
var marker = new kakao.maps.Marker({ 
    // 지도 중심좌표에 마커를 생성합니다 
    position: map.getCenter() 
}); 
// 지도에 마커를 표시합니다
marker.setMap(map);

// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    
    // var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
    // message += '경도는 ' + latlng.getLng() + ' 입니다';
    
});

var markers = [];





// 업로드한 파일은 input 객체의 프로퍼티에 존재한다.
const file1 = document.querySelector("#photo1");
// change : 해당 객체에 변화가 있을 때(파일이 업로드 되었을 때)
file1.addEventListener("change", function(e){
    var labelId= "#"+ file1.id + "_upload";
    var reader = new FileReader();
    // 업로드한 파일을 읽어와서 암호화된 URL 정보를 얻을 수 있다.
    reader.readAsDataURL(e.target.files[0]);
    // 전달받은 파일정보를 모두 로딩했을 때
    reader.onload = function(e){
        // 암호화된 절대 경로를 가져와서
        let url = e.target.result;

        // 이미지 파일인지 검사
        if(url.includes("image")){
            // 기존 이미지에서 썸네일 이미지로 대체
            document.querySelector(labelId + " div").style.backgroundImage = "url(" + url +")";
        }else{
            // 미리 준비해놓은 이미지로 대체
            alert('이미지 파일을 선택해주세요.');
        }
    }
});

// 업로드한 파일은 input 객체의 프로퍼티에 존재한다.
const file2 = document.querySelector("#photo2");
// change : 해당 객체에 변화가 있을 때(파일이 업로드 되었을 때)
file2.addEventListener("change", function(e){
    var labelId= "#"+ file2.id + "_upload";
    var reader = new FileReader();
    // 업로드한 파일을 읽어와서 암호화된 URL 정보를 얻을 수 있다.
    reader.readAsDataURL(e.target.files[0]);
    // 전달받은 파일정보를 모두 로딩했을 때
    reader.onload = function(e){
        // 암호화된 절대 경로를 가져와서
        let url = e.target.result;

        // 이미지 파일인지 검사
        if(url.includes("image")){
            // 기존 이미지에서 썸네일 이미지로 대체
            document.querySelector(labelId + " div").style.backgroundImage = "url(" + url +")";
        }else{
            // 미리 준비해놓은 이미지로 대체
            alert('이미지 파일을 선택해주세요.');
        }
    }
});

// 업로드한 파일은 input 객체의 프로퍼티에 존재한다.
const file3 = document.querySelector("#photo3");
// change : 해당 객체에 변화가 있을 때(파일이 업로드 되었을 때)
file3.addEventListener("change", function(e){
    var labelId= "#"+ file3.id + "_upload";
    var reader = new FileReader();
    // 업로드한 파일을 읽어와서 암호화된 URL 정보를 얻을 수 있다.
    reader.readAsDataURL(e.target.files[0]);
    // 전달받은 파일정보를 모두 로딩했을 때
    reader.onload = function(e){
        // 암호화된 절대 경로를 가져와서
        let url = e.target.result;

        // 이미지 파일인지 검사
        if(url.includes("image")){
            // 기존 이미지에서 썸네일 이미지로 대체
            document.querySelector(labelId + " div").style.backgroundImage = "url(" + url +")";
        }else{
            // 미리 준비해놓은 이미지로 대체
            alert('이미지 파일을 선택해주세요.');
        }
    }
});










