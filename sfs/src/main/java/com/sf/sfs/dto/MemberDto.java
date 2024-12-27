package com.sf.sfs.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
@Builder
public class MemberDto {
	
	
	private String memNo;
	private String memPwd;
	private String memName;
	private String memPhone;
	private String memEmail;
	private String memAddr;
	private Date hireDate;
	private Date endDate;
	private String status;
	private String memSSN;
	private String account;
	private String profileURL;
	private String deptCode;
	private String posCode;
	private int salary;
	private String deptName;
	private String posName;
	
	// 프로젝트 참여자 관련 필드
	private int proNo; //프로젝트 번호
	private String role; // 역할(팀장|팀원)
	
}
