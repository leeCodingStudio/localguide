package com.localGuide.app;

import java.util.Map;

public class GuideParameterVO {
	private Map<String, Long> mapStringLong;
	private Map<String, String> mapStringString;
	
	public GuideParameterVO() {;}
	
	public Map<String, Long> getMapStringLong() {
		return mapStringLong;
	}
	public void setMapStringLong(Map<String, Long> mapStringLong) {
		this.mapStringLong = mapStringLong;
	}
	public Map<String, String> getMapStringString() {
		return mapStringString;
	}
	public void setMapStringString(Map<String, String> mapStringString) {
		this.mapStringString = mapStringString;
	}

	@Override
	public String toString() {
		return "GuideParameterVO [mapStringLong=" + mapStringLong + ", mapStringString=" + mapStringString + "]";
	}
	
}
