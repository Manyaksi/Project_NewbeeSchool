package kr.or.newbie.article.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.article.domain.Article;
import kr.or.newbie.project.dao.ProjectDao;
import kr.or.newbie.project.domain.Project;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ArticleDao")
public class MybatisArticleDao implements ArticleDao {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}


	@Override
	public List<Map<String, Object>> showarticleList() {
		List<Map<String, Object>> boardList = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ArticleDao dao = session.getMapper(ArticleDao.class);
			boardList = dao.showarticleList();
		}finally{
			session.close();
		}
		return boardList;
		
	}
	
	
	/*
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
	}*/
	

	

}
