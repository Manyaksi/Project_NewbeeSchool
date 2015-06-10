package kr.or.newbie.users.service;

import kr.or.newbie.users.domain.Users;



/** 
 * 회원 관련 비즈니스 규약(추상메소드) 선언
 * @author 김원영
 */
public interface UsersService {
	
	//회원가입하기
	public void joinNewbie(Users users);

}
