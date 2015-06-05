package kr.or.newbie.project.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.project.domain.Project;

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
	public List<Map<String, Object>> showProject() {
		// TODO Auto-generated method stub
		return null;
	}
	
	/*@Override
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
	}*/
	
	/*@Override
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
	public void addProject(Project project) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void exitProject(Project project) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void joinProject(Project project) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public Project showProjectdetail() {
		// TODO Auto-generated method stub
		return null;
	}
	*/

	

}
