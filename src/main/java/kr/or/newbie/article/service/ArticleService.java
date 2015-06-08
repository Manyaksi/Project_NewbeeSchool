package kr.or.newbie.article.service;

import java.util.List;
import java.util.Map;

import kr.or.newbie.article.domain.Article;
import kr.or.newbie.project.domain.Project;



/** 
 * 프로젝트 관련 비즈니스 규약(추상메소드) 선언
 * @author 김순재
 */
public interface ArticleService {
	
	//프로젝트 목록 출력
	public List<Map<String, Object>> showarticletList(String program_name);
	
	public Article detailArticle(int article_no);
	
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
