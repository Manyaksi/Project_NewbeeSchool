package kr.or.newbie.minihome.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.minihome.domain.GuestBook;
import kr.or.newbie.minihome.domain.Users;
import kr.or.newbie.project.domain.Project;



/** 
 * 미니홈 관련 영속성 처리 규약 선언
 * @author 곽선민
 */
public interface MinihomeDao {

	//미니홈 보기
	public Users showMinihome(int userNo);
	
	//방명록 작성하기
	public void addGuestbook(GuestBook guestbook);
	
	//방명록 불러오기
	public List<Map<String, Object>> showGuestbook(int userNo);
	
}
