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
public class ProjectDto {
	//프로젝트
	private int proNo;
	private String memNo;
	private String proTitle;
	private Date StartDate;
	private Date endDate;
	private String status;
	private String step;
	//고객사
	private int cusNo;
	private String cusName;
	private String managerName;
	private String managerPhone;
	private String managerEmail;
}
