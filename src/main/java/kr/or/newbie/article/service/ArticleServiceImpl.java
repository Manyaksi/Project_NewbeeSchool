package kr.or.newbie.article.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.newbie.article.dao.ArticleDao;
import kr.or.newbie.article.domain.Article;
import kr.or.newbie.project.dao.ProjectDao;
import kr.or.newbie.project.domain.Project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/** 
 * 학사 관련 비즈니스 메소드 구현 Business Object
 * @author 김순재
 */
@Service("articleService")
public class ArticleServiceImpl implements ArticleService{
	
	@Autowired
	private ArticleDao articleDao;
	
	public ArticleServiceImpl(){}
	
	public ArticleDao getProjectDao() {
		return articleDao;
	}
	public void setarticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}

	@Override
	public List<Map<String, Object>> showarticletList() {
		return articleDao.showarticleList();
	}
	
	
	
	
}
