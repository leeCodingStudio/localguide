package com.localGuide.app;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Controller에서 사용할 메서드 interface
public interface Execute {
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException;
}