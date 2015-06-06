package kr.or.newbie.project.dao;

import java.util.List;

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

}
