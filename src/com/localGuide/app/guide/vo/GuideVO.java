package com.localGuide.app.guide.vo;

import java.sql.Timestamp;

//SQL 테이블과 정확히 일치해야함. SQL테이블 하나당 VO 하나. 
//주고받을 여러 필드값을 하나의 객체로 만듦
public class GuideVO {

	private Long guideId;
	private Long userId;
	private String guideTitle;
	private String guideContent;
	private String guideDatePost;
	private String guideDateUpdate;
	private String guideDateDelete;
	private Boolean guideStatus;
	private String guideRegion;
	private String guideRegionDetail;
	private String guideMapLat;
	private String guideMapLong;
	private String guideDateStart;
	private String guideDateExpire;
	private Long guideCost;
	private String guideChatLink;
	private Integer guideMaxJoin;

	public Long getGuideId() {
		return guideId;
	}

	public void setGuideId(Long guideId) {
		this.guideId = guideId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getGuideTitle() {
		return guideTitle;
	}

	public void setGuideTitle(String guideTitle) {
		this.guideTitle = guideTitle;
	}

	public String getGuideContent() {
		return guideContent;
	}

	public void setGuideContent(String guideContent) {
		this.guideContent = guideContent;
	}

	public String getGuideDatePost() {
		return guideDatePost;
	}

	public void setGuideDatePost(String guideDatePost) {
		this.guideDatePost = guideDatePost;
	}

	public String getGuideDateUpdate() {
		return guideDateUpdate;
	}

	public void setGuideDateUpdate(String guideDateUpdate) {
		this.guideDateUpdate = guideDateUpdate;
	}

	public String getGuideDateDelete() {
		return guideDateDelete;
	}

	public void setGuideDateDelete(String guideDateDelete) {
		this.guideDateDelete = guideDateDelete;
	}

	public Boolean getGuideStatus() {
		return guideStatus;
	}

	public void setGuideStatus(Boolean guideStatus) {
		this.guideStatus = guideStatus;
	}

	public String getGuideRegion() {
		return guideRegion;
	}

	public void setGuideRegion(String guideRegion) {
		this.guideRegion = guideRegion;
	}

	public String getGuideRegionDetail() {
		return guideRegionDetail;
	}

	public void setGuideRegionDetail(String guideRegionDetail) {
		this.guideRegionDetail = guideRegionDetail;
	}

	public String getGuideMapLat() {
		return guideMapLat;
	}

	public void setGuideMapLat(String guideMapLat) {
		this.guideMapLat = guideMapLat;
	}

	public String getGuideMapLong() {
		return guideMapLong;
	}

	public void setGuideMapLong(String guideMapLong) {
		this.guideMapLong = guideMapLong;
	}

	public String getGuideDateStart() {
		return guideDateStart;
	}

	public void setGuideDateStart(String guideDateStart) {
		this.guideDateStart = guideDateStart;
	}

	public String getGuideDateExpire() {
		return guideDateExpire;
	}

	public void setGuideDateExpire(String guideDateExpire) {
		this.guideDateExpire = guideDateExpire;
	}

	public Long getGuideCost() {
		return guideCost;
	}

	public void setGuideCost(Long guideCost) {
		this.guideCost = guideCost;
	}

	public String getGuideChatLink() {
		return guideChatLink;
	}

	public void setGuideChatLink(String guideChatLink) {
		this.guideChatLink = guideChatLink;
	}

	public Integer getGuideMaxJoin() {
		return guideMaxJoin;
	}

	public void setGuideMaxJoin(Integer guideMaxJoin) {
		this.guideMaxJoin = guideMaxJoin;
	}

	// TblGuide 모델 복사
	public void CopyData(GuideVO param) {
		this.guideId = param.getGuideId();
		this.userId = param.getUserId();
		this.guideTitle = param.getGuideTitle();
		this.guideContent = param.getGuideContent();
		this.guideDatePost = param.getGuideDatePost();
		this.guideDateUpdate = param.getGuideDateUpdate();
		this.guideDateDelete = param.getGuideDateDelete();
		this.guideStatus = param.getGuideStatus();
		this.guideRegion = param.getGuideRegion();
		this.guideRegionDetail = param.getGuideRegionDetail();
		this.guideMapLat = param.getGuideMapLat();
		this.guideMapLong = param.getGuideMapLong();
		this.guideDateStart = param.getGuideDateStart();
		this.guideDateExpire = param.getGuideDateExpire();
		this.guideCost = param.getGuideCost();
		this.guideChatLink = param.getGuideChatLink();
		this.guideMaxJoin = param.getGuideMaxJoin();
	}

	@Override
	public String toString() {
		return "GuideVO [guideId=" + guideId + ", userId=" + userId + ", guideTitle=" + guideTitle + ", guideContent="
				+ guideContent + ", guideDatePost=" + guideDatePost + ", guideDateUpdate=" + guideDateUpdate
				+ ", guideDateDelete=" + guideDateDelete + ", guideStatus=" + guideStatus + ", guideRegion="
				+ guideRegion + ", guideRegionDetail=" + guideRegionDetail + ", guideMapLat=" + guideMapLat
				+ ", guideMapLong=" + guideMapLong + ", guideDateStart=" + guideDateStart + ", guideDateExpire="
				+ guideDateExpire + ", guideCost=" + guideCost + ", guideChatLink=" + guideChatLink + ", guideMaxJoin="
				+ guideMaxJoin + "]";
	}
}
