package com.localGuide.app.guideImg.vo;

//SQL 테이블과 정확히 일치해야함. SQL테이블 하나당 VO 하나. 
//주고받을 여러 필드값을 하나의 객체로 만듦
public class GuideImgVO {

    private Long guideImgId;
    private Long guideId;
    private String guideImgPath;
    private String guideImgName;

    public Long getGuideImgId() {
        return guideImgId;
    }

    public void setGuideImgId(Long guideImgId) {
        this.guideImgId = guideImgId;
    }

    public Long getGuideId() {
        return guideId;
    }

    public void setGuideId(Long guideId) {
        this.guideId = guideId;
    }

    public String getGuideImgPath() {
        return guideImgPath;
    }

    public void setGuideImgPath(String guideImgPath) {
        this.guideImgPath = guideImgPath;
    }
    
    public String getGuideImgName() {
		return guideImgName;
	}

	public void setGuideImgName(String guideImgName) {
		this.guideImgName = guideImgName;
	}

	// TblGuideImg 모델 복사
    public void CopyData(GuideImgVO param)
    {
        this.guideImgId = param.getGuideImgId();
        this.guideId = param.getGuideId();
        this.guideImgPath = param.getGuideImgPath();
        this.guideImgName = param.getGuideImgName();
    }

	@Override
	public String toString() {
		return "GuideImgVO [guideImgId=" + guideImgId + ", guideId=" + guideId + ", guideImgPath=" + guideImgPath
				+ ", guideImgName=" + guideImgName + "]";
	}

}