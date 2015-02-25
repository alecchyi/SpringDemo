package com.alecchyi.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.alecchyi.demo.entry.Users;

//@Repository("usersDao")
public class UsersDao {

//	@Resource(name="mySessionFactory")
	private SessionFactory sessionFactory;

	public List<Users> getAllUsers(){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from users");
		return query.list();
	}



	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}



	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
}
