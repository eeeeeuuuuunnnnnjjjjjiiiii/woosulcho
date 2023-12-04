package com.project.wsch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UsersController {

	@GetMapping("/id_search")
	public String idsearch() {
	   
	   
	   return "/users/id_search";
	}
	@GetMapping("/pw_search")
	public String pwsearch() {
	   
	   
	   return "/users/pw_search";
	}
	@GetMapping("/id_searchOk")
	public String idsearchOk() {
	   
	   
	   return "/users/id_searchOk";
	}
	@GetMapping("/pw_searchOk")
	public String pwsearchOk() {
	   
	   
	   return "/users/pw_searchOk";
	}
}
