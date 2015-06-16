package kr.or.newbie.project.dao;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import kr.or.newbie.project.domain.Project;
import kr.or.newbie.project.domain.ProjectComment;
import kr.or.newbie.project.domain.Users;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("projectDao")
public class MybatisProjectDao implements ProjectDao {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	//프로젝트 목록보기
	public List<Project> showProjectList() {
		
		List<Project> projectList = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			projectList = dao.showProjectList();
		}finally{
			session.close();
		}
		return projectList;
	}
	
	@Override
	//프로젝트 생성자 정보 출력
	public Users getUserInfo(int user_no) {
		
		Users users = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			users = dao.getUserInfo(user_no);
		}finally{
			session.close();
		}
		return users;
	}
	
	@Override
	//프로젝트 상세보기
	public List<Map<String, Object>> showProject() {
		List<Map<String, Object>> map = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			map = dao.showProject();
		}finally{
			session.close();
		}
		return map;
	}
	
	@Override
	//프로젝트 상세보기(정식)
	public Map<String, Object> showProjectdetail(long groupNo) {
		Map<String, Object> mapProject = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			mapProject = dao.showProjectdetail(groupNo);
		}finally{
			session.close();
		}
		return mapProject;
	}
	
	@Override
	//프로젝트 참가하기
	public void joinProject(Map<String, Object> params) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			dao.joinProject(params);
		}finally{
			session.close();
		}
	}
	
	@Override
	//프로젝트 참가인원 정보 출력
	public List<Users> showEnterProject(long groupNo) {
		List<Users> mapProject = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			mapProject = dao.showEnterProject(groupNo);
		}finally{
			session.close();
		}
		return mapProject;
	}
	
	@Override
	//프로젝트 등록
	public void addProject(Project project) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			dao.addProject(project);
		}finally{
			session.close();
		}
		
	}
	
	@Override
	//프로젝트 탈퇴
	public void exitProject(Project project) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			dao.exitProject(project);
		}finally{
			session.close();
		}
	}
	
	@Override
	//프로젝트 해체(멤버)
	public void breakProject(long groupNo) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			dao.breakProject(groupNo);
		}finally{
			session.close();
		}
	}
	
	
	@Override
	//프로젝트 해체(글)
	public void breakProjectAll(long groupNo) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			dao.breakProjectAll(groupNo);
		}finally{
			session.close();
		}
	}
	
	@Override
	//프로젝트 완료시키기
	public void passAndFail(long groupNo) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			dao.passAndFail(groupNo);
		}finally{
			session.close();
		}		
	}
	
	@Override
	//프로젝트 댓글 입력
	public void addProjectComment(ProjectComment projectComment) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			dao.addProjectComment(projectComment);
		}finally{
			session.close();
		}
	
	}
	
	@Override
	//프로젝트 댓글 출력
	public List<Map<String, Object>> showProjectComment(long groupNo) {
		List<Map<String, Object>> map = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			map = dao.showProjectComment(groupNo);
		}finally{
			session.close();
		}
		return map;
	}

	@Override
	public int confirmGroupOwner(Map<String, Object> params) {
		int count = 0;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			count = dao.confirmGroupOwner(params);
		}finally{
			session.close();
		}
		return count;
	}
	
	@Override
	public int confirmEnterUser(Map<String, Object> params) {
		int count = 0;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			count = dao.confirmEnterUser(params);
		}finally{
			session.close();
		}
		return count;
	}
	
	@Override
	public Project confirmGroupCount(long groupNo) {
		Project project = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ProjectDao dao = session.getMapper(ProjectDao.class);
			project = dao.confirmGroupCount(groupNo);
		}finally{
			session.close();
		}
		return project;
	}
}
