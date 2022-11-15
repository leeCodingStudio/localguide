package com.localGuide.app.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;
import com.localGuide.app.user.dao.UserDAO;

public class EditController implements Execute {
	
	// FrontController에서 받은 req로, 사용할 DAO의 메서드에 전달할 parameter 전달 
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
//		String userEmail = req.getParameter("userEmail");
		Result result = new Result();
		HttpSession session = req.getSession();
		int userId = (Integer)session.getAttribute("userId");
		/* int userId = Integer.valueOf(req.getParameter("userId")); */
		UserDAO userDAO = new UserDAO();
		
		
		req.setAttribute("user", userDAO.select(userId));
		
//		req.setAttribute("user", userDAO.edit(userEmail));
//		req.setAttribute("user", userDAO.edit(Integer.parseInt(userId)));
//		users 바꿔야 함
		
		result.setPath("/app/user/edit.jsp");
		return result;
	}
}