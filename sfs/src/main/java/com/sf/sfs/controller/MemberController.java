package com.sf.sfs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sf.sfs.dto.MemberDto;
import com.sf.sfs.service.MemberService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/member")	
public class MemberController {
	
	private final MemberService memberService;
	
	@PostMapping("/login.do")
	public String selectMember(MemberDto m,RedirectAttributes ra,HttpSession session) {
		System.out.println(m);
		MemberDto loginUser = memberService.selectMember(m);
		System.out.println(loginUser);
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			return "/dashboard";
		}else {
			ra.addFlashAttribute("alertMsg","로그인정보가 유효하지않습니다.");
			return "redirect:/";
		}
		
	}
	
	@GetMapping("/dashboard.do")
	public String dashboard() {
		return "redirect:/";
	}
	
	

}
