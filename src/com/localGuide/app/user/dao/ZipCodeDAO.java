package com.localGuide.app.user.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

// DB 열어서 parameter 보내고, parameter로 연산된 결과 받은 후 DB를 닫는 역할만.
public class ZipCodeDAO {
	public SqlSession sqlSession;

	public ZipCodeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	// Controller에서 사용할 메서드(전달받을 parameter) 정의
}
