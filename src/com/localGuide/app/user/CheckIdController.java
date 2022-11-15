package com.localGuide.app.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;
import com.localGuide.app.user.dao.UserDAO;
import com.localGuide.app.user.vo.UserVO;

public class CheckIdController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		
		userVO.setUserEmail(req.getParameter("userEmail"));
		userVO.setUserAuthType(req.getParameter("userAuthType"));
		resp.getWriter().print(userDAO.checkId(userVO));
		return null;
	}

}
