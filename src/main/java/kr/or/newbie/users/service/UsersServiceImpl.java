package kr.or.newbie.users.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.newbie.users.controller.UsersController;
import kr.or.newbie.users.dao.UsersDao;
import kr.or.newbie.users.domain.Users;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

/** 
 * 회원정보 관련 비즈니스 메소드 구현 Business Object
 * @author 김원영
 */
@Service("usersService")
public class UsersServiceImpl implements UsersService{
	
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);

	
	@Autowired
	private UsersDao usersDao;
	
	public UsersServiceImpl(){}
	
	public UsersDao getProjectDao() {
		return usersDao;
	}
	public void setProjectDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}
	
	@Override
	public void joinNewbie(Users users) {
		System.out.println("[Debug] : 회원가입 요청");
		usersDao.joinNewbie(users);
	}

	@Override
	public List<Users> selectUserList(Map<String, String> map)
			throws DataAccessException {
		return usersDao.selectUserList(map);
	}
	
	@Override
	public Users confirmEmail(String id) {
		return usersDao.confirmEmail(id);
	}
	
	@Override
	public Users confirmNickname(String nickname) {
		return usersDao.confirmNickname(nickname);
	}

	@Override
	public Users confirmUsers(String id, String password) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Users login(Users users) throws RuntimeException {
		return usersDao.login(users);
	}
	
	/**
	 * 유저 정보
	 */

	@Override
	public Users userInfo(int user_no) {
		Users user = usersDao.userInfo(user_no);
		return user;
	}

	/**
	 * 회원정보 수정들
	 */
	//닉네임 수정
	@Override
	public void nicknameEdit( String nickname, int userNo) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("nickname", nickname);
		params.put("userNo", String.valueOf(userNo));
		
		usersDao.nicknameEdit(params);
	}

	//이메일 수정
	@Override
	public void emailEdit(String id, int userNo) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("id", id);
		params.put("userNo", String.valueOf(userNo));
		
		usersDao.emailEdit(params);
	}

	//비밀번호 수정
	@Override
	public void passwdEdit(String password, int userNo) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("password", password);
		params.put("userNo", String.valueOf(userNo));
		
		usersDao.passwdEdit(params);
	}

	//지역 수정
	@Override
	public void locationEdit(String location, int userNo) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("location", location);
		params.put("userNo", String.valueOf(userNo));
		
		usersDao.locationEdit(params);
	}

	//프로그램 수정
	@Override
	public void programnameEdit(String programName, int userNo) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("programName", programName);
		params.put("userNo", String.valueOf(userNo));
		
		usersDao.programnameEdit(params);
	}

	//사진 등로
	@Override
	public void registPhoto(String photo, int userNo) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("photo", photo);
		params.put("userNo", String.valueOf(userNo));
		
		usersDao.registPhoto(params);
	}

	// 작성 게시글 수
	@Override
	public List<Map<String, Object>> articleCount(int user_no) {
			return usersDao.articleCount(user_no);
	}

	// 작성 댓글 수
	@Override
	public List<Map<String, Object>> commentCount(int user_no) {
		return usersDao.commentCount(user_no);
	}
	
	/**
	 * 댓글 삭제
	 */

	@Override
	public void mycommentRemove(int comment_no) {

		usersDao.mycommentRemove(comment_no);
	}
}
