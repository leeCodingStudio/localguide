package com.localGuide.app;

// Controller에서 전달할 경로와 방법  
public class Result {
	private String path;
	private boolean isRedirect;
	
	public Result() {;}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
}

