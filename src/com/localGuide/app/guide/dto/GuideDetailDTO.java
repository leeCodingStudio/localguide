package com.localGuide.app.guide.dto;

import java.sql.Timestamp;
import java.util.List;

import com.localGuide.app.guideImg.vo.GuideImgVO;

// VO확장판 : JOIN해서 가져올 테이블, 목적에 따라 이름 변경 필요 

// guide랑 guideImg, guideJoin 합치기
// => guide관련 테이블을 guide의 하위 항목으로 둘 지, 지금처럼 패키지 분리시켜야할 지? 
public class GuideDetailDTO {
	
	private Long guideId;
	private Long userId;
	private String guideTitle;
	private String guideContent;
	private Timestamp guideDatePost;
	private Timestamp guideDateUpdate;
	private Timestamp guideDateDelete;
	private Boolean guideStatus;
	private String guideRegion;
	private String guideRegionDetail;
	private String guideMapLat;
	private String guideMapLong;
	private Timestamp guideDateStart;
	private Timestamp guideDateExpire;
	private Long guideCost;
	private String guideChatLink;
	private Integer guideMaxJoin;
	private List<GuideImgVO> guideImg;
	
	public GuideDetailDTO() {;}

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

	public Timestamp getGuideDatePost() {
		return guideDatePost;
	}

	public void setGuideDatePost(Timestamp guideDatePost) {
		this.guideDatePost = guideDatePost;
	}

	public Timestamp getGuideDateUpdate() {
		return guideDateUpdate;
	}

	public void setGuideDateUpdate(Timestamp guideDateUpdate) {
		this.guideDateUpdate = guideDateUpdate;
	}

	public Timestamp getGuideDateDelete() {
		return guideDateDelete;
	}

	public void setGuideDateDelete(Timestamp guideDateDelete) {
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

	public Timestamp getGuideDateStart() {
		return guideDateStart;
	}

	public void setGuideDateStart(Timestamp guideDateStart) {
		this.guideDateStart = guideDateStart;
	}

	public Timestamp getGuideDateExpire() {
		return guideDateExpire;
	}

	public void setGuideDateExpire(Timestamp guideDateExpire) {
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

	public List<GuideImgVO> getGuideImg() {
		return guideImg;
	}

	public void setGuideImg(List<GuideImgVO> guideImg) {
		this.guideImg = guideImg;
	}

	@Override
	public String toString() {
		return "GuideDetailDTO [guideId=" + guideId + ", userId=" + userId + ", guideTitle=" + guideTitle
				+ ", guideContent=" + guideContent + ", guideDatePost=" + guideDatePost + ", guideDateUpdate="
				+ guideDateUpdate + ", guideDateDelete=" + guideDateDelete + ", guideStatus=" + guideStatus
				+ ", guideRegion=" + guideRegion + ", guideRegionDetail=" + guideRegionDetail + ", guideMapLat="
				+ guideMapLat + ", guideMapLong=" + guideMapLong + ", guideDateStart=" + guideDateStart
				+ ", guideDateExpire=" + guideDateExpire + ", guideCost=" + guideCost + ", guideChatLink="
				+ guideChatLink + ", guideMaxJoin=" + guideMaxJoin + ", guideImg=" + guideImg + "]";
	};
	
}
