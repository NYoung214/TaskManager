package com.hcl.taskmanager.repository;

import org.springframework.data.repository.CrudRepository;

import com.hcl.taskmanager.entity.Task;

public interface TaskRepository extends CrudRepository<Task, Long> {
	Task findTaskByTaskName(String taskName);
}
