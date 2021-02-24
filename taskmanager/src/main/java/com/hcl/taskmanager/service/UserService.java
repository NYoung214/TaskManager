package com.hcl.taskmanager.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.hcl.taskmanager.entity.User;
import com.hcl.taskmanager.exception.UserNameTakenException;
import com.hcl.taskmanager.exception.UserNotFoundException;
import com.hcl.taskmanager.repository.UserRepository;

@Service
public class UserService implements UserDetailsService{

	@Autowired
	UserRepository userRepo;

	public User findById(long l) {
		try {
			userRepo.findById(l);
		}catch(UserNotFoundException ex) {
			throw new UserNotFoundException(l);
		}
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
		}else {
			throw new UserNameTakenException(username);
		}
	}

	public List<User> findAll() {
		List<User> list = new ArrayList<User>();
		for(User user : userRepo.findAll()) {
			list.add(user);
		}
		return list;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		User user = userRepo.findByUsername(username);
		if(user == null) {
			throw new UsernameNotFoundException(String.format("%s was not found", username));
		}
		return new UserDetailsImp(user);
	}


}
