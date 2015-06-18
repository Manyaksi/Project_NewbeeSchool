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
	
	//userinfo
	public Users userInfo(int user_no);
	
	/**
	 *  회원정보 수정들
	 */
	// 닉네임 수정
	public void nicknameEdit(Map<String, String> params);
	// 이메일 수정
	public void emailEdit(Map<String, String> params);
	// 비밀번호 수정
	public void passwdEdit(Map<String, String> params);
	// 지역 수정
	public void locationEdit(Map<String, String> params);
	// 프로그램 수정
	public void programnameEdit(Map<String, String> params);
	// 프로그램 수정
	public void registPhoto(Map<String, String> params);
	
	//작성 게시글 수
	public List<Map<String, Object>> articleCount(int user_no);
	
	//작성 댓글 수
	public List<Map<String, Object>> commentCount(int user_no);
	//댓글 삭제
	public void mycommentRemove(int comment_no);
	
}
