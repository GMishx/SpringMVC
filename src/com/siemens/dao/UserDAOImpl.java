package com.siemens.dao;

import java.util.ListIterator;

import org.springframework.stereotype.Repository;

import com.siemens.beans.User;

@Repository(value = "userDAO")
public class UserDAOImpl extends CustomHibernateDaoSupport implements UserDAO {

	@Override
	public void insertUser(User user) {
		this.getHibernateTemplate().save(user);
	}

	@Override
	public ListIterator<User> fetchAllUsers() {
		return (ListIterator<User>) this.getHibernateTemplate().find("FROM User").listIterator();
	}

	@Override
	public void updateUser(User user) {
		this.getHibernateTemplate().update(user);
	}

	@Override
	public void deleteUser(User user) {
		this.getHibernateTemplate().delete(user);
	}

}
