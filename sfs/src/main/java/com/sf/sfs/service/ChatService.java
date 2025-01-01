package com.sf.sfs.service;

import org.springframework.stereotype.Service;

import com.sf.sfs.dao.ChatDao;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ChatService {

	private final ChatDao chatDao;
	
	
}
