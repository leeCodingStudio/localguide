package com.localGuide.app.guideImg.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.localGuide.app.guideImg.vo.GuideImgVO;
import com.mybatis.config.MyBatisConfig;

// DB 열어서 parameter 보내고, parameter로 연산된 결과 받은 후 DB를 닫는 역할만.
public class GuideImgDAO {
	public SqlSession sqlSession;

	public GuideImgDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// Controller에서 사용할 메서드(전달받을 parameter) 정의
	public List<GuideImgVO> select(Long guideId) {
		return sqlSession.selectList("guideImg.select", guideId);
	}
	
	public void guideWriteImg(GuideImgVO guideImgVO) {
		sqlSession.insert("guideImg.guideWriteImg", guideImgVO);
	}
}
