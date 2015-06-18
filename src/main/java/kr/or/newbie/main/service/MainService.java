package kr.or.newbie.main.service;

import java.util.List;
import java.util.Map;

import kr.or.newbie.minihome.domain.GuestBook;
import kr.or.newbie.minihome.domain.Users;



/** 
 * 메인 관련 비즈니스 규약(추상메소드) 선언
 * @author 김순재
 */
public interface MainService {

	public List<Map<String, Object>> showProjectMain();

	public List<Map<String, Object>> showProjectAdd(int pageNo);

	public List<Map<String, Object>> showProjectProgramAdd(int pageNo,String programName);

	public int countGroup();

	public int countArticle();

	public int countArticleComment();

	
}
