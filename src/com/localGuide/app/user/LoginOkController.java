package com.localGuide.app.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;
import com.localGuide.app.user.dao.UserDAO;
import com.localGuide.app.user.vo.UserVO;

public class LoginOkController implements Execute {
	
	// FrontController에서 받은 req로, 사용할 DAO의 메서드에 전달할 parameter 전달 
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		int userId = 0;
		UserDAO userDAO = new UserDAO();
		UserVO userVO = new UserVO();
		Result result = new Result();
		HttpSession session = req.getSession();
		
		
		userVO.setUserEmail(req.getParameter("userEmail"));
		userVO.setUserPassword(req.getParameter("userPassword"));
		userVO.setUserAuthType(req.getParameter("userAuthType"));
		
		try {
			userId = userDAO.login(userVO);
			result.setPath("/app/main/index.jsp");
			session.setAttribute("userId", userId);
		} catch (Exception e) {
			result.setPath("/user/login.user?login=false");
		}
		
		return result;
	}
}