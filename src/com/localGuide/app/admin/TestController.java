package com.localGuide.app.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;
import com.localGuide.app.admin.dao.AdminDAO;

public class TestController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		
//		AdminDAO adminDAO = new AdminDAO();
		Result result = new Result();
		System.out.println("컨트롤러");
		result.setPath("/app/admin/user.jsp");
		
		return result;
	}

}
