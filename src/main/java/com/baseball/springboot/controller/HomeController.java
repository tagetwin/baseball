package com.baseball.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.baseball.springboot.model.Team;
import com.baseball.springboot.repository.TeamRepository;

@Controller
public class HomeController {

	@Autowired
	TeamRepository teamrp;
	
	@GetMapping("/baseball")
	public String home(Model model) {
		
		List<Team> teams = teamrp.findAll();
		model.addAttribute("teams", teams);
		
		return "home";
	}
	
	
}
