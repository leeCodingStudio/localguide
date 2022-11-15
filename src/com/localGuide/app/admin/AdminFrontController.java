package com.localGuide.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Result;

public class AdminFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		Result result = null;
		
		// 선행 조건 : 로그인 세션 확인 해야함. 접근 권한 없으면 메인페이지로 redirect
		if(target.equals("/admin/home.admin")) {
			// 관리자 홈으로 오면 보여줄 페이지
			// DB조회 필요 Controller 필요
//			result = new HomeController().excute(req, resp);
			
			result = new Result();
			result.setPath("/app/admin/home.jsp");
			
		}else if(target.equals("/admin/user.admin")) {
			// 회원관리로 오면 보여줄 페이지
			// DB조회 필요
			result = new UserController().execute(req, resp);
			
		}else if(target.equals("/admin/guide.admin")) {
			// 컨텐츠관리로 오면 보여줄 페이지
			// DB조회 필요
			result = new GuideController().execute(req, resp);
			
			
		}else if(target.equals("/admin/support.admin")) {
			// 문의관리로 오면 보여줄 페이지
			
		}else if(target.equals("/admin/logout.admin")) {
			// admin 로그아웃 기능 ? "?" : 관리자 aside에 로그아웃 버튼 만든 후, js로? 
		}else if(target.equals("/admin/deleteUser.admin")) {
			result = new DeleteUserController().execute(req, resp);
			
		}else if(target.equals("/admin/deleteUser.admin")) {
			result = new DeleteGuideController().execute(req, resp);
			
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
			
		}
		
	}
}
