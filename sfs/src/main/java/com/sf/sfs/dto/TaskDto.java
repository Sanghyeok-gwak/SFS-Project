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
public class TaskDto {
	//업무
	private int taskNo;
	private int proNo;
	private String memNo;
	private String step;
	private String taskTitle;
	private String taskContent;
	private int progress;
	private String status;
	private Date StartDate;
	private Date EndDate;
	
}
