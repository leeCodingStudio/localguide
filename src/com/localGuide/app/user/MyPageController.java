package com.localGuide.app.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;

public class MyPageController implements Execute {
	
	// FrontController에서 받은 req로, 사용할 DAO의 메서드에 전달할 parameter 전달 
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		return null;
	}
}