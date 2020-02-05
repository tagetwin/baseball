package com.baseball.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baseball.springboot.model.Member;
import com.baseball.springboot.repository.MemberRepository;

@Controller
public class MemberController {

	@Autowired
	MemberRepository memrp;
	
	@GetMapping("/member_list/{tid}")
	public @ResponseBody List<Member> member_list(@PathVariable int tid){
		
		List<Member> members = memrp.findByTid(tid);
		
		return members;
	}
	
	@GetMapping("/mem_info/{mid}")
	public @ResponseBody Member member_info(@PathVariable int mid){
		
		Member member = memrp.findByMid(mid);
		
		return member;
	}
}
