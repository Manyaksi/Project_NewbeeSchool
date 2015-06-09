package kr.or.newbie.project.dao;

import java.util.List;

import kr.or.newbie.project.domain.Project;
import kr.or.newbie.tutorial.devprogram.domain.Devprogram;



/** 
 * 학사 관련 영속성 처리 규약 선언
 * @author 김기정
 */
public interface ProjectDao {

	//프로젝트 목록 출력
	public List<Project> showProjectList();
	
	//프로젝트 등록하기
	public void addProject(Project project);
	
	//프로젝트 상세보기
	public Project showProjectdetail();
	
	//프로젝트 참가하기
	public void joinProject(Project project);
	
	//프로젝트 탈퇴하기
	public void exitProject(Project project);


	
}
