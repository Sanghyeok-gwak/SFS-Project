package com.sf.sfs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.sf.sfs.dto.MemberDto;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MvcController {
	
	
	
	
	@GetMapping("/")
	public String maingPage(HttpSession session) {
		
		MemberDto loginUser = (MemberDto) session.getAttribute("loginUser");
		if(loginUser != null) {
			return "/dashboard";
		}else {
			return "member/loginPage";
		}
		
	}

}
