// content 목록 생성
/*const contentInfoContainer = document.getElementsByClassName(
  "content-list__info-container"
)[0];

let content = {
  id: "1589073",
  title: "동네주민이 가는 진짜 맛집",
  userID: "bugbug",
  location: "서울",
  locationDetail: "역삼",
  ip: "1.234.567.89",
  datePost: "2022.10.17",
  dateUpdate: "2022.10.25",
  dateDelete: "NULL",
  detail: "모달창팝업",
};

const addcontent = function (content, i) {
  console.log(content.datePost);
  let newcontent = document.createElement("div");
  newcontent.classList.add("content-list__info-unit");
  let contentInfoTemplate = `
  <div class="content-list__info-unit">
    <input
      type="checkbox"
      class="content__checkbox"
      id="content__${content.id + i}"
      name="checkbox"
    />
    <label for="content__${content.id + i}" class="content__checkbox--label">
      <ul class="content-list__info">
        <li class="content__id">${content.id}</li>
        <li class="content__title">${content.title}</li>
        <li class="content__user-id">${content.userID}</li>
        <li class="content__location">${content.location}</li>
        <li class="content__location-detail">${content.locationDetail}</li>
        <li class="content__ip">${content.ip}</li>
        <li class="content__date-post">${content.datePost}</li>
        <li class="content__date-update">${content.dateUpdate}</li>
        <li class="content__date-delete">${content.dateDelete}</li>
        <li class="content__detail">${content.detail}</li>
      </ul>
    </label>
  </div>
  `;
  newcontent.innerHTML = contentInfoTemplate;
  contentInfoContainer.appendChild(newcontent);
};

for (let i = 0; i < 8; i++) {
  addcontent(content, i);
}*/

// 전체 선택 체크박스
const checkBoxAll = document.getElementsByName("checkbox-all");
const checkBox = document.querySelectorAll('input[name = "checkbox"]');
const checkBoxChecked = document.querySelectorAll(
  'input[name = "checkbox"]:checked'
);

const selectAll = function () {
  if (checkBoxAll[0].checked) {
    checkBox.forEach((e) => (e.checked = true));
  }
  if (!checkBoxAll[0].checked) {
    checkBox.forEach((e) => (e.checked = false));
  }
};

const checkSelectAll = function () {
  if (checkBox.length === checkBoxChecked.length) {
    checkBoxAll[0].checked = true;
  } else if (checkBox.length != checkBoxChecked.length) {
    checkBoxAll[0].checked = false;
  }
  console.log(checkBox.length);
};

checkBoxAll[0].addEventListener("click", selectAll);
checkBox.forEach((e) => {
  e.addEventListener("click", checkSelectAll);
});

console.log(checkBoxChecked);
