package com.localGuide.app.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;
import com.localGuide.app.user.dao.UserDAO;

public class DeleteController implements Execute {
	
	// FrontController에서 받은 req로, 사용할 DAO의 메서드에 전달할 parameter 전달 
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		int userId = Integer.valueOf(req.getParameter("userId"));
		UserDAO userDAO = new UserDAO();
		
		userDAO.delete(userId);
		
		req.getSession().invalidate();
		result.setRedirect(true);
		result.setPath("/user/login.user");
		return result;
	}
}