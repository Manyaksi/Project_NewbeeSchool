package kr.or.newbie.users.service;

import java.util.List;
import java.util.Map;

import kr.or.newbie.users.domain.Users;

import org.springframework.dao.DataAccessException;



/** 
 * 회원 관련 비즈니스 규약(추상메소드) 선언
 * @author 김원영
 */
public interface UsersService {
	
	//회원가입하기
	public void joinNewbie(Users users);
	
	public List<Users> selectUserList(Map<String, String> map) throws DataAccessException;

	
	//ajax email
	public Users confirmEmail(String id);
	
	//ajax ninckname
	public Users confirmNickname(String nickname);
	
	//로그인
	public Users confirmUsers(String id, String password);

	public Users login(Users users) throws RuntimeException;
	
	// 유저 정보
	public Users userInfo(int user_no);
	
	/**
	 * 회원정보 수정들
	 */
	//닉네임 수정
	public void nicknameEdit(String nickname, int userNo);
	//이메일 수정
	public void emailEdit(String id, int userNo);
	//비밀번호 수정
	public void passwdEdit(String password, int userNo);
	//지역 수정
	public void locationEdit(String location, int userNo);
	//프로그램 수정
	public void programnameEdit(String programName, int userNo);
	//프로그램 수정
	public void registPhoto(String photo, int userNo);

	//작성 게시글 수
	public List<Map<String, Object>> articleCount(int user_no);
	
	//작성 댓글 수
	public List<Map<String, Object>> commentCount(int user_no);
	
	//댓글 삭제
	public void mycommentRemove(int comment_no);

}
