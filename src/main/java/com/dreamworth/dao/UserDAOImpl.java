package com.dreamworth.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.dreamworth.entity.User;
import com.dreamworth.util.HibernateUtil;

@Repository
public class UserDAOImpl implements UserDAO {

	private SessionFactory factory;

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	public String addUser(User user) {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction tx = session.getTransaction();
		session.save(user);
		tx.commit();
		session.close();
		factory.close();
		return "Registration Successful";
	}
	
	public User validateLogin(String email,String password){
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Criteria criteria= session.createCriteria(User.class);
		criteria.add(Restrictions.eq("email", email));
		criteria.add(Restrictions.eq("password", password));
		User user=(User) criteria.uniqueResult();
		return user;
	}
}
