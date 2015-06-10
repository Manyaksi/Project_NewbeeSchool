package kr.or.newbie.users.dao;

import kr.or.newbie.users.domain.Users;



/** 
 * 회원 관련 영속성 처리 규약 선언
 * @author 김원영
 */
public interface UsersDao {

	//프로젝트 목록 출력
	public void joinNewbie(Users users);
	
	
}
