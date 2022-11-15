package com.localGuide.app.admin.dto;

import java.sql.Timestamp;
import java.util.List;

import com.localGuide.app.guide.vo.GuideVO;
import com.localGuide.app.user.vo.UserVO;

// VO확장판 : JOIN해서 가져올 테이블, 목적에 따라 이름 변경 필요 
public class GuideDTO {
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
	/* private List<UserVO> userId; */

	public GuideDTO() {
		;
	}

	public Long getGuideId() {
		return guideId;
	}

	public void setGuideId(Long guideId) {
		this.guideId = guideId;
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

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
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
		return "GuideDTO [guideId=" + guideId + ", guideTitle=" + guideTitle + ", guideContent=" + guideContent
				+ ", guideDatePost=" + guideDatePost + ", guideDateUpdate=" + guideDateUpdate + ", guideDateDelete="
				+ guideDateDelete + ", guideStatus=" + guideStatus + ", guideRegion=" + guideRegion
				+ ", guideRegionDetail=" + guideRegionDetail + ", guideMapLat=" + guideMapLat + ", guideMapLong="
				+ guideMapLong + ", guideDateStart=" + guideDateStart + ", guideDateExpire=" + guideDateExpire
				+ ", guideCost=" + guideCost + ", guideChatLink=" + guideChatLink + ", guideMaxJoin=" + guideMaxJoin
				+ ", userId=" + userId + "]";
	}

}
