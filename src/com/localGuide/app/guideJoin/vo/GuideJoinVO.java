package com.localGuide.app.guideJoin.vo;

//SQL 테이블과 정확히 일치해야함. SQL테이블 하나당 VO 하나. 
//주고받을 여러 필드값을 하나의 객체로 만듦
public class GuideJoinVO {

	private Long guideJoinId;
	private Long guideId;
	private Long userId;
	
	public Long getGuideJoinId() {
		return guideJoinId;
	}

	public void setGuideJoinId(Long guideJoinId) {
		this.guideJoinId = guideJoinId;
	}

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

	// TblGuideJoin 모델 복사
	public void CopyData(GuideJoinVO param) {
		this.guideJoinId = param.getGuideJoinId();
		this.guideId = param.getGuideId();
		this.userId = param.getUserId();
	}

	@Override
	public String toString() {
		return "GuideJoinVO [guideJoinId=" + guideJoinId + ", guideId=" + guideId + ", userId=" + userId + "]";
	}
}