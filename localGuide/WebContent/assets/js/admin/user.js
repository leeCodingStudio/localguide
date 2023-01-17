// user 목록 생성
/* const UserInfoContainer = document.getElementsByClassName(
  "user-list__info-container"
)[0];

let user = {
  id: "365KOREAJ",
  name: "한동석",
  userID: "bugbug",
  email: "winterstone@cold.com",
  phone: "010-1004-5004",
  join: "2001.01.01",
  recent: "3일 전",
  status: "활성",
  detail: "20대",
};

const addUser = function (user, i) {
  let newUser = document.createElement("div");
  newUser.classList.add("user-list__info-unit");
  let userInfoTemplate = `
  <div class="user-list__info-unit">
    <input
      type="checkbox"
      class="user__checkbox"
      id="user__${user.id + i}"
      name="checkbox"
    />
    <label for="user__${user.id + i}" class="user__checkbox--label">
      <ul class="user-list__info">
        <li class="user__id">${user.id}</li>
        <li class="user__name">${user.name}</li>
        <li class="user__user-id">${user.userID}</li>
        <li class="user__email">${user.email}</li>
        <li class="user__phone">${user.phone}</li>
        <li class="user__join">${user.join}</li>
        <li class="user__recent">${user.recent}</li>
        <li class="user__status">${user.status}</li>
        <li class="user__detail">${user.detail}</li>
      </ul>
    </label>
  </div>
  `;
  newUser.innerHTML = userInfoTemplate;
  UserInfoContainer.appendChild(newUser);
};

for (let i = 0; i < 8; i++) {
  addUser(user, i);
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




