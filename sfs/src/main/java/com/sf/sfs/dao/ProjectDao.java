package com.sf.sfs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.sf.sfs.dto.MeetingDto;
import com.sf.sfs.dto.MemberDto;
import com.sf.sfs.dto.ProjectDto;
import com.sf.sfs.dto.TaskDto;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class ProjectDao {
	
	private final SqlSessionTemplate sqlSession;

	// 프로젝트 목록 조회(사이드 바에서 눌렀을 때)
	public List<ProjectDto> selectMyProjectThree(String loginMemNo) {
		return sqlSession.selectList("projectMapper.selectMyProjectThree",loginMemNo);
	}
	// 프로젝트 목록 조회(사이드 바에서 눌렀을 때)
	public List<ProjectDto> selectAllProjectThree() {
		return sqlSession.selectList("projectMapper.selectAllProjectThree");
	}
	// 내 프로젝트 목록 조회
	public List<ProjectDto> selectMyProjectList(String loginMemNo) {
		return sqlSession.selectList("projectMapper.selectMyProjectList",loginMemNo);
	}
	// 전체 프로젝트 목록 조회
	public List<ProjectDto> selectAllProjectList() {
		return sqlSession.selectList("projectMapper.selectAllProjectList");
	}

	// 프로젝트 생성
	public int createProject(ProjectDto p) {
		return sqlSession.insert("projectMapper.createProject",p);
	}
	// 프로젝트 생성
	public int addProjectManager(ProjectDto p) {
		return sqlSession.insert("projectMapper.addProjectManager",p);
	}
	// 프로젝트 수정
	public int modifyProject(ProjectDto p) {
		return sqlSession.update("projectMapper.modifyProject",p);
	}
	// 프로젝트 수정
	public int modifyCustomer(ProjectDto p) {
		return sqlSession.update("projectMapper.modifyCustomer",p);
	}
	// 프로젝트 단계 수정
	public int updateProjectStep(ProjectDto p) {
		return sqlSession.update("projectMapper.updateProjectStep",p);
	}
	// 프로젝트 삭제
	public int deleteProject(int proNo) {
		return sqlSession.delete("projectMapper.deleteProject",proNo);
	}
	// 프로젝트 종료
	public int endProject(ProjectDto p) {
		return sqlSession.update("projectMapper.endProject",p);
	}

	// 프로젝트 참여자 목록 조회
	public List<MemberDto> selectAttendeeList(int proNo) {
		return sqlSession.selectList("projectMapper.selectAttendeeList",proNo);
	}
	// 프로젝트 참여자 상세 조회
	public MemberDto selectAttendee(String memNo) {
		return sqlSession.selectOne("projectMapper.selectAttendee",memNo);
	}
	// 프로젝트 참여 가능한 사원 목록 조회
	public List<MemberDto> selectMemberList(int proNo) {
		return sqlSession.selectList("projectMapper.selectMemberList",proNo);
	}
	// 프로젝트 참여자 추가
	public int addAttendee(MemberDto m) {
		return sqlSession.insert("projectMapper.addAttendee",m);
	}
	// 프로젝트 참여자 삭제
	public int deleteAttendee(MemberDto m) {
		return sqlSession.delete("projectMapper.deleteAttendee",m);
	}

	// 업무 생성
	public int createTask(TaskDto t) {
		return sqlSession.insert("projectMapper.createTask",t);
	}
	// 업무 수정
	public int modifyTask(TaskDto t) {
		return sqlSession.update("projectMapper.modifyTask",t);
	}
	// 단계별 전체 업무 조회
	public List<TaskDto> selectAllTaskList(ProjectDto p) {
		return sqlSession.selectList("projectMapper.selectAllTaskList",p);
	}
	// 내 업무 전체 조회
	public List<TaskDto> selectMyTaskList(ProjectDto p) {
		return sqlSession.selectList("projectMapper.selectMyTaskList",p);
	}
	// 업무 상세 조회
	public TaskDto selectTask(int taskNo) {
		return sqlSession.selectOne("projectMapper.selectTask",taskNo);
	}
	// 업무 삭제
	public int deleteTask(int taskNo) {
		return sqlSession.delete("projectMapper.deleteTask",taskNo);
	}
	// 업무 상태 진행중으로 수정
	public int startTask(int taskNo) {
		return sqlSession.update("projectMapper.startTask",taskNo);
	}
	// 업무 상태 검토중으로 수정
	public int checkTask(int taskNo) {
		return sqlSession.update("projectMapper.checkTask",taskNo);
	}
	// 업무 상태 완료로 수정
	public int endTask(int taskNo) {
		return sqlSession.update("projectMapper.endTask",taskNo);
	}
	// 업무 진행률 수정
	public int updateProgress(TaskDto t) {
		return sqlSession.update("projectMapper.updateProgress",t);
	}

	// 회의 조회 (오늘과 가장 가까운 일자)
	public MeetingDto selectOneMetting(int proNo) {
		return sqlSession.selectOne("projectMapper.selectOneMetting",proNo);
	}
	// 회의 삭제 (종료되지 않은 회의만)
	public int deleteMeeting(int meetNo) {
		return sqlSession.delete("projectMapper.deleteMeeting",meetNo);
	}
	// 회의 수정 (종료되지 않은 회의만)
	public int modifyMeeting(MeetingDto m) {
		return sqlSession.update("projectMapper.modifyMeeting",m);
	}
	// 회의 목록 조회
	public List<MeetingDto> selectMeetingList(int proNo) {
		return sqlSession.selectList("projectMapper.selectMeetingList",proNo);
	}
	// 회의 상세 조회
	public MeetingDto selectMeetingDetail(int meetNo) {
		return sqlSession.selectOne("projectMapper.selectMeetingDetail",meetNo);
	}
	// 회의 종료
	public int endMeeting(MeetingDto m) {
		return sqlSession.update("projectMapper.endMeeting",m);
	}
	// 회의 생성
	public int addMeeting(MeetingDto m) {
		return sqlSession.insert("projectMapper.addMeeting",m);
	}
	
}
