package com.localGuide.app.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.localGuide.app.user.vo.UserVO;
import com.mybatis.config.MyBatisConfig;

// DB 열어서 parameter 보내고, parameter로 연산된 결과 받은 후 DB를 닫는 역할만.
public class UserDAO {
	public SqlSession sqlSession;

	public UserDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public boolean checkId(UserVO userVO) {
		return (Integer)sqlSession.selectOne("user.checkId", userVO) == 0;
	}
	
	public void signUp(UserVO userVO) {
		sqlSession.insert("user.signUp", userVO);
	}
	
	public int login(UserVO userVO){
		return sqlSession.selectOne("user.login", userVO);
	}
	
	public void delete(int userId) {
		sqlSession.delete("user.delete", userId);
	}
	
	public List<UserVO> edit(String userEmail){
		return sqlSession.selectList("user.edit", userEmail);
	}
	
//	public List<UserVO> edit(int userId){
//		return sqlSession.selectList("user.edit", userId);
//	}

	
	public UserVO select(int userId) {
		return sqlSession.selectOne("user.select", userId);
	}
	
	public void editOk(UserVO userVO) {
		sqlSession.update("user.editOk", userVO);
	}
	
	public void update(UserVO userVO) {
		sqlSession.update("user.update", userVO);
	}
	
	

	// Controller에서 사용할 메서드(전달받을 parameter) 정의
}
