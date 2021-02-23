package com.hcl.taskmanager.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.hcl.taskmanager.entity.Task;
import com.hcl.taskmanager.entity.User;

public interface TaskRepository extends CrudRepository<Task, Long> {
	@Query("SELECT t FROM task t WHERE t.user.userId=?1")
	public List<Task> getAllByUserId(Long id);
}
