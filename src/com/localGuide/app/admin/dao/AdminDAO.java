package com.localGuide.app.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.localGuide.app.admin.dto.GuideDTO;
import com.localGuide.app.guide.vo.GuideVO;
import com.localGuide.app.user.vo.UserVO;
import com.mybatis.config.MyBatisConfig;

// DB 열어서 parameter 보내고, parameter로 연산된 결과 받은 후 DB를 닫는 역할만.
public class AdminDAO {
	public SqlSession sqlSession;

	public AdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// Controller에서 사용할 메서드(전달받을 parameter) 정의
	public List<UserVO> user(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("admin.user", pageMap);
	}
	/*
	 * public List<UserVO> user() { return sqlSession.selectList("admin.user"); }
	 */	

	public List<GuideDTO> guide(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("admin.guide", pageMap);
	}
	
	/*
	 * public List<GuideDTO> guide() { return sqlSession.selectList("admin.guide");
	 * }
	 */	
	
	public void deleteUser(int userId) {
		sqlSession.delete("admin.deleteUser", userId);
	}
	
	public void deleteGuide(int guideId) {
		sqlSession.delete("admin.deleteGuide", guideId);
	}
	
	public int getTotal() {
		return sqlSession.selectOne("admin.getTotal");
	}
	
	public int getTotalGuide() {
		return sqlSession.selectOne("admin.getTotalGuide");
	}
	
	
}
