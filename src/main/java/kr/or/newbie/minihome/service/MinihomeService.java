package kr.or.newbie.minihome.service;

import java.util.List;
import java.util.Map;

import kr.or.newbie.minihome.domain.GuestBook;
import kr.or.newbie.minihome.domain.Users;



/** 
 * 미니홈 관련 비즈니스 규약(추상메소드) 선언
 * @author 곽선민
 */
public interface MinihomeService {
	
	//미니홈 목록 출력
	public Users showMinihome(int userNo);
	
	//방명록 등록
	public void addGuestbook(GuestBook guestbook);
	
	//방명록 출력
	public List<Map<String, Object>> showGuestbook(int userNo);
	
}
