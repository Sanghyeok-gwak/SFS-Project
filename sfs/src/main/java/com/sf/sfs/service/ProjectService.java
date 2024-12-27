package com.sf.sfs.service;

import java.util.List;
import java.util.Map;

import com.sf.sfs.dto.MeetingDto;
import com.sf.sfs.dto.MemberDto;
import com.sf.sfs.dto.ProjectDto;
import com.sf.sfs.dto.TaskDto;

public interface ProjectService {
	
	// 프로젝트 목록 조회(사이드 바에서 눌렀을 때)
	Map<String, List<ProjectDto>> selectProjectList(String loginMemNo);
	// 내 프로젝트 목록 조회
	List<ProjectDto> selectMyProjectList(String loginMemNo);
	// 전체 프로젝트 목록 조회
	List<ProjectDto> selectAllProjectList();
	
	// 프로젝트 생성
	int createProject(ProjectDto p);
	// 프로젝트 수정
	int modifyProject(ProjectDto p);
	// 프로젝트 단계 수정
	int updateProjectStep(ProjectDto p);
	// 프로젝트 삭제
	int deleteProject(int proNo);
	// 프로젝트 종료
	int endProject(ProjectDto p);
	
	// 프로젝트 참여자 목록 조회
	List<MemberDto> selectAttendeeList(int proNo);
	// 프로젝트 참여자 상세 조회
	MemberDto selectAttendee(String memNo);
	// 프로젝트 참여 가능한 사원 목록 조회
	List<MemberDto> selectMemberList(int proNo);
	// 프로젝트 참여자 추가
	int addAttendee(MemberDto m);
	// 프로젝트 참여자 삭제
	int deleteAttendee(MemberDto m);
	
	// 업무 생성
	int createTask(TaskDto t);
	// 업무 수정
	int modifyTask(TaskDto t);
	// 단계별 전체 업무 조회
	List<TaskDto> selectAllTaskList(ProjectDto p);
	// 내 업무 전체 조회
	List<TaskDto> selectMyTaskList(ProjectDto p);
	// 업무 상세 조회
	TaskDto selectTask(int taskNo);
	// 업무 삭제
	int deleteTask(int taskNo);
	// 업무 상태 진행중으로 수정
	int startTask(int taskNo);
	// 업무 상태 검토중으로 수정
	int checkTask(int taskNo);
	// 업무 상태 완료로 수정
	int endTask(int taskNo);
	// 업무 진행률 수정
	int updateProgress(TaskDto t);
	
	// 회의 조회 (오늘과 가장 가까운 일자)
	MeetingDto selectOneMetting(int proNo);
	// 회의 삭제 (종료되지 않은 회의만)
	int deleteMeeting(int meetNo);
	// 회의 수정 (종료되지 않은 회의만)
	int modifyMeeting(MeetingDto m);
	// 회의 목록 조회
	List<MeetingDto> selectMeetingList(int proNo);
	// 회의 상세 조회
	MeetingDto selectMeetingDetail(int meetNo);
	// 회의 종료
	int endMeeting(MeetingDto m);
	// 회의 생성
	int addMeeting(MeetingDto m);

}
