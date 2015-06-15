package kr.or.newbie.article.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.article.controller.ArticleController;
import kr.or.newbie.article.domain.Article;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ArticleDao")
public class MybatisArticleDao implements ArticleDao {
	
	private static final Logger logger = LoggerFactory.getLogger(ArticleController.class);
	
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	
	/**
	 *  게시글 등록
	 */
	
	@Override
	public void writeArticle(Article article) {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			ArticleDao dao = session.getMapper(ArticleDao.class);
			dao.writeArticle(article);

		}finally{
			session.close();
		}

	}
	
	/**
	 *  게시글 목록
	 */

	@Override
	public List<Map<String, Object>> showarticleList(String program_name) {
		List<Map<String, Object>> boardList = null;
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			ArticleDao dao = session.getMapper(ArticleDao.class);
			boardList = dao.showarticleList(program_name);
		} finally {
			session.close();
		}
		return boardList;

	}
	
	/**
	 * 카테고리별 게시글 목록
	 */
	
	@Override
	public List<Map<String, Object>> showcategoryList(Map<String, String> params) {
		List<Map<String, Object>> categoryList = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ArticleDao dao = session.getMapper(ArticleDao.class);
			categoryList = dao.showcategoryList(params);
			
			
			
		}finally{
			session.close();
		}
		
		return categoryList;
	}
	
	/**
	 *  조회순별 리스트
	 */
	
	@Override
	public List<Map<String, Object>> hitcountList(Map<String, String> params) {
		List<Map<String, Object>> hitcountList = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ArticleDao dao = session.getMapper(ArticleDao.class);
			hitcountList = dao.hitcountList(params);
			
			
			
		}finally{
			session.close();
		}
		
		return hitcountList;
	}
	
	/**
	 *  추천순별 리스트
	 */
	
	@Override
	public List<Map<String, Object>> likecountList(Map<String, String> params) {
		List<Map<String, Object>> likecountList = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ArticleDao dao = session.getMapper(ArticleDao.class);
			likecountList = dao.likecountList(params);
			
			
			
		}finally{
			session.close();
		}
		
		return likecountList;
	}
	
	/**
	 * 게시글 검색
	 */
	
	@Override
	public List<Map<String, Object>> searchList(Map<String, String> params) {
		List<Map<String, Object>> searchList = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ArticleDao dao = session.getMapper(ArticleDao.class);
			searchList = dao.searchList(params);
			
			
			
		}finally{
			session.close();
		}
		
		return searchList;
	}


	/**
	 *  게시글 상세보기
	 */
	@Override
	public Map<String, Object> detailArticle(int article_no) {
		// TODO Auto-generated method stub

		Map<String, Object> article = null;
		SqlSession session = null;

		try {
			session = sqlSessionFactory.openSession();
			
			
			ArticleDao dao = session.getMapper(ArticleDao.class);
			article = dao.detailArticle(article_no);
		} finally {
			session.close();
		}

		return article;
	}

	/**
	 * 카운트 증가
	 */
	@Override
	public void hitcountArticle(int article_no) {
		SqlSession session = null;
		
		try {
			session = sqlSessionFactory.openSession();
			
			ArticleDao dao = session.getMapper(ArticleDao.class);
			dao.hitcountArticle(article_no);
			
			
		} finally{
			session.close();
		}
	}
	
	/**
	 * 좋아요
	 */
	@Override
	public void likecountArticle(int article_no) {
		SqlSession session = null;
		
		try {
			session = sqlSessionFactory.openSession();
			
			ArticleDao dao = session.getMapper(ArticleDao.class);
			dao.likecountArticle(article_no);
			
			
		} finally{
			session.close();
		}
	}

	
	/**
	 * 댓글 목록
	 */
	@Override
	public List<Map<String, Object>> commentList(int article_no) {
		List<Map<String, Object>> commentList = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			ArticleDao dao = session.getMapper(ArticleDao.class);
			commentList = dao.commentList(article_no);
			
			
			
		}finally{
			session.close();
		}
		
		return commentList;
		
	}
	
	/**
	 * 댓글 등록
	 */

	@Override
	public void writeComment(Map<String, String> params) {

		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			ArticleDao dao = session.getMapper(ArticleDao.class);
			dao.writeComment(params);

		}finally{
			session.close();
		}

	}
	







	/*
	 * @Override public void addProject(Project project) { // TODO
	 * Auto-generated method stub
	 * 
	 * }
	 * 
	 * @Override public void exitProject(Project project) { // TODO
	 * Auto-generated method stub
	 * 
	 * }
	 * 
	 * @Override public void joinProject(Project project) { // TODO
	 * Auto-generated method stub
	 * 
	 * }
	 * 
	 * @Override public Project showProjectdetail() { // TODO Auto-generated
	 * method stub return null; }
	 */
	
}

