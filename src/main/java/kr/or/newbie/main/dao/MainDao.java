package kr.or.newbie.main.dao;

import java.util.List;
import java.util.Map;




/** 
 * 메인 관련 영속성 처리 규약 선언
 * @author 김순재
 */
public interface MainDao {

	
	//메인 화면 프로젝트 부분 뿌려주기.
	public List<Map<String, Object>> showProjectMain();

	
}
