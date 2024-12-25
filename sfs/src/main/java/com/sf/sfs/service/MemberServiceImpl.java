package com.sf.sfs.service;

import org.springframework.stereotype.Service;

import com.sf.sfs.dao.MemberDao;
import com.sf.sfs.dto.MemberDto;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

	private final MemberDao memberDao;
	
	@Override
	public MemberDto selectMember(MemberDto m) {
		return memberDao.selectMember(m);
	}

	
	
	
	
}
