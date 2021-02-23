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

	public Task save(Task task) {
		return taskRepo.save(task);
	}

	public Task findById(Long id) {
		return taskRepo.findById(id).get();
	}
	
	public Task getUserByTaskId(Long taskId) {
		return taskRepo.getUserByTaskId(taskId);
	}

	public boolean delete(Long taskId) {
		taskRepo.deleteById(taskId);
		if(!taskRepo.existsById(taskId)) {
			return true;
		}
		return false;
	}

}
