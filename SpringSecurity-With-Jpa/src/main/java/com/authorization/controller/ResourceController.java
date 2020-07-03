package com.authorization.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ResourceController {
	
	@GetMapping("/")
	public String accessAll() {
		return "Any one can access user and admin etc...";	
	}
	@GetMapping("/user")
	public String accessOnlyUser() {
		return "User and admin can access this URL";	
	}
	@GetMapping("/admin")
	public String accessOnlyAdmin() {
		return "Only admin can access this URL";	
	}

}
