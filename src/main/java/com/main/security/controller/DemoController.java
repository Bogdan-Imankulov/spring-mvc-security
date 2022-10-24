package com.main.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class DemoController {

	@GetMapping("/")
	public String getHome() {
		return "home-page";
	}

	@GetMapping("/leaders/leaders-page")
	public String leadersPage() {
		return "leaders-page";
	}

	@GetMapping("/admins/admins-page")
	public String adminsPage() {

		return "admins-page";
	}

	@GetMapping("/access-denied-page")
	public String accessDeniedPage() {
		
		return "access-denied-page";
	}
}
