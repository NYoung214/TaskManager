package com.hcl.taskmanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.taskmanager.entity.User;
import com.hcl.taskmanager.repository.UserRepository;
import com.hcl.taskmanager.service.TaskService;
import com.hcl.taskmanager.service.UserService;

@Controller
public class MainController {
	
	@Autowired
	private UserService userServ;
	
	@Autowired
	private TaskService taskServ;

	@GetMapping("/home")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		User user = userServ.findById(101L);
		mv.addObject("user", user);
		mv.addObject("tasks", taskServ.getAllByUserId(user.getUserId()));
		return mv;
	}
	
	@GetMapping("/add-task")
	public String addTask() {
		return "add-task";
	}
	
	@GetMapping("/edit-task")
	public String editTask() {
		return "edit-task";
	}
	
	
	
}
