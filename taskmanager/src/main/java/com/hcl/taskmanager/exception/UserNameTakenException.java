package com.hcl.taskmanager.exception;

public class UserNameTakenException extends RuntimeException {
	public UserNameTakenException(String username) {
		super(username + " is already taken");
	}
}
