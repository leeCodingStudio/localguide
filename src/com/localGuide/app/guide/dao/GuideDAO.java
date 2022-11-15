package com.localGuide.app.guide.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.localGuide.app.GuideParameterVO;
import com.localGuide.app.guide.vo.GuideVO;
import com.mybatis.config.MyBatisConfig;

// DB 열어서 parameter 보내고, parameter로 연산된 결과 받은 후 DB를 닫는 역할만.
public class GuideDAO {
	public SqlSession sqlSession;

	public GuideDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// Controller에서 사용할 메서드(전달받을 parameter) 정의
	public void guideWrite(GuideVO guideVO) {
		sqlSession.insert("guide.guideWrite", guideVO);
	}
	
	public GuideVO getGuideCalendar(GuideVO guideVO) {
		guideVO = sqlSession.selectOne("guide.getGuideCalendar", guideVO);
		
		return guideVO;
	}
	
	public Long getTotal() {
		return sqlSession.selectOne("guide.getTotal");
	}
	
	public List<GuideVO> selectAll(GuideParameterVO guideParameterVO) {
		return sqlSession.selectList("guide.selectAll", guideParameterVO);
	}
}
