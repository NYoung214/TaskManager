package com.hcl.taskmanager.repository;

import org.springframework.data.repository.CrudRepository;

import com.hcl.taskmanager.entity.User;

public interface UserRepository extends CrudRepository<User, Long> {
	User findUserByUsername(String username);
}
