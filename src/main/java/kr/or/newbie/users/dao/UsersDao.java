package kr.or.newbie.users.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.users.domain.Users;



/** 
 * 회원 관련 영속성 처리 규약 선언
 * @author 김원영
 */
public interface UsersDao {

	//프로젝트 목록 출력
	public void joinNewbie(Users users);
	
	public List<Users> selectUserList(Map<String, String> map);

	//ajax id
	public Users confirmEmail(String id);

	//ajax nickname
	public Users confirmNickname(String nickname);

	// Login
	public Users login(Users user) throws RuntimeException;
	
}
