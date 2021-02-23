package com.hcl.taskmanager.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.taskmanager.entity.User;
import com.hcl.taskmanager.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository userRepo;

	public User findById(long l) {
		return userRepo.findById(l).get();
	}

	public User findByUsername(String username) {
		return userRepo.findByUsername(username);
	}

	public User save(User user) {
		return userRepo.save(user);
	}

	public boolean isValid(String username, String password) {
		User user = userRepo.findByUsername(username);
		if(user != null && user.getPassword().equals(password)) {
			return true;
		}
		return false;
	}

	public List<User> findAll() {
		List<User> list = new ArrayList<User>();
		for(User user : userRepo.findAll()) {
			list.add(user);
		}
		return list;
	}


}
