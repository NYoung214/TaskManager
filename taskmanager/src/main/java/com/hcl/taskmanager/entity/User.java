package com.hcl.taskmanager.entity;

import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long UserId;
	private String Username;
	private String password;
	@OneToMany(mappedBy = "user")
	private List<Task> task;
	public User() {
		super();
	}
	
	public User(Long userId, String username, String password, List<Task> task) {
		super();
		UserId = userId;
		Username = username;
		this.password = password;
		this.task = task;
	}
	
	public Long getUserId() {
		return UserId;
	}
	
	public void setUserId(Long userId) {
		UserId = userId;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<Task> getTask() {
		return task;
	}
	public void setTask(List<Task> task) {
		this.task = task;
	}

	
}
