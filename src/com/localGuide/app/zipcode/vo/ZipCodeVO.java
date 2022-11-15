package com.localGuide.app.zipcode.vo;

// SQL 테이블과 정확히 일치해야함. SQL테이블 하나당 VO 하나. 
// 주고받을 여러 필드값을 하나의 객체로 만듦
public class ZipCodeVO {

    private String zipCodeId;
    private String zipCodeRegion;
    private String zipCodeRegionDetail;

    public String getZipCodeId() {
        return zipCodeId;
    }

    public void setZipCodeId(String zipCodeId) {
        this.zipCodeId = zipCodeId;
    }

    public String getZipCodeRegion() {
        return zipCodeRegion;
    }

    public void setZipCodeRegion(String zipCodeRegion) {
        this.zipCodeRegion = zipCodeRegion;
    }

    public String getZipCodeRegionDetail() {
        return zipCodeRegionDetail;
    }

    public void setZipCodeRegionDetail(String zipCodeRegionDetail) {
        this.zipCodeRegionDetail = zipCodeRegionDetail;
    }

    // TblZipCode 모델 복사
    public void CopyData(ZipCodeVO param)
    {
        this.zipCodeId = param.getZipCodeId();
        this.zipCodeRegion = param.getZipCodeRegion();
        this.zipCodeRegionDetail = param.getZipCodeRegionDetail();
    }

	@Override
	public String toString() {
		return "ZipCodeVO [zipCodeId=" + zipCodeId + ", zipCodeRegion=" + zipCodeRegion + ", zipCodeRegionDetail="
				+ zipCodeRegionDetail + "]";
	}
}