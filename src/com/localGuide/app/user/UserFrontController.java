package com.localGuide.app.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Result;

public class UserFrontController extends HttpServlet {
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
		
		if(target.equals("/user/signUp.user")) {
			// 회원가입 페이지로 왔을 경우, 보여줄 페이지
			result = new Result();
			result.setPath("/app/user/signUp.jsp?userAuthType=email");
		}else if(target.equals("/user/signUpOk.user")) {
			// JS로 유효성 검사(checkId) 이후, 
			// 양식 제출 버튼을 눌렀을 경우 연산(Controller)후, 이동할 페이지(로그인페이지)
			result= new SignUpOkController().execute(req, resp);
		}else if(target.equals("/user/checkId.user")) {
			result = new CheckIdController().execute(req, resp);
		}else if(target.equals("/user/login.user")) {
			// 로그인 페이지로 왔을 경우, 보여줄 페이지
			result = new Result();
			result.setPath("/app/user/login.jsp");
		}else if(target.equals("/user/loginOk.user")) {
			// form의 로그인 버튼을 눌렀을 경우, 
			// DB로 접근(Controller)하여 연산 처리 후, 이동할 페이지(메인페이지 or 원하는 페이지) 
			result= new LoginOkController().execute(req, resp);
		}else if(target.equals("/user/logout.user")) {
			// 로그아웃 버튼을 눌렀을 경우,
			// Controller로 DB접근 후, 이동할 페이지(메인페이지)
			result = new LogoutController().execute(req, resp);
		}else if(target.equals("/user/delete.user")) {
			// 회원정보 삭제 버튼을 눌렀을 경우 (모달 창 띄우고, 확인 버튼을 그래도 누를 경우),
			// Controller 타고 연산 후, 이동할 페이지(메인페이지)
			result = new DeleteController().execute(req, resp);
		}else if(target.equals("/user/kakao.user")) {
			// 카카오 로그인 검사
			result = new KakaoController().execute(req, resp);
		}else if(target.equals("/user/mypage.user")) {
			// 로그인 세션 확인 후,
			// 마이페이지로 들어오면 보여줄 화면
			
			// 게시글 상세, 작성, 수정, 삭제 버튼을 누르면 guide/detail등으로 이동필요 => jsp에서 작업해야할 것
			result = new Result();
			result.setPath("/app/user/mypage.jsp");
			
		}else if(target.equals("/user/edit.user")) {
			// 로그인 세션 확인 후,
			// 마이페이지에서 회원정보 수정 버튼을 눌러서 들어오면 보여줄 페이지
			// js로 유효성 검사 후, 버튼을 누르면 editOK로
			// Controller..?
			result = new EditController().execute(req, resp);
		}else if(target.equals("/user/editOk.user")) {
			// edit에서 넘어올 것.
			// edit에서 수정 완료 버튼을 누르면 이동할 페이지(마이페이지), redirect
			// Controller
			result = new EditOkController().execute(req, resp);
		}else if(target.equals("/user/update.user")) {
			
			result = new UpdateController().execute(req, resp);
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
