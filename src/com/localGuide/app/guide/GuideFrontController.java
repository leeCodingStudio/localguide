package com.localGuide.app.guide;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Result;

public class GuideFrontController extends HttpServlet {
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

		if (target.equals("/guide/local.guide")) {
			// 메인페이지에서 가이드 전체보기로 왔을 경우 보여줄 페이지
			// local은 전체, local?local=지역 => 지역을 선택했을 경우 query param형태로
			// Controller
			result = new LocalController().execute(req, resp);

		} else if (target.equals("/guide/detail.guide")) {
			// 메인페이지 or 위의 가이드글 전체보기에서 게시글 클릭 시 보여줄 페이지
			// Controller
			result = new DetailController().execute(req, resp);

		} else if (target.equals("/guide/write.guide")) {
			// 로그인 세션 확인 필요
			// 마이페이지에서 게시글 작성하기 or 가이드 전체보기에서 게시글 작성하기 버튼 클릭 시 보여줄 페이지
			// Controller
			result = new WriteController().execute(req, resp);

		} else if (target.equals("/guide/writeOk.guide")) {
			// write에서 넘어오기
			// write에서 작성완료 버튼을 누르면 이동할 페이지(가이드글 전체보기 or 원하는 페이지)
			// Controller
			result = new WriteOkController().execute(req, resp);

		} else if (target.equals("/guide/edit.guide")) {
			// 로그인 세션 확인 필요
			// 마이페이지에서 내 게시글 수정하기 or 가이드 전체보기에서 게시글 수정하기 버튼 클릭 시 보여줄 페이지
			// Controller
			result = new EditController().execute(req, resp);

		} else if (target.equals("/guide/editOk.guide")) {
			// edit에서 넘어오기
			// edit에서 수정완료 버튼을 누르면 이동할 페이지(가이드글 전체보기 or 원하는 페이지)
			// Controller
			result = new EditOkController().execute(req, resp);

		} else if (target.equals("/guide/delete.guide")) {
			// 로그인 세션 확인 필요
			// 마이페이지에서 내 게시글 삭제하기 or 가이드 전체보기에서 게시글 삭제하기 버튼 클릭 시 보여줄 페이지
			// delete 버튼을 누른 이후, (모달창에서 한 번 더 확인 후 확인 버튼을 누르면) 이동할 페이지(가이드글 전체보기 or 원하는 페이지)
			// Controller

			// edit 페이지에서 버튼만 구현으로??

			result = new DeleteController().execute(req, resp);

		}

		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
}
