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
public class MeetingDto {
	//회의
	private int meetNo;
	private int proNo;
	private String meetTitle;
	private Date meetDate;
	private String detail;
	private String endYN;
	private String summary;
	//회의록
	private int recordNo;
	private String memNo;
	private String recordTitle;
	private String recordContent;
	private Date uploadDate;
}
