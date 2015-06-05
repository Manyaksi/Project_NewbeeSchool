package kr.or.newbie.project.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.project.domain.Project;



/** 
 * 학사 관련 영속성 처리 규약 선언
 * @author 김기정
 */
public interface ProjectDao {

	//프로젝트 목록 출력
	public List<Project> showProjectList();
	public List<Map<String, Object>> showProject();
	
	//프로젝트 만든 사람 출력
	/*public Users getUserInfo(int user_no);
	
	//프로젝트 등록하기
	public void addProject(Project project);
	
	//프로젝트 상세보기
	public Project showProjectdetail(int project_no);
	
	//프로젝트 참가하기
	public void joinProject(Project project);
	
	//프로젝트 탈퇴하기
	public void exitProject(Project project);*/
	
}
