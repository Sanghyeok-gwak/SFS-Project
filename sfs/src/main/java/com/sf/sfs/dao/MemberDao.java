package com.sf.sfs.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.sf.sfs.dto.MemberDto;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MemberDao {
	
	private final SqlSessionTemplate sqlSession;

	public MemberDto selectMember(MemberDto m) {
		return sqlSession.selectOne("memberMapper.selectMember",m);
	}
	
	
	
	
	

}
