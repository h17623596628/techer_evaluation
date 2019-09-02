package com.test.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.test.dao.UserDao;
import com.test.domain.User;

@Service
public class UserServiceImp implements UserService {

	@Resource
	UserDao userDao;

	public boolean login(User user) {

		// TODO Auto-generated method stub
		System.out.println("UserService=======login");

		List<User> list = userDao.findUser(user);
		if (list.size() == 1) {
			return true;
		} else {
			return false;
		}

	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
