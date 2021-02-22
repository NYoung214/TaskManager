package com.hcl.taskmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/index")
	public String index() {
		return "index";
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
