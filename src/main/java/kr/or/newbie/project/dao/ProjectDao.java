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
	public List<Users> showEnterProject(long groupNo);
	
	//프로젝트 만든 사람 출력
	public Users getUserInfo(int user_no);
	
	//프로젝트 등록하기
	public void addProject(Project project);
	
	//프로젝트 상세보기
	public Map<String, Object> showProjectdetail(long groupNo);
	
	//프로젝트 참가하기
	public void joinProject(Map<String, Object> params);
	
	//프로젝트 탈퇴하기
	public void exitProject(Project project);
	
	//프로젝트 해체하기
	public void breakProject(long groupNo);
	public void breakProjectAll(long groupNo);
	
	//프로젝트 완료시키기
	public void passAndFail(long groupNo);
	
	//프로젝트 댓글남기기
	public void addProjectComment(ProjectComment projectComment);
	
	//프로젝트 댓글 출력
	public List<Map<String, Object>> showProjectComment(long groupNo);
	
	//프로젝트 참여 유저 확인
	public int confirmEnterUser(Map<String, Object> params);
	
	//프로젝트 만든 주인 확인
	public int confirmGroupOwner(Map<String, Object> params);
	
	//프로젝트 회원 수
	public Project confirmGroupCount(long groupNo);
	
	

		
	
}
