package kr.or.newbie.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.newbie.project.dao.ProjectDao;
import kr.or.newbie.project.domain.Project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/** 
 * 학사 관련 비즈니스 메소드 구현 Business Object
 * @author 김순재
 */
@Service("projectService")
public class ProjectServiceImpl implements ProjectService{
	
	@Autowired
	private ProjectDao projectDao;
	
	public ProjectServiceImpl(){}
	
	public ProjectDao getProjectDao() {
		return projectDao;
	}
	public void setProjectDao(ProjectDao projectDao) {
		this.projectDao = projectDao;
	}
	
	@Override
	public List<Project> showProjectList() {
		System.out.println("[Debug] : 전체 프로젝트 목록 출력");
		return projectDao.showProjectList();
	}
	
	@Override
	public Project showProjectdetail() {
		System.out.println("[Debug] : 프로젝트 상세보기");
		return projectDao.showProjectdetail();
	}
	
	@Override
	public void addProject(Project project) {
		projectDao.addProject(project);
		System.out.println("[Debug] : 프로젝트 만들기");
		
	}
	
	@Override
	public void joinProject(Project project) {
		projectDao.joinProject(project);
		System.out.println("[Debug] : 프로젝트 참가");
		
	}
	
	@Override
	public void exitProject(Project project) {
		projectDao.exitProject(project);
		System.out.println("[Debug] : 프로젝트 나가기");
		
		
	}
	
	
}
