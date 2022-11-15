package com.localGuide.app.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;
import com.localGuide.app.user.dao.UserDAO;
import com.localGuide.app.user.vo.UserVO;

public class SignUpOkController implements Execute {

	// FrontController에서 받은 req로, 사용할 DAO의 메서드에 전달할 parameter 전달
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");

		UserDAO userDAO = new UserDAO();
		UserVO userVO = new UserVO();
		Result result = new Result();

		userVO.setUserEmail(req.getParameter("userEmail"));
		userVO.setUserPassword(req.getParameter("userPassword"));
		userVO.setUserName(req.getParameter("userName"));
		userVO.setUserPhoneNumber(req.getParameter("userPhoneNumber"));
		userVO.setUserNickname(req.getParameter("userNickname"));
		userVO.setUserGender(req.getParameter("userGender"));
		userVO.setUserBirthday(req.getParameter("userBirthday"));
		userVO.setUserAuthType(req.getParameter("userAuthType")); 
		userVO.setZipCode(req.getParameter("zipCode"));
		userVO.setUserAddress(req.getParameter("userAddress"));
		userVO.setUserAddressDetail(req.getParameter("userAddressDetail"));
//		userVO.setUserDateJoin(req.getParameter("userDateJoin"));    
//		userVO.setUserDetail(req.getParameter("userDetail"));
//		userVO.setUserZipCodeId(req.getParameter("zipCodeId"));
//		userVO.setUserStatus(req.getParameter("userStatus"));
		
		userDAO.signUp(userVO);
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/app/main/index.jsp");

		return result;
	}
}
