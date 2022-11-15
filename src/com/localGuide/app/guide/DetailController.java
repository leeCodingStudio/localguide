package com.localGuide.app.guide;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;
import com.localGuide.app.guide.dao.GuideDAO;
import com.localGuide.app.guide.vo.GuideVO;

public class DetailController implements Execute {
	
	// FrontController에서 받은 req로, 사용할 DAO의 메서드에 전달할 parameter 전달 
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		
		GuideVO guideVO = new GuideVO();
		GuideDAO guideDAO = new GuideDAO();
		Result result = new Result();
		
		guideVO.setGuideId(Long.valueOf(req.getParameter("guideId")));
		guideVO = guideDAO.getGuideCalendar(guideVO);
		req.setAttribute("guide", guideVO);
		
		result.setPath("/app/guide/detail.jsp");
		return result;
	}
}