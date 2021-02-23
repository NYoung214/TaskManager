package com.hcl.taskmanager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.taskmanager.entity.Task;
import com.hcl.taskmanager.entity.User;
import com.hcl.taskmanager.repository.TaskRepository;

@Service
public class TaskService {
	
	@Autowired
	private TaskRepository taskRepo;

	public List<Task> getAllByUserId(Long id) {
		return taskRepo.getAllByUserId(id);
	}

}
