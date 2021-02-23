package com.hcl.taskmanager.service;

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

}
