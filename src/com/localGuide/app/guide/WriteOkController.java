package com.localGuide.app.guide;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;
import com.localGuide.app.guide.dao.GuideDAO;
import com.localGuide.app.guide.vo.GuideVO;
import com.localGuide.app.guideImg.dao.GuideImgDAO;
import com.localGuide.app.guideImg.vo.GuideImgVO;

public class WriteOkController implements Execute {
	
	// FrontController에서 받은 req로, 사용할 DAO의 메서드에 전달할 parameter 전달 
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		GuideVO guideVO = new GuideVO();
		GuideImgVO guideImgVO = new GuideImgVO();
		GuideDAO guideDAO = new GuideDAO();
		GuideImgDAO guideImgDAO = new GuideImgDAO();
		Result result = new Result();
		
		guideVO.setGuideId(Long.valueOf(req.getParameter("guideId")));
		guideVO.setUserId(Long.valueOf(req.getParameter("userId")));
		guideVO.setGuideTitle(req.getParameter("guideTitle"));
		guideVO.setGuideContent(req.getParameter("guideContent"));
		guideVO.setGuideDatePost(req.getParameter("guideDatePost"));
		guideVO.setGuideRegion(req.getParameter("guideRegion"));
		guideVO.setGuideRegionDetail(req.getParameter("guideRegionDetail"));
		guideVO.setGuideDateStart(req.getParameter("guideDateStart"));
		guideVO.setGuideDateExpire(req.getParameter("guideDateExpire"));
		guideVO.setGuideCost(Long.valueOf(req.getParameter("guideCost")));
		guideVO.setGuideChatLink(req.getParameter("guideChatLink"));
		guideVO.setGuideMaxJoin(Integer.valueOf(req.getParameter("guideMaxJoin")));
		
		guideDAO.guideWrite(guideVO);
		
		
//		guideImgVO.setGuideImgId(Long.valueOf(req.getParameter("guideImgId")));
//		guideImgVO.setGuideId(Long.valueOf(req.getParameter("guideId")));
//		guideImgVO.setGuideImgPath(req.getParameter("guideImgPath"));
//		guideImgVO.setGuideImgName(req.getParameter("guideImgName"));
//		
//		guideImgDAO.guideWriteImg(guideImgVO);
		
		result.setPath("/app/guide/local.jsp");
		return result;
	}
}









