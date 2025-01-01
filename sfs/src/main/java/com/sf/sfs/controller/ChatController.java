package com.sf.sfs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sf.sfs.service.ChatService;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
@RequestMapping("/chat")
public class ChatController {
	
	private final ChatService chatService;
	
	
	@GetMapping("/chatMain.do")
	public void chatMain() {
		
		
	}

}
