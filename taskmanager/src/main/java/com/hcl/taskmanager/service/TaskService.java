package com.hcl.taskmanager.service;

import java.util.ArrayList;
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
		List<Task> taskList = new ArrayList<Task>();
		for(Task task : taskRepo.getAllByUserId(id)) {
			taskList.add(task);
		}
		return taskList;
	}

}
