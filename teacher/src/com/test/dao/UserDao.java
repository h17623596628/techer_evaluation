package com.test.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.domain.User;

@Repository
public class UserDao {
	@Autowired
	SqlSessionFactory sqlSessionFactory;

	public List<User> findUser(User user) {
		// TODO Auto-generated method stub
		System.out.println("UserDao=======findUser");

		SqlSession sqlSession = sqlSessionFactory.openSession();

		List<User> list = sqlSession.selectList("com.test.dao.UserDao.findUser", user);
		return list;
	}

}
