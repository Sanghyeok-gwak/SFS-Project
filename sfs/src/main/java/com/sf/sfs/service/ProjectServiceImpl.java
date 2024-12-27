package com.sf.sfs.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.sf.sfs.dao.ProjectDao;
import com.sf.sfs.dto.MeetingDto;
import com.sf.sfs.dto.MemberDto;
import com.sf.sfs.dto.ProjectDto;
import com.sf.sfs.dto.TaskDto;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class ProjectServiceImpl implements ProjectService {

	private final ProjectDao proDao;
	
	// 프로젝트 목록 조회(사이드 바에서 눌렀을 때)
	@Override
	public Map<String, List<ProjectDto>> selectProjectList(String loginMemNo) {
		Map<String, List<ProjectDto>> result = new HashMap<>();
		result.put("myProject", proDao.selectMyProjectThree(loginMemNo));
		result.put("allProject", proDao.selectAllProjectThree());
		return result;
	}
	// 내 프로젝트 목록 조회
	@Override
	public List<ProjectDto> selectMyProjectList(String loginMemNo) {
		return proDao.selectMyProjectList(loginMemNo);
	}
	// 전체 프로젝트 목록 조회
	@Override
	public List<ProjectDto> selectAllProjectList() {
		return proDao.selectAllProjectList();
	}

	
	// 프로젝트 생성
	@Override
	public int createProject(ProjectDto p) {
		int result = proDao.createProject(p);
		if(result > 0) {
			result += proDao.addProjectManager(p);
		}
		return result;
	}
	// 프로젝트 수정
	@Override
	public int modifyProject(ProjectDto p) {
		int result = proDao.modifyProject(p);
		if(result > 0) {
			result += proDao.modifyCustomer(p);
		}
		return result;
	}
	// 프로젝트 단계 수정
	@Override
	public int updateProjectStep(ProjectDto p) {
		return proDao.updateProjectStep(p);
	}
	// 프로젝트 삭제
	@Override
	public int deleteProject(int proNo) {

		// 프로젝트 테이블 삭제 시 
		// 트리거를 통해 고객사 테이블, 업무 테이블, 일정 테이블, 참여자 테이블, 회의 테이블, 회의록 테이블 데이터 삭제
		return proDao.deleteProject(proNo);
	}
	// 프로젝트 종료
	@Override
	public int endProject(ProjectDto p) {
		return proDao.endProject(p);
	}

	// 프로젝트 참여자 목록 조회
	@Override
	public List<MemberDto> selectAttendeeList(int proNo) {
		return proDao.selectAttendeeList(proNo);
	}
	// 프로젝트 참여자 상세 조회
	@Override
	public MemberDto selectAttendee(String memNo) {
		return proDao.selectAttendee(memNo);
	}
	// 프로젝트 참여 가능한 사원 목록 조회
	@Override
	public List<MemberDto> selectMemberList(int proNo) {
		return proDao.selectMemberList(proNo);
	}
	// 프로젝트 참여자 추가
	@Override
	public int addAttendee(MemberDto m) {
		return proDao.addAttendee(m);
	}
	// 프로젝트 참여자 삭제
	@Override
	public int deleteAttendee(MemberDto m) {
		return proDao.deleteAttendee(m);
	}

	// 업무 생성
	@Override
	public int createTask(TaskDto t) {
		return proDao.createTask(t);
	}
	// 업무 수정
	@Override
	public int modifyTask(TaskDto t) {
		return proDao.modifyTask(t);
	}
	// 단계별 전체 업무 조회
	@Override
	public List<TaskDto> selectAllTaskList(ProjectDto p) {
		return proDao.selectAllTaskList(p);
	}
	// 내 업무 전체 조회
	@Override
	public List<TaskDto> selectMyTaskList(ProjectDto p) {
		return proDao.selectMyTaskList(p);
	}
	// 업무 상세 조회
	@Override
	public TaskDto selectTask(int taskNo) {
		return proDao.selectTask(taskNo);
	}
	// 업무 삭제
	@Override
	public int deleteTask(int taskNo) {
		return proDao.deleteTask(taskNo);
	}
	// 업무 상태 진행중으로 수정
	@Override
	public int startTask(int taskNo) {
		return proDao.startTask(taskNo);
	}
	// 업무 상태 검토중으로 수정
	@Override
	public int checkTask(int taskNo) {
		return proDao.checkTask(taskNo);
	}
	// 업무 상태 완료로 수정
	@Override
	public int endTask(int taskNo) {
		return proDao.endTask(taskNo);
	}
	// 업무 진행률 수정
	@Override
	public int updateProgress(TaskDto t) {
		return proDao.updateProgress(t);
	}

	// 회의 조회 (오늘과 가장 가까운 일자)
	@Override
	public MeetingDto selectOneMetting(int proNo) {
		return proDao.selectOneMetting(proNo);
	}
	// 회의 삭제 (종료되지 않은 회의만)
	@Override
	public int deleteMeeting(int meetNo) {
		return proDao.deleteMeeting(meetNo);
	}
	// 회의 수정 (종료되지 않은 회의만)
	@Override
	public int modifyMeeting(MeetingDto m) {
		return proDao.modifyMeeting(m);
	}
	// 회의 목록 조회
	@Override
	public List<MeetingDto> selectMeetingList(int proNo) {
		return proDao.selectMeetingList(proNo);
	}
	// 회의 상세 조회
	@Override
	public MeetingDto selectMeetingDetail(int meetNo) {
		return proDao.selectMeetingDetail(meetNo);
	}
	// 회의 종료
	@Override
	public int endMeeting(MeetingDto m) {
		return proDao.endMeeting(m);
	}
	// 회의 생성
	@Override
	public int addMeeting(MeetingDto m) {
		return proDao.addMeeting(m);
	}

}
