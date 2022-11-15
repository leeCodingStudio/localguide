package com.localGuide.app.main;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;

public class MainController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		
//		resp.setContentType("application/json;charset=utf-8");
		System.out.println("메인 컨트롤러");
		
		result.setPath("/app/main/index.jsp");
		
		return result;
	}

}
