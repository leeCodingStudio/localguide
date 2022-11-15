package com.localGuide.app.guide;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.localGuide.app.Execute;
import com.localGuide.app.GuideParameterVO;
import com.localGuide.app.Result;
import com.localGuide.app.guide.dao.GuideDAO;
import com.localGuide.app.guide.dto.GuideDetailDTO;
import com.localGuide.app.guideImg.dao.GuideImgDAO;

public class LocalController implements Execute {

	// FrontController에서 받은 req로, 사용할 DAO의 메서드에 전달할 parameter 전달
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		// DTO 테스트
		GuideDetailDTO guideDetailDTO = new GuideDetailDTO();
		
		// 요청, 응답 틀 마련
		req.setCharacterEncoding("UTF-8");
		GuideDAO guideDAO = new GuideDAO();
		GuideImgDAO guideImgDAO = new GuideImgDAO();
		
		// 응답 객체 생성
		resp.setContentType("application/json;charset=utf-8");
		JSONObject selectLocalResp = new JSONObject();
		JSONArray selectLocalRespArray = new JSONArray();
		PrintWriter out = resp.getWriter();
		Result result = new Result();

		// 변수 설정
		Long total = guideDAO.getTotal();
		Long lastContentNumber = total + 1;
		Long startContentNumber;
		
		// json 데이터 받아오기
		String temp = req.getParameter("lastContentNumber");
		String selectLocal = req.getParameter("selectLocal");
		Boolean reload = Boolean.valueOf(req.getParameter("reload"));
		System.out.println("reload java값 : " + reload);
		
		// html uri param 받기
//		URL url = new URL();
//		System.out.println(req.getRequestURL());
//		String paramLocal = req.getParameter("local");
//		System.out.println(paramLocal);
		
		// 설정한 변수에 값 설정
		if (temp == null || Long.valueOf(temp) == (long)0) {
			startContentNumber = (long)0;
		} else {
			lastContentNumber = Long.valueOf(temp);
			startContentNumber = total + 1 - lastContentNumber;
		}
		long contentNumbers = 8;
		
		// 응답 분기 처리
		if (selectLocal == null) {
			result.setPath("/app/guide/local.jsp");
			return result;
		}
		
		// dao를 통해 mapper에 전달할 데이터 설정
		GuideParameterVO guideParameterVO = new GuideParameterVO();
		HashMap<String, Long> mapStringLong = new HashMap<String, Long>();
		mapStringLong.put("startContentNumber", startContentNumber);
		mapStringLong.put("contentNumbers", contentNumbers);
		HashMap<String, String> mapStringString = new HashMap<String, String>();
		mapStringString.put("selectLocal", selectLocal);
		guideParameterVO.setMapStringLong(mapStringLong);
		guideParameterVO.setMapStringString(mapStringString);
		
		System.out.println("startContentNumber : " + startContentNumber);
		System.out.println("lastContentNumber : " + lastContentNumber);
		
		// db접근 결과 받아오기
		// json으로 담을 때 분리 필요해보임.
		guideDAO.selectAll(guideParameterVO).stream().map(guideVO -> new JSONObject(guideVO)).forEach(guide -> selectLocalRespArray.put(guide));
		
		System.out.println(selectLocal);
		System.out.println(selectLocalRespArray);
		
		// 응답 분기 처리
		if (selectLocal != null) {
			try {
//				selectLocalResp.put("selectLocal", selectLocal);
				System.out.println("try문");
			} catch (Exception e) {
				System.out.println("json 오류");
				e.printStackTrace();
			}
			out.write(selectLocalRespArray.toString());
			out.close();
		}	
		
		return null;
	}
}