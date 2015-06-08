package kr.or.newbie.article.service;

import java.util.List;
import java.util.Map;

import kr.or.newbie.article.dao.ArticleDao;
import kr.or.newbie.article.domain.Article;

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
	public List<Map<String, Object>> showarticletList(String program_name) {
		return articleDao.showarticleList(program_name);
	}

	@Override
	public Article detailArticle(int article_no) {
		// TODO Auto-generated method stub
		return articleDao.detailArticle(article_no);
	}
	
	
	
	
}
