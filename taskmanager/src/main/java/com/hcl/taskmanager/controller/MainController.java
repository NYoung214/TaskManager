package com.hcl.taskmanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.taskmanager.entity.Task;
import com.hcl.taskmanager.entity.User;
import com.hcl.taskmanager.service.TaskService;
import com.hcl.taskmanager.service.UserService;

@Controller
@SessionAttributes({"sessionName","sessionId"})
public class MainController {
	
	@Autowired
	private UserService userServ;
	
	@Autowired
	private TaskService taskServ;

	@GetMapping("/home")
	public ModelAndView index(@ModelAttribute("sessionName") String username) {
		User user = userServ.findByUsername(username);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		mv.addObject("user", user);
		mv.addObject("tasks", taskServ.getAllByUserId(user.getUserId()));
		return mv;
	}
	
	@GetMapping("/add-task")
	public ModelAndView addTaskPage() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("users", userServ.findAll());
		return mv;
	}
	
	@PostMapping("/add-task")
	public ModelAndView addTask(@RequestParam String username, Task task) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("add-task");
		User user = userServ.findByUsername(username);
		task.setUser(user);
		Task savedTask = taskServ.save(task);
		if(savedTask != null) {
			mv.addObject("message", "Task saved successfully");
		}else {
			mv.addObject("error", "Task could not be saved");
		}
		mv.addObject("users", userServ.findAll());
		return mv;
	}
	
	
	@GetMapping("/edit-task/{id}")
	public ModelAndView editTaskPageWithId(@PathVariable String id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("edit-task");
		mv.addObject("current", taskServ.findById(Long.parseLong(id)));
		mv.addObject("users", userServ.findAll());
		return mv;
	}
	
	@PostMapping("/update")
	public ModelAndView editTask(@RequestParam String username, @ModelAttribute("sessionName") String session, 
			@RequestParam String taskId,Task task) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		User user = userServ.findByUsername(username);
		task.setUser(user);
		task.setTaskId(Long.parseLong(taskId));
		Task savedTask = taskServ.save(task);
		if(savedTask != null) {
			mv.addObject("message", "Task saved successfully");
		}else {
			mv.addObject("error", "Task could not be saved");
		}
		user = userServ.findByUsername(session);
		mv.addObject("user", user);
		mv.addObject("tasks", taskServ.getAllByUserId(user.getUserId()));
		return mv;
	}
	
	
	
	@GetMapping("/login")
	public String loginPage() {
		return "login";
	}
	
	@PostMapping("/login")
	public ModelAndView login(@RequestParam String username, @RequestParam String password) {
		ModelAndView mv = new ModelAndView();
		if(userServ.isValid(username,password)) {
			User user = userServ.findByUsername(username);
			mv.setViewName("home");
			mv.addObject("sessionName", user.getUsername());
			mv.addObject("sessionId", user.getUserId());
			mv.addObject("user", user);
			mv.addObject("tasks", taskServ.getAllByUserId(user.getUserId()));
		}else {
			mv.setViewName("login");
			mv.addObject("username", username);
			mv.addObject("message", "Invalid username/password");
		}
		return mv;
	}
	
	@GetMapping("/register")
	public String registerPage() {
		return "register";
	}	
	
	@PostMapping("/register")
	public ModelAndView register(User user) {
		ModelAndView mv = new ModelAndView();
		if(userServ.findByUsername(user.getUsername()) != null) {
			mv.setViewName("register");
			mv.addObject("message", "Username is already in use");
			mv.addObject("user", user);
		}else {
			mv.addObject("user",userServ.save(user).getUsername());
			mv.addObject("message", "New user created successfully");
			mv.setViewName("login");
		}
		return mv;
	}
	
	@GetMapping("/delete-task/{id}")
	public ModelAndView deleteTaskPageWithId(@PathVariable String id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("delete-task");
		mv.addObject("current", taskServ.findById(Long.parseLong(id)));
		return mv;
	}
	
	@PostMapping("/delete")
	public ModelAndView deleteTask(@ModelAttribute("sessionName") String session, @RequestParam String taskId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		if(taskServ.delete(Long.parseLong(taskId))) {
			mv.addObject("message", "Task deleted successfully");
		}else {
			mv.addObject("error", "Task could not be deleted");
		}		
		System.out.println(session + "<-- session name is here!");
		User user = userServ.findByUsername(session);
		mv.addObject("user", user);
		mv.addObject("tasks", taskServ.getAllByUserId(user.getUserId()));

		return mv;
	}
	
}
