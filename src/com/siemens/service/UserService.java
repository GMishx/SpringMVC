package com.siemens.service;

import java.util.ListIterator;

import com.siemens.beans.User;

public interface UserService {

	void insertUser(User user);

	void updateUser(User user);
	
	void deleteUser(User user);

	ListIterator<User> fetchAllUsers();
}
