package com.isolutons4u.springsecurity.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.isolutons4u.springsecurity.model.Users;
import com.isolutons4u.springsecurity.repository.UserRepository;

@Controller
public class DemoController {
	
	@GetMapping("/")
	public String showHome() {
		
		return "home";
	}
	
	// add request mapping for /leaders

	@GetMapping("/leaders")
	public String showLeaders() {
		
		return "leaders";
	}
	
	// add request mapping for /leaders

		@GetMapping("/systems")
		public String showSystems() {
			
			return "systems";
		}
		
		@Autowired
		private UserRepository userRepository;
		@GetMapping("/test")
		public String test() {
			
			userRepository.save(new Users(1, "Hello", "Teksdf", 23232L));

			
			return "home";
		}
		
		@GetMapping("/test_test")
		public String test2() {
			
			List<Users> users = userRepository.findAll();
			
			for (Users u : users) {
				System.out.println(u);
			}
			
			return "home";
		}
}
