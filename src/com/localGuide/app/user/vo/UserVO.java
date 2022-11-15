package com.localGuide.app.user.vo;

import java.sql.Timestamp;

// SQL 테이블과 정확히 일치해야함. SQL테이블 하나당 VO 하나. 
// 주고받을 여러 필드값을 하나의 객체로 만듦
public class UserVO {

	private Long userId;
	private String userEmail;
	private String userPassword;
	private String userName;
	private String userPhoneNumber;
	private String userNickname;
	private String userGender;
	private String userBirthday;
	private String zipCode;
	private String userAddress;
	private String userAddressDetail;
	private Timestamp userDateJoin;
	private String userDetail;
	private String userAuthType;
	private Boolean userStatus;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhoneNumber() {
		return userPhoneNumber;
	}

	public void setUserPhoneNumber(String userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserBirthday() {
		return userBirthday;
	}

	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserAddressDetail() {
		return userAddressDetail;
	}

	public void setUserAddressDetail(String userAddressDetail) {
		this.userAddressDetail = userAddressDetail;
	}

	public Timestamp getUserDateJoin() {
		return userDateJoin;
	}

	public void setUserDateJoin(Timestamp userDateJoin) {
		this.userDateJoin = userDateJoin;
	}

	public String getUserDetail() {
		return userDetail;
	}

	public void setUserDetail(String userDetail) {
		this.userDetail = userDetail;
	}

	public String getUserAuthType() {
		return userAuthType;
	}

	public void setUserAuthType(String userAuthType) {
		this.userAuthType = userAuthType;
	}

	public Boolean getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(Boolean userStatus) {
		this.userStatus = userStatus;
	}

	// TblUser 모델 복사
	public void CopyData(UserVO param) {
		this.userId = param.getUserId();
		this.userEmail = param.getUserEmail();
		this.userPassword = param.getUserPassword();
		this.userName = param.getUserName();
		this.userPhoneNumber = param.getUserPhoneNumber();
		this.userNickname = param.getUserNickname();
		this.userGender = param.getUserGender();
		this.userBirthday = param.getUserBirthday();
		this.userAddress = param.getUserAddress();
		this.userDateJoin = param.getUserDateJoin();
		this.userDetail = param.getUserDetail();
		this.userAuthType = param.getUserAuthType();
		this.userStatus = param.getUserStatus();
	}

	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userEmail=" + userEmail + ", userPassword=" + userPassword
				+ ", userName=" + userName + ", userPhoneNumber=" + userPhoneNumber + ", userNickname=" + userNickname
				+ ", userGender=" + userGender + ", userBirthday=" + userBirthday + ", userAddress=" + userAddress
				+ ", userDateJoin=" + userDateJoin + ", userDetail=" + userDetail + ", userAuthType=" + userAuthType
				+ ", userStatus=" + userStatus + "]";
	}

}
