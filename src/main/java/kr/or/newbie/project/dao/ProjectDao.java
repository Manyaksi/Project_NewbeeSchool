package kr.or.newbie.project.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.project.domain.Project;
import kr.or.newbie.project.domain.ProjectComment;
import kr.or.newbie.project.domain.Users;



/** 
 * 학사 관련 영속성 처리 규약 선언
 * @author 김기정
 */
public interface ProjectDao {

	//프로젝트 목록 출력
	public List<Project> showProjectList();
	public List<Map<String, Object>> showProject();
	
	//프로젝트 참가 인원 출력
	public List<Users> showEnterProject(int groupNo);
	
	//프로젝트 만든 사람 출력
	public Users getUserInfo(int user_no);
	
	//프로젝트 등록하기
	public void addProject(Project project);
	
	//프로젝트 상세보기
	public Map<String, Object> showProjectdetail(int groupNo);
	
	//프로젝트 참가하기
	public void joinProject(Map<String, Integer> params);
	
	//프로젝트 탈퇴하기
	public void exitProject(Project project);
	
	//프로젝트 댓글남기기
	public void addProjectComment(ProjectComment projectComment);
	
}
