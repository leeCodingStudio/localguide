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

public class KakaoController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		
		userVO.setUserEmail(req.getParameter("userEmail"));
		userVO.setUserPassword("kakao");
		userVO.setUserAuthType(req.getParameter("userAuthType"));
		System.out.println("카카오 컨트롤러");
		// 비회원일 경우
		if(userDAO.checkId(userVO)) {
			System.out.println("비회원");
			userVO.setUserName(req.getParameter("userName"));
			req.setAttribute("user", userVO);
			req.setAttribute("userAuthType", userVO.getUserAuthType());
			result.setPath("/app/user/signUp.jsp");
		}
		// 회원일 경우
		else {
			System.out.println("회원");
			HttpSession session = req.getSession();
			int userId = userDAO.login(userVO);
			
			result.setPath("/app/main/index.jsp");
			session.setAttribute("userId", userId);
			
		}
		

		
		
		
		return result;
	}

}
