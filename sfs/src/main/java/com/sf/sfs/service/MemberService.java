package com.sf.sfs.service;

import com.sf.sfs.dto.MemberDto;

public interface MemberService {

	// 로그인
	MemberDto selectMember(MemberDto m);
	
	
}
