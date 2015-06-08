package kr.or.newbie.project.service;

import java.util.List;
import java.util.Map;

import kr.or.newbie.project.domain.Project;
import kr.or.newbie.project.domain.Users;



/** 
 * 프로젝트 관련 비즈니스 규약(추상메소드) 선언
 * @author 김순재
 */
public interface ProjectService {
	
	//프로젝트 목록 출력
	public List<Project> showProjectList();
	
	public List<Map<String, Object>> showProject();
	
	//프로젝트 만든 사람 출력
	public Users getUserInfo(int user_no);
	
	//프로젝트 등록하기
	public void addProject(Project project);
	
	//프로젝트 상세보기
	public Map<String, Object> showProjectdetail(int groupNo);
	
	//프로젝트 참가 인원 출력
	public List<Map<String, Object>> showEnterProject(int groupNo);
	
	//프로젝트 참가하기
	public void joinProject(int groupNo, int userNo);
	
	//프로젝트 탈퇴하기
	public void exitProject(Project project);
	
}
