package com.localGuide.app.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;
import com.localGuide.app.user.dao.UserDAO;
import com.localGuide.app.user.vo.UserVO;

public class UpdateController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		Result result = new Result();
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		
		userVO.setUserId(Long.valueOf(req.getParameter("userId")));
		userVO.setUserPassword(req.getParameter("userPassword"));
		userVO.setUserName(req.getParameter("userName"));
		userVO.setUserPhoneNumber(req.getParameter("userPhoneNumber"));
		userVO.setUserBirthday(req.getParameter("userBirthday"));
		
		
		userDAO.update(userVO);
		
		result.setPath("/user/edit.user");
		return result;
	}

}
