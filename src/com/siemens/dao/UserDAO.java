package com.siemens.dao;

import java.util.ListIterator;

import com.siemens.beans.User;

public interface UserDAO {

	void insertUser(User user);
	
	void updateUser(User user);
	
	void deleteUser(User user);

	ListIterator<User> fetchAllUsers();
}
