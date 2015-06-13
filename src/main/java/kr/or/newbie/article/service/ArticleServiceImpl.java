package kr.or.newbie.article.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.newbie.article.controller.ArticleController;
import kr.or.newbie.article.dao.ArticleDao;
import kr.or.newbie.article.domain.Article;

/** 
 * 학사 관련 비즈니스 메소드 구현 Business Object
 * @author 김순재
 */
@Service("articleService")
public class ArticleServiceImpl implements ArticleService{
	
	private static final Logger logger = LoggerFactory.getLogger(ArticleController.class);
	
	@Autowired
	private ArticleDao articleDao;
	
	public ArticleServiceImpl(){}
	
	public ArticleDao getProjectDao() {
		return articleDao;
	}
	public void setarticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}

	/**
	 * 게시글 목록 출력
	 */
	@Override
	public List<Map<String, Object>> showarticletList(String program_name) {
		return articleDao.showarticleList(program_name);
	}
	
	/**
	 * 카테고리별 게시글 출력
	 */
	@Override
	public List<Map<String, Object>> showcategoryList(String category,String program_name) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("category", category);
		params.put("program_name", program_name);
		return articleDao.showcategoryList(params);
	}
	
	/**
	 * 조회수별 게시글 출력
	 */
	
	@Override
	public List<Map<String, Object>> hitcountList(String category,
			String program_name) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("category", category);
		params.put("program_name", program_name);
		return articleDao.hitcountList(params);
	}
	/**
	 * 추천순별 게시글 출력
	 */
	
	@Override
	public List<Map<String, Object>> likecountList(String category,
			String program_name) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("category", category);
		params.put("program_name", program_name);
		return articleDao.likecountList(params);
	}
	
	/**
	 * 게시글 검색
	 */
	
	@Override
	public List<Map<String, Object>> searchList( String program_name, String category, String searchValue,
			String searchValue2, String searchValue3) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("searchValue", searchValue);
		params.put("searchValue2", searchValue2);
		params.put("searchValue3", searchValue3);
		params.put("program_name", program_name);
		params.put("category", category);
		return articleDao.searchList(params);
	}

	
	
	/**
	 * 게시글 상세보기
	 */
	@Override
	public Article detailArticle(int article_no) {
		// TODO Auto-generated method stub
		return articleDao.detailArticle(article_no);
	}

	/**
	 * 히트카운트 증가
	 */
	@Override
	public void hitcountArticle(int article_no) {
		articleDao.hitcountArticle(article_no);
	}
	
	/**
	 * 좋아요
	 */
	@Override
	public void likecountArticle(int article_no) {
		articleDao.likecountArticle(article_no);
	}

	/**
	 * 댓글 목록
	 */
	@Override
	public List<Map<String, Object>> commentList(int article_no) {
		
		return articleDao.commentList(article_no);
	}

	/**
	 * 댓글 등록
	 */

	
	@Override
	public void writeComment(int article_no, int user_no, String program_name,
			String comment_content) {
		Map<String, String> params = new HashMap<String, String>();
		String test = String.valueOf(article_no);
		params.put("article_no", String.valueOf(article_no));
		params.put("user_no", String.valueOf(user_no));
		params.put("program_name", program_name);
		params.put("comment_content", comment_content);
		
		articleDao.writeComment(params);
	}
	
}
