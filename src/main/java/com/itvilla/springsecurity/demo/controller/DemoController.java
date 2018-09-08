package com.itvilla.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

	@GetMapping("/")
	public String showHome() {
		
		return "myhomepage";
	}
	
	@GetMapping("/employee")
	public String showempHome() {
		
		return "myemphomepage";
	}
	
	@GetMapping("/manager")
	public String showmgrHome() {
		
		return "mymanagerhomepage";
	}
	
	@GetMapping("/admin")
	public String showadminHome() {
		
		return "myadminhomepage";
	}
	
}
