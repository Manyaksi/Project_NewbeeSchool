package kr.or.newbie.article.service;

import java.util.List;
import java.util.Map;

import kr.or.newbie.article.domain.Article;



/** 
 * 프로젝트 관련 비즈니스 규약(추상메소드) 선언
 * @author 김순재
 */
public interface ArticleService {
	
	//게시글 목록 출력
	public List<Map<String, Object>> showarticletList(String program_name);
	
	//카테고리별 게시글 목록 출력
	public List<Map<String, Object>> showcategoryList(String category, String program_name);
	
	
	//게시글 상세보기
	public Article detailArticle(int article_no);
	
	//게시글 히트카운트 ㅈ븡가
	public void hitcountArticle(int article_no);
	
	/*//프로젝트 등록하기
	public void addProject(Project project);
	
	//프로젝트 상세보기
	public Project showProjectdetail();
	
	//프로젝트 참가하기
	public void joinProject(Project project);
	
	//프로젝트 탈퇴하기
	public void exitProject(Project project);
	*/
}
