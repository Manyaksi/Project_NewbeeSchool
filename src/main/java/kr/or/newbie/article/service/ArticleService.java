package kr.or.newbie.article.service;

import java.util.List;
import java.util.Map;

import kr.or.newbie.article.domain.Article;



/** 
 * 프로젝트 관련 비즈니스 규약(추상메소드) 선언
 * @author 김순재
 */
public interface ArticleService {
	
	
	//게시글 등록
	public void writeArticle(Article article);
	
	//게시글 삭제
	public void deleteArticle(int article_no);
	
	//게시글 관련 댓글 삭제
	public void deleteComment(int article_no);
	
	//게시글 수정
	public void modifyArticle(String subject, String content, int article_no);
	
	//게시글 목록 출력
	public List<Map<String, Object>> showarticletList(String program_name);
	
	//카테고리별 게시글 목록 출력
	public List<Map<String, Object>> showcategoryList(String category, String program_name);
	
	//조회수별 게시글 목록 출력
	public List<Map<String, Object>> hitcountList(String category, String program_name);
	
	//추천수별 게시글 목록 출력
	public List<Map<String, Object>> likecountList(String category, String program_name);
	
	//추천수별 게시글 목록 출력
	public List<Map<String, Object>> commentcountList(String category, String program_name);
	
	//게시글 검색
	public List<Map<String, Object>> searchList(String program_name, String category ,String searchValue, String searchValue2, String searchValue3);
	
	
	//게시글 상세보기
	public Map<String, Object> detailArticle(int article_no);
	
	//게시글 히트카운트 ㅈ븡가
	public void hitcountArticle(int article_no);
	
	//댓글 등록시 증가
	public void commentcount(int article_no);
	
	//좋아요!
	public void likecountArticle(int article_no);
	
	//댓글 목록
	public List<Map<String, Object>> commentList(int article_no);
	
	//댓글 등록
	public void writeComment(int article_no, int user_no, String program_name, String comment_content);
	
	//댓글 삭제
	public void removeComment(int comment_no);
	
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
