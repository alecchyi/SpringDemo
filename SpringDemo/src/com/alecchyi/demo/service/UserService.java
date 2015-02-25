package com.alecchyi.demo.service;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.alecchyi.demo.dao.UsersDao;

//@Service("userService")
//@Transactional
public class UserService {

//	@Resource
	private UsersDao usersDao;
	

	public UsersDao getUsersDao() {
		return usersDao;
	}


	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}


//	@Transactional
	public int userCount(){
		System.out.println("get count");
		return usersDao.getAllUsers().size();
	}
	
	
}
